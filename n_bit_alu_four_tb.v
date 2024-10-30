`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2023 11:02:59
// Design Name: 
// Module Name: n_bit_alu_four_tb
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


 module n_bit_alu_four_tb #(parameter n = 32)();
  reg [n-1:0] A;
  reg [n-1:0] B;
  reg [3:0] control;
  wire [n-1:0] ALU_Result;
  wire zero;
 
  initial begin
  A=32'd15;
  B=32'd12;
  

  control=4'b0000;
  #100 control=4'b0001;
  #100 A=32'd230005; B=32'd5; control=4'b0010;
  #100 control=4'b0011;
  #100A=32'd44241422;B=32'd4324222;control=4'b0100;
  #100 control=4'b0101;
  #100 control=4'b0110;
  #100 control=4'b0111;
  #100 control=4'b1000;
  #100 control=4'b1001;
  #100 control=4'b1010;

  end
  n_bit_alu_four AL(A,B,control,ALU_Result,zero);
endmodule

