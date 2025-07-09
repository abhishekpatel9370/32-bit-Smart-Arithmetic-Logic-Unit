`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2025 11:19:53 PM
// Design Name: 
// Module Name: ALU_4bit
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


module ALU_4bit(
input wire [31:0] A,B ,
output reg [63:0] out,
input  [3:0] opcode

    );
    always @ *
    begin 
    case(opcode)
    4'b0000 : out =A+B ;
    4'b0001 : out =A-B ;
    4'b0010 : out=A*B ;
    4'b0011 : out=A/B ;
    4'b0100 : out=$signed(A) +$signed(B);
    4'b0101 : out =$signed(A)-$signed(B) ;
    4'b0110 : out =$signed(A)*$signed(B);
    4'b0111 :out =$signed(A) /$signed(B);
    endcase end
    
    
    
endmodule
