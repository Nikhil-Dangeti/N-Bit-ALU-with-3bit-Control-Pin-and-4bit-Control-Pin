`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 13:09:57
// Design Name: 
// Module Name: n_bit_alu_tb
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

module n_bit_alu_tb();

  parameter n = 32;
  reg [n-1:0] operand1;
  reg [n-1:0] operand2;
  reg [2:0] control;
  wire [n-1:0] result;
  wire zero;
 
  initial begin
  operand1=32'd15;
  operand2=32'd12;
  
  control=3'b000;
  #100 control=3'b001;
  #100 control=3'b010;
  #100 control=3'b011;
  #100 control=3'b100;
  #100 control=3'b101;
  #100 control=3'b110;
  #100 control=3'b111;
  end
  n_bit_alu A(operand1,operand2,control,result,zero);
  endmodule
    
