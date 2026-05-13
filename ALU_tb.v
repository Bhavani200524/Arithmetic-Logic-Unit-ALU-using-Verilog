`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 06:49:30
// Design Name: 
// Module Name: ALU_tb
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


module tb_alu4bit;
    reg [3:0] A, B;
    reg [1:0] opcode;
    reg clk;
    wire [3:0] result;

    // Instantiate DUT (Device Under Test)
    alu4bit uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 time units per cycle
    end

    // Apply test vectors
    initial begin
        $monitor("Time=%0t | A=%d | B=%d | opcode=%b | result=%d", 
                  $time, A, B, opcode, result);

        // Test ADD
        A = 4'd5; B = 4'd3; opcode = 2'b00; #10;

        // Test SUB
        A = 4'd10; B = 4'd4; opcode = 2'b01; #10;

        // Test AND
        A = 4'b1100; B = 4'b1010; opcode = 2'b10; #10;

        // Test OR
        A = 4'b1100; B = 4'b1010; opcode = 2'b11; #10;

        // End simulation
        #20 $stop;
    end
endmodule
