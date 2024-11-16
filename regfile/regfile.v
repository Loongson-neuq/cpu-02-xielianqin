`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 13:20:36
// Design Name: 
// Module Name: regfile
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


module regfile (
    input wire clk,           // 时钟信号
    input wire [4:0] raddr1,  // 读地址1
    output wire [31:0] rdata1, // 读数据1
    input wire [4:0] raddr2,  // 读地址2
    output wire [31:0] rdata2, // 读数据2
    input wire we,            // 写使能
    input wire [4:0] waddr,   // 写地址
    input wire [31:0] wdata   // 写数据
);

    // 寄存器堆，32个32位寄存器
    reg [31:0] regfile [31:0];

    // 读端口1
    assign rdata1 = regfile[raddr1];

    // 读端口2
    assign rdata2 = regfile[raddr2];

    // 写端口
    always @(posedge clk) begin
        if (we) begin
            regfile[waddr] <= wdata;
        end
    end

endmodule

