`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:25 12/11/2018 
// Design Name: 
// Module Name:    decoder2_4 
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
module decoder2_4(
    input [1:0] Data,
    input EN,
    output reg [3:0] Y
    );
	 
	 always@(*)begin
		case({EN,Data})
			3'b000 : Y = 4'b0000;
			3'b100 : Y = 4'b0001;
			3'b101 : Y = 4'b0010;
			3'b110 : Y = 4'b0100;
			3'b111 : Y = 4'b1000;
		endcase
	 end


endmodule
