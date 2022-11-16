`timescale 1ns / 1ps

module init_round(clk,data_in,key_in,data_out_first);
input clk;
input [127:0] data_in;
input [127:0] key_in;
output [127:0] data_out_first;

wire [127:0] data_out_first;

assign data_out_first= data_in ^ key_in;
endmodule
