`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:45:30 01/04/2019 
// Design Name: 
// Module Name:    vga_sync 
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
//
//////////////////////////////////////////////////////////////////////////////////
module vga_sync(
    input vga_clk, // 25 MHZ
    input reset,
    output reg hsync,
    output reg vsync,
    output video_on,
    output reg [9:0] pixel_x,
    output reg [9:0] pixel_y
    );
	
	// sync counters
	reg [9:0] h_count;
	reg [9:0] v_count;
	wire [9:0] row;
	wire [9:0] col;
	// output buffer
	wire v_sync, h_sync;
	// status
	wire h_end, v_end, pixel_tick;
	
	always @(posedge vga_clk) begin
		if (reset) h_count <= 10'h0;
		else if(h_count == 10'd799)
			h_count <= 10'h0;
		else h_count <= h_count + 10'h1;

		pixel_x = col;
		pixel_y = row;
		hsync = h_sync;
		vsync = v_sync;
	end
	
	always @(posedge vga_clk or posedge reset) begin
		if(reset) v_count <= 10'h0;
		else if (h_count == 10'd799) begin
			if(v_count == 10'd524) v_count <= 10'h0;
			else v_count <= v_count + 10'h1;
		end
	end
	// Y value needs to lose 7
	// X lose 11
	assign row = v_count - 10'd35; // pixel y value
	assign col = h_count - 10'd143; // pixel x value
	assign h_sync = (h_count > 10'd95); // 96->799, is enabled
	assign v_sync = (v_count > 10'd1); // 2->524
	assign video_on = (
		h_count > 10'd142 &&
		h_count < 10'd783 && // 640 pix
		v_count > 10'd34 &&
		v_count < 10'd515); // 480 lins
endmodule



































