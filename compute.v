`timescale 1ns / 1ps

module Compute(
        input clk,rstn,
        input ker_val,res_rst, //ker_val is output of KAG
        input [7:0]img_val, //is from ram
        output reg [15:0] temp_res=0
        
    );
    wire [15:0]product;

    assign product = ker_val*img_val;  
  
    always @(negedge clk or negedge rstn)
        begin
        if(!rstn)temp_res = 0;
        else if(product!==16'bx)
        temp_res = temp_res+product;
        end
endmodule
