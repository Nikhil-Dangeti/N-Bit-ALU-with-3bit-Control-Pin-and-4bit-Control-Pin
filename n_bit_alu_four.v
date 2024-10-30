`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2023 11:00:04
// Design Name: 
// Module Name: n_bit_alu_four
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


  module n_bit_alu_four #(parameter n = 32) (
  input wire [n-1:0] A,
  input wire [n-1:0] B,
  input wire [3:0] control,
  output reg[n-1:0] ALU_Result,
  output reg zero
);
  always @(*)
  begin
    case (control)
      4'b0000: ALU_Result = A + B ;// Addition          
      4'b0001: ALU_Result = A - B ; // Subtraction
      4'b0010: ALU_Result = A * B; // Multiplication 
      4'b0011: ALU_Result = A/B;   // Division
      4'b0100: ALU_Result = ~(A ^ B);// Logical xnor  
      4'b0101: ALU_Result = (A>B)?4'd1:4'd0 ;// Greater comparison
      4'b0110: ALU_Result = A & B;//  Logical and 
      4'b0111: ALU_Result = A | B; //  Logical or 
      4'b1000: ALU_Result = A ^ B; //  Logical xor 
      4'b1001: ALU_Result = A<<2; // Logical shift left  
      4'b1010: ALU_Result = A>>1; // Logical shift right
      4'b1011: ALU_Result = ~(A | B);//  Logical nor
      4'b1100: ALU_Result = ~(A & B);// Logical nand     
      4'b1101: ALU_Result = {A[6:0],A[7]}; // Rotate left by 1 position
      4'b1110: ALU_Result = {A[0],A[7:1]}; // Rotate right by 1 position
      4'b1111: ALU_Result = (A==B)?4'd1:3'd0 ;// Equal comparison  
      default: ALU_Result = A + B ;     
      endcase   
   zero = (ALU_Result == 0); 
end
endmodule
  
          
         
         
         
           
       