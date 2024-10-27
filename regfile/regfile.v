module regfile(
  input         clk,
  input  	    raddr1,
  output        rdata1,
  input         raddr2,
  output        rdata2,
  input         we,
  input         waddr,
  input         wdata
);
reg [31:0] rf[31:0];
// WRITE
always @(posedge clk) begin

end
// READ OUT 1
assign rdata1 = 
// READ OUT 2
assign rdata2 = 
endmodule