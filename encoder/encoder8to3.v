`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 12:58:18
// Design Name: 
// Module Name: encoder8to3
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


module encoder8to3 (
    input wire [7:0] in,  // 8�������
    output reg [2:0] out  // 3λ���������
);

always @(*) begin
    case (in)
        8'b00000001: out = 3'b000;  // ����a
        8'b00000010: out = 3'b001;  // ����b
        8'b00000100: out = 3'b010;  // ����c
        8'b00001000: out = 3'b011;  // ����d
        8'b00010000: out = 3'b100;  // ����e
        8'b00100000: out = 3'b101;  // ����f
        8'b01000000: out = 3'b110;  // ����g
        8'b10000000: out = 3'b111;  // ����h
        default: out = 3'bxxx;      // Ĭ�����
    endcase
end

endmodule

