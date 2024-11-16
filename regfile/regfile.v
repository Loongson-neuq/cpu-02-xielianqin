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
    input wire clk,           // ʱ���ź�
    input wire [4:0] raddr1,  // ����ַ1
    output wire [31:0] rdata1, // ������1
    input wire [4:0] raddr2,  // ����ַ2
    output wire [31:0] rdata2, // ������2
    input wire we,            // дʹ��
    input wire [4:0] waddr,   // д��ַ
    input wire [31:0] wdata   // д����
);

    // �Ĵ����ѣ�32��32λ�Ĵ���
    reg [31:0] regfile [31:0];

    // ���˿�1
    assign rdata1 = regfile[raddr1];

    // ���˿�2
    assign rdata2 = regfile[raddr2];

    // д�˿�
    always @(posedge clk) begin
        if (we) begin
            regfile[waddr] <= wdata;
        end
    end

endmodule

