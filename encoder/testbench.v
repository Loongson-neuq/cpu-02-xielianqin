`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 12:59:17
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
    reg [7:0] in;  // 8�������
    wire [2:0] out;  // 3λ���������

    // ʵ����������ģ��
    encoder8to3 uut (
        .in(in),
        .out(out)
    );

    initial begin
        // ��ʼ������
        in = 8'b00000000;
        #10;  // �ȴ�10��ʱ�䵥λ

        // ����ÿ������
        in = 8'b00000001; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 8'b00000010; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 8'b00000100; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 8'b00001000; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 8'b00010000; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 8'b00100000; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 8'b01000000; #10;
        $display("Input: %b, Output: %b", in, out);

        in = 8'b10000000; #10;
        $display("Input: %b, Output: %b", in, out);

        // ��������
        $finish;
    end
endmodule

