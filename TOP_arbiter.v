`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:28 12/11/2018 
// Design Name: 
// Module Name:    TOP_arbiter 
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
module TOP_arbiter(
    input [3:0] BR,
    output [3:0] BG
    );
	 wire VALID_EN;
	 wire [1:0] code;
	 
	 encoder4_2 E42(.Data(BR), .Y(code), .V(VALID_EN));
	 
	 decoder2_4 D24(.Data(code), .EN(VALID_EN),.Y(BG));


endmodule
