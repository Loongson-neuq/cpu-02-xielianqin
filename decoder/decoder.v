`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 13:10:53
// Design Name: 
// Module Name: decoder
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


module decoder3to8 (
    input wire [2:0] in,  // 3λ����������
    output reg [7:0] out  // 8�������
);

always @(*) begin
    case (in)
        3'b000: out = 8'b00000001;  // ����000
        3'b001: out = 8'b00000010;  // ����001
        3'b010: out = 8'b00000100;  // ����010
        3'b011: out = 8'b00001000;  // ����011
        3'b100: out = 8'b00010000;  // ����100
        3'b101: out = 8'b00100000;  // ����101
        3'b110: out = 8'b01000000;  // ����110
        3'b111: out = 8'b10000000;  // ����111
        default: out = 8'b00000000; // Ĭ�����
    endcase
end

endmodule

