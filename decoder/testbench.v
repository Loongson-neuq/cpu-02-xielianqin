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
    reg [2:0] in;  // 3λ����������
    wire [7:0] out;  // 8�������

    // ʵ����������ģ��
    decoder3to8 uut (
        .in(in),
        .out(out)
    );

    initial begin
        // ��ʼ������
        in = 3'b000;
        #10;  // �ȴ�10��ʱ�䵥λ

        // ����ÿ������
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

        // ��������
        $finish;
    end
endmodule
