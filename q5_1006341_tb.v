`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2024 17:32:59
// Design Name: 
// Module Name: CTTA_tb
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


module CTTA_tb();

reg [3:0] A, B, C;
reg ctrl, rst;
wire [4:0]q;

CTTA u1( .A(A), .B(B), .C(C), .rst(rst), .ctrl(ctrl), .q(q) );

initial begin 
    ctrl = 0; A = 4; B = 1; C = 9;
    rst = 1; #10; 
    rst = 0; //no change in abc inputs for #10 units
    ctrl = 0; A = 4; B = 1; C = 9;
    #10 ctrl = 0; A = 3; B = 4'b1101; C = 4'b1101;
    #10 ctrl = 0; A = 5; B = 2; C = 1;
    #10 ctrl = 0; A = 13; B = 6; C = 13;
    #10 ctrl = 0; A = 13; B = 12; C = 9;
    #10 ctrl = 1; A = 6; B = 5; C = 10;
    #10 ctrl = 1; A = 5; B = 7; C = 2;
    #10 ctrl = 1; A = 15; B = 2; C = 14;
    #10 ctrl = 1; A = 8; B = 5; C = 12;
    #10 ctrl = 1; A = 13; B = 13; C = 5;
    #10 ctrl = 1; A = 3; B = 10; C = 0;
    #10;
    
    $finish;
    
end



endmodule
