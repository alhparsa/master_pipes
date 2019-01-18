`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:01 01/10/2019 
// Design Name: 
// Module Name:    Keyboard_Access 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//7
//////////////////////////////////////////////////////////////////////////////////
module Keyboard_Access(
    input ps2d,
    input ps2c,
    output reg [5:0] KEY_BUTTON,
    input clk
//	 input [71:0] in_states,
//	 output [71:0] out_states,
    );
	 
	reg [7:0] num_clk;
	reg new_clk;
	always @(posedge clk)begin
		if (num_clk != 8'hff)
			num_clk <= num_clk + 1;
		else
			num_clk <= 8'h0;
			new_clk = ~new_clk;
	end
 
	reg isArrow;
	reg isRelease;
	wire ready;
	wire [7:0] dout;
	wire [7:0] prev;
	reg [7:0] key_code;
	//wire data;
	//assign data = ~isRelease;
	
	initial begin
		KEY_BUTTON = 6'b0;
		isArrow = 1'b0;
		isRelease = 1'b0;
	end
	
	PS2_Sync m0(
		.ps2d(ps2d),
		.ps2c(ps2c),
		.clk(new_clk),
//		.ready(ready),
		.dout(dout),
		.pout(prev));
		
	always @(posedge new_clk) begin
		if(dout == 8'h1d) // W
			if(prev == 8'hf0) // release code
				KEY_BUTTON[0] = 1'b0;
			else KEY_BUTTON[0] = 1'b1;
		else if(dout == 8'h1b) // S
			if(prev == 8'hf0) // release code
				KEY_BUTTON[1] = 1'b0;
			else KEY_BUTTON[1] = 1'b1;
		else if(dout == 8'h1c) // A
			if(prev == 8'hf0) // release code
				KEY_BUTTON[2] = 1'b0;
			else KEY_BUTTON[2] = 1'b1;
		else if(dout == 8'h23) // D
			if(prev == 8'hf0) // release code
				KEY_BUTTON[3] = 1'b0;
			else KEY_BUTTON[3] = 1'b1;
		else if(dout == 8'h29) // SPACE
			if(prev == 8'hf0) // release code
				KEY_BUTTON[4] = 1'b0;
			else KEY_BUTTON[4] = 1'b1;
		else if(dout == 8'h2d) // R
			if(prev == 8'hf0) // release code
				KEY_BUTTON[5] = 1'b0;
			else KEY_BUTTON[5] = 1'b1;
	end
	

endmodule














