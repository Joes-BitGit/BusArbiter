`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:09 12/11/2018 
// Design Name: 
// Module Name:    encoder4_2 
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
module encoder4_2(
    input [3:0] Data,
    output reg [1:0] Y,
    output V
    );
	 
	 
	 always@(*)begin
		case(Data)
			4'b0000: {V,Y} = 3'b000; 
			4'bxxx1: {V,Y} = 3'b100; // high
			4'bxx10: {V,Y} = 3'b101;
			4'bx100: {V,Y} = 3'b110; 
			4'b1000: {V,Y} = 3'b111; // low
		endcase
	 end

endmodule
