`timescale 1ns / 1ps
//Kernel Address Generator
module KAG #(parameter m=3)(
    input clk,rstn,
    input [6:0]addr, //7 bit address
    input [(m*m)-1:0] kernel, //9 bit kernel value
    output out
    );
    reg k_mem[0:(m*m)-1]; //kernel memory 9 bit
    integer i;
    
    always @(negedge clk or negedge rstn)
     begin
        if(!rstn)
            begin
              for (i=0; i<=m*m-1; i=i+1)begin //at reset set the kernel to 0
                 k_mem[i]= 0;
              end
            end
        else
            begin 
              for (i=0; i<=(m*m)-1; i=i+1)begin
                 k_mem[i]= kernel[i];
              end
            end
     end
     
     assign out = k_mem[addr]; // k_mem[0]........k_mem[6]
endmodule
