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
    input wire [2:0] in,  // 3位二进制输入
    output reg [7:0] out  // 8个输出端
);

always @(*) begin
    case (in)
        3'b000: out = 8'b00000001;  // 输入000
        3'b001: out = 8'b00000010;  // 输入001
        3'b010: out = 8'b00000100;  // 输入010
        3'b011: out = 8'b00001000;  // 输入011
        3'b100: out = 8'b00010000;  // 输入100
        3'b101: out = 8'b00100000;  // 输入101
        3'b110: out = 8'b01000000;  // 输入110
        3'b111: out = 8'b10000000;  // 输入111
        default: out = 8'b00000000; // 默认情况
    endcase
end

endmodule

