//`define HCLK_EQUAL_SRAM_CLK

module AHB_SRAM(
    //系统信号输入信号
    input                           hclk,
    input                           sram_clk,
    input                           hrst_n,
    input                           bist_en,

    //总线输入信息
    //有效类信息
    input                           hsel,
    input                           hready,

    //传输类信息
    input   [2:0]                   hsize,
    input   [1:0]                   htrans,   
    input   [2:0]                   hburst,

    //读写信息
    input                           hwrite,
    input   [31:0]                  haddr,
    input   [31:0]                  hwdata,

    //总线输出信息
    output  [31:0]                  hrdata,

    output  [1:0]                   hresp,                   
    output                          hready_out,

    output                          bist_done,
    output                          bist_fail

);
    wire    [7:0]                   sram_d0,sram_d1,sram_d2,sram_d3,sram_d4,sram_d5,sram_d6,sram_d7;
    wire    [12:0]                  sram_addr;    
    wire    [3:0]                   bank0_csn,bank1_csn;
    wire                            wen;
    wire    [31:0]                  sram_wdata;

    ahb_slv_itf u_a(
        .hclk(hclk),
        .hrst_n(hrst_n),
        .htrans(htrans),
        .hburst(hburst),
        .hsize(hsize),
        .hsel(hsel),
        .hready(hready),
        .hwrite(hwrite),
        .haddr(haddr),
        .hwdata(hwdata),
        .sram_d_0(sram_d0),
        .sram_d_1(sram_d1),
        .sram_d_2(sram_d2),
        .sram_d_3(sram_d3),
        .sram_d_4(sram_d4),
        .sram_d_5(sram_d5),
        .sram_d_6(sram_d6),
        .sram_d_7(sram_d7),
        .sram_addr_out(sram_addr),
        .wen(wen),
        .bank0_csn(bank0_csn),
        .bank1_csn(bank1_csn),
        .hrdata(hrdata),
        .hresp(hresp),
        .hready_out(hready_out),
        .sram_wdata(sram_wdata)
    );

    

    ahb_sram uut (
        .hclk(hclk),
        .sram_clk(sram_clk),
        .hrst_n(hrst_n),
        .bist_en(bist_en),
        .sram_addr(sram_addr),
        .sram_wdata(sram_wdata),
        .sram_wen(wen),
        .bank0_csn(bank0_csn),
        .bank1_csn(bank1_csn),
        .sram_d0(sram_d0),
        .sram_d1(sram_d1),
        .sram_d2(sram_d2),
        .sram_d3(sram_d3),
        .sram_d4(sram_d4),
        .sram_d5(sram_d5),
        .sram_d6(sram_d6),
        .sram_d7(sram_d7),
        .bist_done(bist_done),
        .bist_fail(bist_fail)
    );




endmodule

