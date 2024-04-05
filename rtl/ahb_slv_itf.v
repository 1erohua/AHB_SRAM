//此处有两套代码，一是认为sram_clk与hclk相同,二是认为hclk与sram_clk反相
//ahb_slv_itf作为sram的转接口, 但同时也有部分代码是对外总线的
//ahb_sram功能上比较简单，因而设计的ahb总线的控制内容部分不多

`define HCLK_EQUAL_SRAM_CLK

module ahb_slv_itf(

    //system
    input                           hclk,
    input                           hrst_n,

    //传输相关的控制信号
    //是不是在传输？怎么传输的？传输多少字节的？
    input   [1:0]                   htrans,                 //当前传输的状态, 到底有没有在传，是不是连续的,IDLE、SEQ这些
    input   [2:0]                   hburst,                 //突发写的类型, INCR、WREQ、SINGLE
    input   [2:0]                   hsize,                  //指定传输的字节数，0代表1字节，1代表2字节，2代表4字节，3就是8字节了

    //可以看成一对有效的使能信号吧
    input                           hsel,                   //指示当前slave是否被选中, 每个slave都有一个这样的信号
    input                           hready,                 
    //发起ready的源本应该是slave，但是slave同时也要接收来自slave的ready
    //通俗来说，接收hready是为了观测当期总线有没有人用。这里的hready是所有slave的一个ready输出的与
    //只要有一个slave在使用总线，hready就会被拉低，这时候其他slave就知道，总线其他slave使用，总线繁忙中

    //读写
    input                           hwrite,                 //为高为写状态
    input       [31:0]              haddr,
    input       [31:0]              hwdata,

    //输出给sram的
    output      [12:0]              sram_addr_out,
    output      [31:0]              sram_wdata,
    output                          wen,                    //写使能指示
    output      [3:0]               bank0_csn,bank1_csn,  //指示哪些片有效，低电平有效，每4片组成一个块，bank0、bank1自成一块                   

    //这三个回应信号是输出到总线上，不与sram相连
    output      [31:0]              hrdata,                 //最终会输出到总线
    output      [1:0]               hresp,                //OKEY、ERROR、RETRY and SPLIT
    output                          hready_out,           //slave输出的准备信号
    //
    
    //从sram读来的数据
    input       [7:0]               sram_d_0, sram_d_1, sram_d_2, sram_d_3,
                                    sram_d_4, sram_d_5, sram_d_6, sram_d_7

);
    //几个操作重点
    //1.读操作直接传输读地址
    //2.写操作由于总线上先给出写地址，再给出写数据，因而需要将写地址存一拍，但是地址线与读地址共用，因而需要分开操作
    //3.地址操作,需要将地址分解成片选，数据的输出也是基于此选出哪几个sram_d_n
    //4.使能操作，在这里，似乎hsel和hready都是成对出现的

    //1.时刻让这两个处于有效状态
    assign      hresp = 2'b00; 
    assign      hready_out = 1'b1;

    //2.针对需要打拍的那部分
    reg         [31:0]              haddr_r;
    reg         [1:0]               htrans_r;     
    reg         [2:0]               hburst_r;  
    reg         [2:0]               hsize_r;
    reg                             hwrite_r;

    //复位时重置一切、未被选择时不进行任何操作
    always @(posedge hclk or negedge hrst_n) begin
        if(!hrst_n) begin 
            haddr_r <= 32'b0;
            htrans_r <= 2'b0;
            hburst_r <= 3'b0;
            hsize_r <= 3'b0;
            hwrite_r <= 1'b0;
        end

        else if(!(hsel&&hready)) begin
            haddr_r <= 32'b0;
            htrans_r <= 2'b0;
            hburst_r <= 3'b0;
            hsize_r <= 3'b0;
            hwrite_r <= 1'b0;
        end

        else begin
                haddr_r <= haddr;
                htrans_r <= htrans;
                hburst_r <= hburst;
                hsize_r <= hsize;
                hwrite_r <= hwrite;
        end
            
    end

    //3.对于地址操作与片选
    wire                            bank_sel;       //片选选哪片
   
    wire        [1:0]               bit_sel;        //位的选择，跟据值来指示byte_sel哪几位为高哪几位为低
    
    //注意一点，我们最高是32位，因而hsize指示32位时，不会使用bit_sel
    //hsize指示8位时，bit_sel有4个状态，分别指定4个位置
    //hsize指示16位时，看bit_sel的最高位，为1则是高16位，为为低则是低16位
    //不会出现16位只选中前8位和后8位的
    `ifdef HCLK_EQUAL_SRAM_CLK
        assign bank_sel =   hwrite ?  haddr_r[15] : haddr[15];
        assign bit_sel = hwrite ? haddr_r[1:0] : haddr_r[1:0] ;
    `else
        assign bank_sel = haddr_r[15];
        assign bit_sel = haddr_r[1:0];
    `endif
    
    wire        [3:0]               byte_sel;       //最终输出的片选结果，指明了一片中哪几个字节有效
    
    assign bank0_csn = ((bank_sel==1'b0)&&(hsel&&hready)) ?   byte_sel : 4'b1111; 
    assign bank1_csn = ((bank_sel==1'b1)&&(hsel&&hready)) ?   byte_sel : 4'b1111;

    wire        [2:0]               hsize_final;        

    `ifdef HCLK_EQUAL_SRAM_CLK
        assign hsize_final = hwrite ? hsize_r : hsize ;
    `else
        assign hsize_final = hsize_r ;
    `endif

    //读不需要打拍, 写需要打拍
    assign byte_sel = (hsize_final == 3'b010) ? 4'b0000 : 
                      (hsize_final == 3'b001) ?
                                         ((bit_sel[1])?4'b0011 : 4'b1100) :
                      (hsize_final == 3'b000) ? (
                                        ({4{bit_sel==2'b00}} & (4'b1110)) |
                                        ({4{bit_sel==2'b01}} & (4'b1101)) |
                                        ({4{bit_sel==2'b10}} & (4'b1011)) |
                                        ({4{bit_sel==2'b11}} & (4'b0111)) 
                      ) : 4'b1111 ; 
    //输出地址
    `ifdef HCLK_EQUAL_SRAM_CLK
        assign sram_addr_out = hwrite ? haddr_r[14:2] : haddr[14:2] ;
    `else
        assign sram_addr_out = haddr_r [14:2];
    `endif
    //4.其余操作
    //wen是0则写状态,wen是1则是读状态
    //然而是否读写，需要htrans是seq或nonseq
    `define     IDLE    2'b00
    `define     BUSY    2'b01
    `define     NONSEQ  2'b10
    `define     SEQ     2'b11

    `ifdef HCLK_EQUAL_SRAM_CLK 
        assign  wen =  hwrite ? 
                   (    ((htrans_r == `SEQ) || (htrans_r ==`NONSEQ)) && (hwrite_r) ? 1'b0 : 1'bz 
                   ):
                   (    ((htrans == `SEQ) || (htrans == `NONSEQ)) ? 1'b1 : 1'bz       //如果是读状态，那么就不需要对hwrite_r进行判断
                   );
    `else
        assign wen = ((htrans_r == `SEQ) || (htrans_r ==`NONSEQ)) && (hwrite_r) ? 1'b0 : 1'b1;
    `endif

    assign hrdata = !bank_sel ?  {sram_d_3,sram_d_2,sram_d_1,sram_d_0} : {sram_d_7, sram_d_6, sram_d_5, sram_d_4};
    assign sram_wdata = hwdata;
    




    

endmodule
