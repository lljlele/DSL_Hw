`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2024 17:21:20
// Design Name: 
// Module Name: CTTA
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


module CTTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output [4:0] q
);

//using ctrl to choose which inputs to add
//ctrl = 0: A+B
//ctryl = 1: A-C
//no need clk
//rst = 1: clear output q

reg [4:0]q_r;  
assign q = q_r;

always@* begin 
    if(rst) begin 
        q_r = 0;
        
    end
    else begin 
        if(ctrl) begin 
            q_r = A - C;
        end
        else begin
            q_r = A + B;
            
        end
    end

end






endmodule