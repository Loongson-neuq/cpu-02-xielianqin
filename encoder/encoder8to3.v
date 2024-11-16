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
    input wire [7:0] in,  // 8个输入端
    output reg [2:0] out  // 3位二进制输出
);

always @(*) begin
    case (in)
        8'b00000001: out = 3'b000;  // 输入a
        8'b00000010: out = 3'b001;  // 输入b
        8'b00000100: out = 3'b010;  // 输入c
        8'b00001000: out = 3'b011;  // 输入d
        8'b00010000: out = 3'b100;  // 输入e
        8'b00100000: out = 3'b101;  // 输入f
        8'b01000000: out = 3'b110;  // 输入g
        8'b10000000: out = 3'b111;  // 输入h
        default: out = 3'bxxx;      // 默认情况
    endcase
end

endmodule

