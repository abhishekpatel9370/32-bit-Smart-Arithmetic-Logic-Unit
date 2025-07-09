`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2025 11:29:19 PM
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB;

reg [31:0] A,B ;
 wire [63:0] out;
 reg [3:0] opcode;

   ALU_4bit utt1(
 A,B , out, opcode
    );
   initial begin 
   opcode =4'd1 ;A=10 ;B=5 ;
   #5 opcode =4'd4 ; A=-13 ; B=-15;
   #5 opcode =4'd5 ; A=-13 ; B=-14;
   #5 opcode =4'd6 ; A=-13 ; B=-15;
   #5 opcode =4'd7 ; A=-13 ; B=-15;
   #5 $finish ;
   end
   
endmodule
