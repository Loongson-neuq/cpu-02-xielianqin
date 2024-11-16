`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 13:21:25
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench;
    reg clk;  // 时钟信号
    reg [4:0] raddr1;  // 读地址1
    wire [31:0] rdata1;  // 读数据1
    reg [4:0] raddr2;  // 读地址2
    wire [31:0] rdata2;  // 读数据2
    reg we;  // 写使能
    reg [4:0] waddr;  // 写地址
    reg [31:0] wdata;  // 写数据

    // 实例化寄存器堆模块
    regfile uut (
        .clk(clk),
        .raddr1(raddr1),
        .rdata1(rdata1),
        .raddr2(raddr2),
        .rdata2(rdata2),
        .we(we),
        .waddr(waddr),
        .wdata(wdata)
    );

    // 时钟信号生成
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 每5个时间单位翻转一次时钟信号
    end

    initial begin
        // 初始化输入
        we = 0;
        raddr1 = 5'b00000;
        raddr2 = 5'b00001;
        waddr = 5'b00000;
        wdata = 32'h00000000;

        // 写入数据
        #10;
        we = 1;
        waddr = 5'b00000;
        wdata = 32'h12345678;
        #10;
        we = 0;

        // 读取数据
        #10;
        raddr1 = 5'b00000;
        raddr2 = 5'b00001;
        #10;
        $display("Read Address 1: %b, Data: %h", raddr1, rdata1);
        $display("Read Address 2: %b, Data: %h", raddr2, rdata2);

        // 写入另一个数据
        #10;
        we = 1;
        waddr = 5'b00001;
        wdata = 32'h87654321;
        #10;
        we = 0;

        // 再次读取数据
        #10;
        raddr1 = 5'b00000;
        raddr2 = 5'b00001;
        #10;
        $display("Read Address 1: %b, Data: %h", raddr1, rdata1);
        $display("Read Address 2: %b, Data: %h", raddr2, rdata2);

        // 结束仿真
        $finish;
    end
endmodule

