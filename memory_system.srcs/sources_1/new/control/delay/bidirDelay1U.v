//-----------------------------------------------
//	module name: bidirDelay1U
//	author: Anping HE (heap@lzu.edu.cn)
//	modify author: 
//		Tong FU (fut21@lzu.edu.cn)
//		Xiabao WAN (wanbx21@lzu.edu.cn)
//		Mingshu CHEN (chenmsh18@lzu.edu.cn)	
//	version: 1st version (2021-11-05)
//	Last Modified: 2021-11-16	
//	description: 
//		1. bidirected delay, e.g., equal delays
//		for both req from left to right and
//		ack from right to left
//		2. 1U for 1 delay unit
//		3. tech: umc40
//-----------------------------------------------

`timescale 1ns / 1ps

module bidirDelay1U(inR, inA, outR, outA, rst_n);
	
	input	inR, outA, rst_n;
	output	outR, inA;
	relay trunkFifo1(
            .inR(inR), 
            .inA(inA), 
            .outR(outR), 
            .outA(outA), 
            .fire());
endmodule
