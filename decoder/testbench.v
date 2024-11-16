`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 13:11:41
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
    reg [2:0] in;  // 3位二进制输入
    wire [7:0] out;  // 8个输出端

    // 实例化译码器模块
    decoder3to8 uut (
        .in(in),
        .out(out)
    );

    initial begin
        // 初始化输入
        in = 3'b000;
        #10;  // 等待10个时间单位

        // 测试每个输入
        in = 3'b000; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 3'b001; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 3'b010; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 3'b011; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 3'b100; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 3'b101; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 3'b110; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 3'b111; #10;
        $display("Input: %b, Output: %b", in, out);

        // 结束仿真
        $finish;
    end
endmodule
