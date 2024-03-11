`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 15:18:51
// Design Name: 
// Module Name: demultiplexer_tb
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


module demultiplexer_tb;

//declare variables to use
wire [1:0] W,X,Y,Z;
reg [1:0]SEL, A;

//call the module
demultiplexer dmux1(.A(A),.SEL(SEL),.W(W),.X(X),.Y(Y),.Z(Z));

//run the testbench
initial
 begin
    
    SEL = 0; A = 0;
    #10 SEL = 1; A = 1;
    #10 SEL = 2; A = 1;
    #10 SEL = 3; A = 3;
    #10;
    
    $finish;
    
 end













endmodule
