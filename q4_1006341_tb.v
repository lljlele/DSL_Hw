`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 16:36:19
// Design Name: 
// Module Name: nibbleadd_tb
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


module nibbleadd_tb;

//output and input declare
wire [4:0]q;

reg ctrl;
reg [7:0]A,B;

nibbleadd n1(A, B, ctrl, q);

initial
    begin
        ctrl = 0; A = 8'b00100100; B = 8'b10000001;
        #5 ctrl = 0; A = 8'b00001001; B = 8'b01100011;
        #5 ctrl = 0; A = 8'b00001101; B = 8'b10001101;
        
        
        #5 ctrl = 0; A = 8'b01100101; B = 8'b00010010;
        #5 ctrl = 0; A = 8'b00000001; B = 8'b00001101;
        #5 ctrl = 1; A = 8'b01110110; B = 8'b00111101;
        #5 ctrl = 1; A = 8'b11101101; B = 8'b10001100;
        #5 ctrl = 1; A = 8'b11111001; B = 8'b11000110;
        
        #5 ctrl = 1; A = 8'b11000101; B = 8'b10101010;
        #5 ctrl = 1; A = 8'b11100101; B = 8'b01110111;
        #5 ctrl = 1; A = 8'b00010010; B = 8'b10001111;
        #5 ctrl = 1; A = 8'b11110010; B = 8'b11001110;
        
        #5;      
        $finish;
        
    end


endmodule
