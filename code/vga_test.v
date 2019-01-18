`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:50 01/04/2019 
// Design Name: 
// Module Name:    vga_test 
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
module vga_test(
    output wire[7:0]Segment,
	 output wire [3:0]AN,
    input clk,
    input reset_n,
    output vga_h_sync,
    output vga_v_sync,
    output [3:0] vga_blue,
	 output [3:0] vga_green,
	 output [3:0] vga_red,
	inout [4:0]BTN_X,
	inout [3:0]BTN_Y,
	input [15:0]SW,
	
	//input CLK,		//board clock signal
	input PS2_CLK,		//keyboard clock signal
	input PS2_DATA		//keyboard data signal	
   );
	 

	
	
	reg [15:0] buttons;
	reg [3:0] red, blue, green;
	wire video_on;
	wire [9:0] x_loc, y_loc;
	reg [9:0] p_x, p_y;
	reg [31:0] clk_div;
	wire [11:0]out;
	always @(posedge clk) clk_div = clk_div + 1;
		vga_sync vsync_unit
		(.vga_clk(clk_div[1]), .reset(1'b0), .hsync(vga_h_sync), .vsync(vga_v_sync), .video_on(video_on),
		.pixel_x(x_loc), .pixel_y(y_loc));
	
	reg [3:0] mode;
	

	pipesmod m1 (p_x, p_y,mode, out);
	
//	reg [3:0]states[0:17] = {72'b0};
	reg [3:0]states[0:17] = {4'd8, 4'd0, 4'd7, 4'd1, 4'd3, 4'd4, 4'd6, 4'd1, 4'd2, 4'd0, 4'd2, 4'd7, 4'd1, 4'd7, 4'd6, 4'd3, 4'd1, 4'd9};		
	reg wasReady;
	
	wire [71:0]out_state;
	reg [3:0] location = 4'b0;
	wire [5:0] KEY_BUTTON;

	Keyboard_Access keyboard_mod (PS2_DATA,
		 PS2_CLK,
		 KEY_BUTTON,
		 clk
	);

		

		always @(posedge clk)begin	
		if (KEY_BUTTON[0]) location <= location - 4;
		if (KEY_BUTTON[1]) location <= location + 4;
		if (KEY_BUTTON[2] && location % 4 != 0) location <= location - 1;
		if (KEY_BUTTON[3] && location % 4 != 3) location <= location + 1;
		if (KEY_BUTTON[4]) 
				case (states[location+1])
					4'b0000: states[location+1] <= 4'b0001;
					4'b0001: states[location+1] <= 4'b0000;
					4'b0010: states[location+1] <= 4'b0101;
					4'b0011: states[location+1] <= 4'b0100;
					4'b0100: states[location+1] <= 4'b0010;
					4'b0101: states[location+1] <= 4'b0011;
		endcase
		p_x <= x_loc;
		p_y <= y_loc;
		if (states[1] == 4'b0001 && states[5] == 4'b0011 && states[7] == 4'b0 && states[8] == 4'b0010
			&& states[12] == 4'b0001 && states[16] == 4'b0001) // winning state
			mode <= 4'd13;
		else if (p_y < 80 && p_x > 160 && p_x<240 )
			mode <= states[0];
		else if (p_y > 400 && (p_x > 400 && p_x < 480) )
			mode <= states[17];
		else if (p_y >80 && p_y<400 && p_x>160 && p_x < 480) begin
			if (p_y > 80 && p_y < 160)begin // Y
				if (p_x > 160 && p_x < 240) mode <= states[1];
				else if (p_x> 240 && p_x < 320) mode <= states[2];
				else if (p_x > 320 && p_x < 400) mode <= states[3];
				else if (p_x> 400 && p_x < 480) mode<= states[4];
			end else if (p_y > 160 && p_y < 240) begin //Y
				if(p_x > 160 && p_x < 240) mode <= states[5];
				else if (p_x> 240 && p_x < 320) mode<= states[6];
				else if (p_x > 320 && p_x < 400)mode<= states[7];
				else if (p_x > 400 && p_x < 480)mode<= states[8];
		
		end else if (p_y > 240 && p_y < 320) begin //Y
				if(p_x > 160 && p_x < 240) mode <= states[9];
				else if (p_x> 240 && p_x < 320)mode <= states[10];
				else if (p_x > 320 && p_x < 400)mode<= states[11];
				else if (p_x > 400 && p_x < 480)mode<= states[12];
			end else if (p_y > 320 && p_y < 400) begin //Y
				if(p_x > 160 && p_x < 240)mode <= states[13];
				else if (p_x> 240 && p_x < 320)mode <= states[14];
				else if (p_x > 320 && p_x < 400)mode<= states[15];
				else if (p_x > 400 && p_x < 480)mode<= states[16];
			end
		end
		else
//			if (p_x<160) mode<=4'd11;
//			else if (p_x>480) mode<=4'd12;
//			else
				mode <= 4'd10; // blank

	end




	assign vga_red = (video_on) ? out[11:8] : 4'b0;
	assign vga_blue = (video_on) ? out[3:0] : 4'b0;
	assign vga_green = (video_on) ? out[7:4] : 4'b0;
endmodule




















