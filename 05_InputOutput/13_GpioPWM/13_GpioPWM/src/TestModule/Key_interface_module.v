//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-06-05 21:05:29
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-09 19:24:06
//# Description: 
//# @Modification History: 2010-08-07 14:36:26
//# Date			    By			   Version			   Change Description: 
//# ========================================================================= #
//# 2010-08-07 14:36:26
//# ========================================================================= #
//# |                                          								| #
//# |                                OpenFPGA     							| #
//****************************************************************************//
module Key_interface_module
(
    CLOCK, RST_n, 
	KEY_IN,         
	KEY_OUT        			
);
	input CLOCK;
	input RST_n;
    input  [2:0] KEY_IN;
	output [2:0] KEY_OUT;


	/**************************/
	 
	wire [15:0]KEY_OUT;

	debounce_module  U1
	 (
	    .CLOCK( CLOCK ),
		.RST_n( RST_n ),
		.Pin_In( KEY_IN[0] ),   // input - from top
		.Pin_Out(KEY_OUT[0])   // output - to top
	 );

	 	debounce_module  U2
	 (
	    .CLOCK( CLOCK ),
		.RST_n( RST_n ),
		.Pin_In( KEY_IN[1] ),   // input - from top
		.Pin_Out(KEY_OUT[1])   // output - to top
	 );

	 	debounce_module  U3
	 (
	    .CLOCK( CLOCK ),
		.RST_n( RST_n ),
		.Pin_In( KEY_IN[2] ),   // input - from top
		.Pin_Out(KEY_OUT[2])   // output - to top
	 );

endmodule