`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 18:03:23
// Design Name: 
// Module Name: decade_counter
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


module decade_counter(
    input clk,
    input rst,
    output [3:0] count,
    output ten
);
//YOUR CODE HERE
//objective 
// have  a variable to store current value 
//use if else for the reset 
//always@* 
// when if(rst) is true, variable back to 0
// when if( variable == 4'b1001) is true, reset variable to 0

reg [3:0]counter, ten_r;

assign count = counter;
assign ten = ten_r;
always@(posedge clk or posedge rst) begin
    if(rst) begin 
        counter = 4'b0000;
        ten_r = 0;
        end
    else begin 
            if(counter == 4'b1001) begin 
                counter = 4'b0000;
                ten_r = 1;

                end
            else begin 
                counter = counter + 1;
                end
        end
    
    end

endmodule