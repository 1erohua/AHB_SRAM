module ahb_sram(
    //系统部分，由顶层模块连接时给出
    //本模块用来链接各个sram
    input                               hclk,
    input                               sram_clk,
    input                               hrst_n,
    input                               bist_en,

    //来自接口ahb_slv_itf部分
    input       [12:0]                  sram_addr,
    input       [31:0]                  sram_wdata,
    //写入的数据分成4个8份，并且再翻转一遍
    input                               sram_wen,                       //低电平有效
    input       [3:0]                   bank0_csn,bank1_csn,            //低电平有效

    //送往接口ahb_slv_itf部分
    output      [7:0]                   sram_d0,sram_d1,sram_d2,sram_d3,sram_d4,sram_d5,sram_d6,sram_d7,

    //送往总线的部分
    output                              bist_done,
    output                              bist_fail
);
    //bist测试
    wire        [7:0]                   bist_fail_out;
    assign bist_fail = & bist_fail_out;

    bist_sram b0(
        .sram_clk(sram_clk),       
        .sram_rst_n(hrst_n),                 
        .bist_en(bist_en),
        .sram_addr(sram_addr),             
        .sram_wdata(sram_wdata[7:0]),
        .sram_wen(sram_wen),
        .sram_csn(bank0_csn[0]),
        .sram_rdata(sram_d0),
        .b_done(bist_done),
        .b_fail(bist_fail_out[0])
    );

    bist_sram b1(
        .sram_clk(sram_clk),       
        .sram_rst_n(hrst_n),                 
        .bist_en(bist_en),
        .sram_addr(sram_addr),             
        .sram_wdata(sram_wdata[15:8]),
        .sram_wen(sram_wen),
        .sram_csn(bank0_csn[1]),
        .sram_rdata(sram_d1),
        .b_done(bist_done),
        .b_fail(bist_fail_out[1])
    );

    bist_sram b2(
        .sram_clk(sram_clk),       
        .sram_rst_n(hrst_n),                 
        .bist_en(bist_en),
        .sram_addr(sram_addr),             
        .sram_wdata(sram_wdata[23:16]),
        .sram_wen(sram_wen),
        .sram_csn(bank0_csn[2]),
        .sram_rdata(sram_d2),
        .b_done(bist_done),
        .b_fail(bist_fail_out[2])
    );

    bist_sram b3(
        .sram_clk(sram_clk),       
        .sram_rst_n(hrst_n),                 
        .bist_en(bist_en),
        .sram_addr(sram_addr),             
        .sram_wdata(sram_wdata[31:24]),
        .sram_wen(sram_wen),
        .sram_csn(bank0_csn[3]),
        .sram_rdata(sram_d3),
        .b_done(bist_done),
        .b_fail(bist_fail_out[3])
    );
 
    bist_sram b4(
        .sram_clk(sram_clk),       
        .sram_rst_n(hrst_n),                 
        .bist_en(bist_en),
        .sram_addr(sram_addr),             
        .sram_wdata(sram_wdata[7:0]),
        .sram_wen(sram_wen),
        .sram_csn(bank1_csn[0]),
        .sram_rdata(sram_d4),
        .b_done(bist_done),
        .b_fail(bist_fail_out[4])
    );                       

    bist_sram b5(
        .sram_clk(sram_clk),       
        .sram_rst_n(hrst_n),                 
        .bist_en(bist_en),
        .sram_addr(sram_addr),             
        .sram_wdata(sram_wdata[15:8]),
        .sram_wen(sram_wen),
        .sram_csn(bank1_csn[1]),
        .sram_rdata(sram_d5),
        .b_done(bist_done),
        .b_fail(bist_fail_out[5])
    );                       

    bist_sram b6(
        .sram_clk(sram_clk),       
        .sram_rst_n(hrst_n),                 
        .bist_en(bist_en),
        .sram_addr(sram_addr),             
        .sram_wdata(sram_wdata[23:16]),
        .sram_wen(sram_wen),
        .sram_csn(bank1_csn[2]),
        .sram_rdata(sram_d6),
        .b_done(bist_done),
        .b_fail(bist_fail_out[6])
    );                       

    bist_sram b7(
        .sram_clk(sram_clk),       
        .sram_rst_n(hrst_n),                 
        .bist_en(bist_en),
        .sram_addr(sram_addr),             
        .sram_wdata(sram_wdata[31:24]),
        .sram_wen(sram_wen),
        .sram_csn(bank1_csn[3]),
        .sram_rdata(sram_d7),
        .b_done(bist_done),
        .b_fail(bist_fail_out[7])
    );                       
endmodule
