`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 18:43:08
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output [1:0]X
);

 //Need to add this line, to store the output value, do add in the range for multiple bits variables
reg [1:0]reg_x;

assign X = reg_x; //cannot output value, will redeclare warning

//YOUR CODE HERE
always@*
    case(SEL) //SEL IS 2 BIT INPUT, MAKE X = TO SELECTED INPUT
        2'b00: reg_x = A;
        2'b01: reg_x = B;
        2'b10: reg_x = C;
        2'b11: reg_x = D;
    endcase
    

//TIPS: IN THE VERILOG CASE STATEMENT, YOU HAVE TO LIST ALL CONDITION TO AVIOD ANY AMBIGUOUS STATEMENT;
endmodule
