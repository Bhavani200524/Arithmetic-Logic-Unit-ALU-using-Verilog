`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 06:48:24
// Design Name: 
// Module Name: Arithmetic Logic Unit
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


module alu4bit (
    input wire [3:0] A, B,
    input wire [1:0] opcode,   // 00=ADD, 01=SUB, 10=AND, 11=OR
    output reg [3:0] result
);
    always @(*) begin
        case (opcode)
            2'b00: result = A + B;   // addition
            2'b01: result = A - B;   // subtraction
            2'b10: result = A & B;   // bitwise AND
            2'b11: result = A | B;   // bitwise OR
            default: result = 4'b0000;
        endcase
    end
endmodule
