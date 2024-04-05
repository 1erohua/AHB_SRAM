`define HCLK_EQUAL_SRAM_CLK

module AHB_SRAM_tb;
    parameter   PERIOD=40;
    `define     IDLE    2'b00
    `define     BUSY    2'b01
    `define     NONSEQ  2'b10
    `define     SEQ     2'b11


    //系统信号输入信号
    reg                           hclk;
    reg                           sram_clk;
    reg                           hrst_n;
    reg                           bist_en;

    //总线输入信息
    //有效类信息
    reg                           hsel;
    reg                           hready;

    //传输类信息
    reg   [2:0]                   hsize;
    reg   [1:0]                   htrans;   
    reg   [2:0]                   hburst;

    //读写信息
    reg   [31:0]                  data_temp;
    reg                           hwrite;
    reg   [31:0]                  haddr;
    reg   [31:0]                  hwdata;

    //总线输出信息
    wire  [31:0]                  hrdata;

    wire  [1:0]                   hresp;                   
    wire                          hready_out;

    wire                          bist_done;
    wire                          bist_fail;

    AHB_SRAM sram_instance (
        .hclk(hclk),
        .sram_clk(sram_clk),
        .hrst_n(hrst_n),
        .bist_en(bist_en),
        .hsel(hsel),
        .hready(hready),
        .hsize(hsize),
        .htrans(htrans),
        .hburst(hburst),
        .hwrite(hwrite),
        .haddr(haddr),
        .hwdata(hwdata),
        .hrdata(hrdata),
        .hresp(hresp),
        .hready_out(hready_out),
        .bist_done(bist_done),
        .bist_fail(bist_fail)
    );
    
    initial begin
        $fsdbDumpfile("AHB_SRAM.fsdb");
        $fsdbDumpvars();
    end

    initial begin
        hclk <= 0;

        `ifdef HCLK_EQUAL_SRAM_CLK
        sram_clk <= 0;
        `else
        sram_clk <=1;
        `endif

        hrst_n <= 0;
        bist_en <=0;

        hsel <= 1;
        hready <= 1;

        hsize <= 3'b010;
        htrans <= `SEQ; 
        hburst <= 0;
        
        hwrite <= 1;
        haddr <= 32'b00;
        hwdata <= 0;
        data_temp <= 0;
        #(PERIOD) hrst_n = 1;

        hwrite <= 1;

        #(PERIOD*8192)hrst_n <= 0;
        hwrite <= 0;
        htrans <= `IDLE;

        #(PERIOD) hrst_n <= 1;
         htrans <= `SEQ;

        #(PERIOD*8192)
        $finish;
        
    end
    
    //时钟
    always #(PERIOD/2) begin
        hclk <= ~hclk;
        sram_clk <= ~sram_clk ;
    end

    `define     IDLE    2'b00
    `define     BUSY    2'b01
    `define     NONSEQ  2'b10
    `define     SEQ     2'b11

    //测试
    //对每个深度
    //1.写入8片8位，再读出来
    //2.写入4片16位，再读出来
    //3.写入2片32位，再读出来
    reg     [31:0]  waddr;
    reg     [31:0]  raddr;
    always @(waddr or raddr or hwrite) begin
        if(hwrite) begin
            haddr = waddr;
        end
        else begin
            haddr = raddr;
        end
    end
    //写地址递增，写数据跟随地址脚步，打一拍再送
    always @(posedge hclk or negedge hrst_n ) begin
        if(!hrst_n)begin 
            waddr <= 0;
        end

        else if(waddr[15:2] == 14'b11_1111_1111_1111)begin 
            waddr[15:2] <= 14'h0;
            data_temp <=0;
            hwdata <= 0;
        end

        else if(hwrite) begin
            waddr <= waddr +3'b100;
            data_temp <= data_temp +1;
            hwdata <= data_temp;
        end
    end
    //读地址递增
    always @(posedge hclk or negedge hrst_n ) begin
        if(!hrst_n) 
            raddr <= 0;
        else if(raddr[15:2] == 15'b11_1111_1111_1111) 
            raddr[15:2] <= 14'h0;
        else if(!hwrite)
            raddr <= raddr + 3'b100;
    end
/*
    always @(posedge hclk or negedge hrst_n) begin
        if(!hrst_n) begin
            haddr <= 0;
        end
        else if(haddr[14:2] == 13'h1fff) begin
            haddr[14:2] <= 13'h0;
        end
        else 
            haddr <= haddr + 3'b100;
    end
*/

endmodule
