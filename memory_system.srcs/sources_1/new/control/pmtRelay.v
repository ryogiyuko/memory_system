//-----------------------------------------------
//	module name: pmtRelay
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2023-06-15)
//-----------------------------------------------
`timescale 1ns / 1ps

module pmtRelay(
inR, inA, outR, outA, pmt, fire ); 
input inR;
output inA;
output outR;
input outA;
input pmt;
output fire;

wire fire;
wire tmp;
wire request;
wire empty;
wire state;
wire extern_state;
wire clock;
wire inR_delayed;
wire outA_delayed;

(* dont_touch="true" *)LUT2 #(.INIT(4'b0110)) neq2_request_in 
(
   .O(request),  
   .I0(inR_delayed), 
   .I1(inA)  
);

(* dont_touch="true" *)LUT2 #(.INIT(4'b1001)) eq2_empty_out 
(
   .O(empty),  
   .I0(outA_delayed), 
   .I1(outR)  
);

(* dont_touch="true" *)LUT2 #(.INIT(4'b1000)) and2_clock (
   .O(clock),   
   .I0(request), 
   .I1(empty) 
);

(* dont_touch="true" *)LUT2 #(.INIT(4'b1000)) and2_fire (
   .O(fire),   
   .I0(pmt), 
   .I1(clock) 
);

(* dont_touch="true" *)LUT1 #(.INIT(2'b01)) tmp_inv 
(
   .O(tmp),   
   .I0(state)  
);

(* dont_touch="true" *)FDPE #(.INIT(1'b0)) ff_state (
      .Q(state),      // 1-bit Data output
      .C(fire),      // 1-bit Clock input
      .CE(1'b1),    // 1-bit Clock enable input
      .PRE(1'b0),  // 1-bit Asynchronous preset input
      .D(tmp)       // 1-bit Data input
   );

(* dont_touch="true" *)LUT1 #(.INIT(2'b10)) in_R_delay 
( 
   .O(inR_delayed),   
   .I0(inR)  	
);

(* dont_touch="true" *)LUT1 #(.INIT(2'b10)) out_A_delay 
( 
   .O(outA_delayed),   
   .I0(outA)  	
);

(* dont_touch="true" *)LUT1 #(.INIT(2'b10)) fall_delay 
( 
   .O(extern_state),   
   .I0(state)  	
);

assign inA = extern_state;
assign outR = extern_state;
//assign fire = clock;

endmodule