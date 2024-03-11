`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 01:34:51
// Design Name: 
// Module Name: multiplexer_tb
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


module multiplexer_tb; //run once so no arguments
//declare output - dependent on input
    wire [1:0]X;
//declare input -  independent, controlled by testbench
    reg [1:0]SEL; //I is just to store a constant value into module inputs
    reg [1:0]A;
    reg [1:0]B;
    reg [1:0]C;
    reg [1:0]D;


multiplexer mux1(.A(A), .B(B), .C(C), .D(D), .SEL(SEL), .X(X));

    initial
        begin 
        
        A = 2'b00; B = 2'b01; C = 2'b01; D = 2'b11; 
        
        SEL = 0;
        #10 SEL = 1;
        #10 SEL = 2;
        #10 SEL = 3;
        #10 $stop;
        
        $finish;
        end
    
    
    
endmodule
