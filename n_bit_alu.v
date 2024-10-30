`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 12:57:35
// Design Name: 
// Module Name: n_bit_alu
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


 module n_bit_alu #(parameter n = 32) (
  input wire [n-1:0] operand1,
  input wire [n-1:0] operand2,
  input wire [2:0] control,
  output reg [n-1:0] result,
  output reg zero
);

 
  always @(*)
  begin
    case (control)
      3'b000: result = operand1 + operand2; // Addition
      3'b001: result = operand1 - operand2; // Subtraction
      3'b010: result = operand1 & operand2; // Bitwise AND
      3'b011: result = operand1 | operand2; // Bitwise OR
      3'b100: result = operand1 ^ operand2; // Bitwise XOR
      3'b101: result = operand1 << 2; // Left shift
      3'b110: result = operand1 >> 2; // Right shift
      3'b111: result = operand1+1; // Pass operand1 through
    endcase
    
     zero = (result == 0);
     end
  
endmodule