`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:45 01/09/2019 
// Design Name: 
// Module Name:    pixels 
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
module pixels(state, pixels   
    );
    input reg [2:0]state;
    output reg [6399:0] out_pix;
    reg [51199:0]in_pixels[7:0];
    assign in_pixels = [
    ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,fe,fe,fe,fe
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,fe,fe,fe,fe,fe,fe,fe,fe
,fe,fe,fe,fe,fe,fe,fe,fe,fe,fe,fe,fe,fe,fe
,fe,fe,fd,fd,bc,bc,bc,bc,bc,bc,bd,fd,fe,ff
,ff,ff,ff,ff,bd,bd,bd,bc,bc,bc,bc,bc,bc,bc
,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc
,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc,bc
,bc,bc,bc,bc,bb,bb,bb,bb,bb,bb,bb,bb,bb,bb
,bb,bb,bb,bb,bb,bb,bb,bb,bb,bb,bb,7b,7a,7a
,7a,79,79,79,79,79,30,bb,bc,fd,fe,ff,ff,ff
,79,79,79,79,78,38,38,38,38,38,78,38,38,38
,38,38,38,38,38,38,38,38,38,38,38,38,38,38
,38,38,38,38,38,38,38,38,38,38,38,38,38,38
,38,38,38,38,38,38,38,38,38,38,38,38,38,38
,78,78,38,38,38,38,38,38,39,39,39,39,39,38
,38,38,38,78,78,79,bc,fe,ff,ff,39,39,39,38
,38,38,38,39,38,38,79,79,38,38,79,79,38,38
,38,38,38,38,38,38,38,38,38,38,38,38,38,38
,38,38,38,38,38,38,38,38,39,39,39,39,39,3a
,3a,3a,7a,7a,7a,7a,7a,7a,7a,7a,78,38,38,38
,38,78,78,78,7a,79,79,79,79,79,79,79,7a,79
,38,38,38,bc,fe,ff,7a,7a,7a,79,79,79,39,79
,79,79,79,79,79,79,79,7a,79,79,79,79,79,79
,79,79,7a,7a,79,7a,7a,7a,7a,79,79,79,79,79
,79,79,79,79,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a
,7a,7a,7a,7a,7a,7a,7a,39,39,39,39,79,79,79
,78,38,38,38,38,79,79,79,31,79,38,38,38,32
,bc,fd,78,78,78,78,78,78,78,78,38,38,78,78
,38,38,38,78,79,39,39,38,38,39,39,79,39,38
,38,38,39,39,38,38,38,38,38,38,38,38,38,38
,78,78,78,78,78,78,78,78,38,38,38,38,38,38
,38,38,39,39,39,79,79,79,79,79,38,38,38,38
,78,78,38,38,7a,7a,70,39,3a,39,7a,bb,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,38,38,38,39
,39,3a,3a,3a,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,38,78,79,79,79,79,7a,7a
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,38,78,79,78,78,78,78,78,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,39,79
,70,78,78,38,38,78,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,39,39,70,78,39,38
,79,bb,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,3a,79,78,38,38,32,bb,bd,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,3a,79,78,38,79,bb,fd,fe,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,79,79,79,79
,79,79,79,79,79,79,79,79,79,79,3a,79,78,78
,bb,bd,fe,ff,38,38,38,38,38,38,38,78,78,78
,78,38,38,78,78,78,79,79,79,79,79,79,79,79
,38,78,78,78,38,38,78,78,79,79,79,79,79,79
,79,79,7a,7a,79,79,7a,7a,7a,79,79,79,79,79
,79,79,79,79,7a,7a,7a,79,79,79,38,38,79,79
,79,78,78,38,78,78,38,39,b3,bc,fe,ff,ff,ff
,78,78,79,79,79,79,71,71,39,39,39,39,39,39
,39,79,39,39,38,38,38,38,39,39,39,39,39,39
,39,39,39,39,78,78,38,38,38,78,78,78,38,38
,38,38,38,38,38,38,38,38,38,38,38,38,38,38
,38,38,38,38,38,38,38,38,38,38,38,38,79,7a
,7a,bb,bc,bc,fd,fe,ff,ff,ff,ff,39,39,79,79
,79,7a,7a,79,39,7a,7a,7a,3a,39,3a,7a,7a,7a
,7a,79,79,7a,7a,7a,7a,7a,3a,3a,7a,7a,7a,3a
,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a
,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a,7a,ba
,bb,bb,bb,bb,bc,bc,bc,bc,fd,fd,fd,fe,fe,ff
,ff,ff,ff,ff,ff,ff,bc,bc,bc,bc,bc,bd,bd,bd
,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd
,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd
,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fd,fe,fe
,fe,fe,fe,fe,fe,fe,fd,fd,fe,fe,fe,fe,fe,fe
,fe,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff,ff
,ff,ff];

    assign out_pix = in_pixels[state*6400:(state+1)*6400-1];

endmodule