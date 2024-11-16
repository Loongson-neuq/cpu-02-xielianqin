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
    reg clk;  // ʱ���ź�
    reg [4:0] raddr1;  // ����ַ1
    wire [31:0] rdata1;  // ������1
    reg [4:0] raddr2;  // ����ַ2
    wire [31:0] rdata2;  // ������2
    reg we;  // дʹ��
    reg [4:0] waddr;  // д��ַ
    reg [31:0] wdata;  // д����

    // ʵ�����Ĵ�����ģ��
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

    // ʱ���ź�����
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // ÿ5��ʱ�䵥λ��תһ��ʱ���ź�
    end

    initial begin
        // ��ʼ������
        we = 0;
        raddr1 = 5'b00000;
        raddr2 = 5'b00001;
        waddr = 5'b00000;
        wdata = 32'h00000000;

        // д������
        #10;
        we = 1;
        waddr = 5'b00000;
        wdata = 32'h12345678;
        #10;
        we = 0;

        // ��ȡ����
        #10;
        raddr1 = 5'b00000;
        raddr2 = 5'b00001;
        #10;
        $display("Read Address 1: %b, Data: %h", raddr1, rdata1);
        $display("Read Address 2: %b, Data: %h", raddr2, rdata2);

        // д����һ������
        #10;
        we = 1;
        waddr = 5'b00001;
        wdata = 32'h87654321;
        #10;
        we = 0;

        // �ٴζ�ȡ����
        #10;
        raddr1 = 5'b00000;
        raddr2 = 5'b00001;
        #10;
        $display("Read Address 1: %b, Data: %h", raddr1, rdata1);
        $display("Read Address 2: %b, Data: %h", raddr2, rdata2);

        // ��������
        $finish;
    end
endmodule

