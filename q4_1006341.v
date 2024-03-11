`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 16:17:36
// Design Name: 
// Module Name: nibbleadd
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


module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output [4:0]q
);
    

//YOUR CODE HERE

//objective: use cntrl to SUM values from input A and B

//Declare variables

reg [3:0] a, b;

//case require reg/int storage value when the condition met
//output is wire so it will have procedural block errors
//to solve, add one more reg variable(reg_q) to store, then assign
//to wire output(q)
reg [4:0] reg_q;
assign q = reg_q;

//use case condition to split cntrl options
always@*
    case(ctrl)
        1'b0 : begin //lowest sum
            a = A[3:0]; b = B[3:0];
            reg_q = a + b;
          
        end
        
        1'b1: begin //upper sum
            a = A[7:4]; b = B[7:4];
            reg_q = a + b;
            
        end
       
       
    endcase
    
endmodule
