`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:18 01/10/2019 
// Design Name: 
// Module Name:    PS2_Sync 
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
module PS2_Sync(
    input ps2d,
    input ps2c,
    input clk,
    output [7:0] dout,
	 output [7:0] pout
    );
	
	reg [7:0] filter_reg;
	reg ps2c_reg;
	wire [7:0] filter_next;
	reg [7:0] data, curr, prev;
	reg [4:0] count;
	
	assign dout = curr;
	assign pout = prev;
	assign filter_next = {filter_reg[6:0],ps2c};
	
	initial begin
		count = 4'b1;
		filter_reg = 8'b0;
		data = 8'b0;
		prev = 8'b0;
		//ready = 1'b0;
	end
	
	
	always @(posedge clk) begin
		filter_reg = filter_next;
		ps2c_reg = (filter_reg == 8'b0)? 1'b0 :
			(filter_reg == 8'b1111_1111)? 1'b1 : ps2c_reg;
	end
	
	always @(negedge ps2c_reg) begin
		case(count)
			1: begin curr <= 8'h0; prev <= data; end//first bit
			2: data[0] <= ps2d;
			3: data[1] <= ps2d;
			4: data[2] <= ps2d;
			5: data[3] <= ps2d;
			6: data[4] <= ps2d;
			7: data[5] <= ps2d;
			8: data[6] <= ps2d;
			9: data[7] <= ps2d;
			10: curr <= data; // Parity bit, we assume it's correct :3
			11: ; // Ending bit, we prepare ready again
		endcase
		if (count < 4'd11) count <= count+1'b1;
		else count <= 1'b1;
	end

endmodule














