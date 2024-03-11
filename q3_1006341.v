`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 14:45:36
// Design Name: 
// Module Name: demultiplexer
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


module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output [1:0]W,
    output [1:0]X,
    output [1:0]Y,
    output [1:0]Z
    );
    
//YOUR CODE HERE

reg [1:0] reg_W,reg_X,reg_Y,reg_Z; 

//assigning all output with their respective reg storage
assign W = reg_W;
assign X = reg_X;
assign Y = reg_Y;
assign Z = reg_Z;
always@*
 case(SEL)
    
    2'b00: begin 
        reg_W = A;
        {reg_X,reg_Y,reg_Z} = 0;
    end
    2'b01: begin 
        reg_X = A;
        {reg_W,reg_Y,reg_Z} = 0;
    end
    2'b10: begin 
        reg_Y = A;
        {reg_X,reg_W,reg_Z} = 0;
    end
    2'b11: begin 
        reg_Z = A;
        {reg_X,reg_Y,reg_W} = 0;
    end    

 endcase

endmodule
