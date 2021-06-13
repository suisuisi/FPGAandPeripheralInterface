//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-05-19 20:56:01
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-06-27 20:23:11
//# Description: 
//# @Modification History: 2019-05-19 20:57:52
//# Date			    By			   Version			   Change Description: 
//# ========================================================================= #
//# 2019-05-19 20:57:52
//# ========================================================================= #
//# |                                          								| #
//# |                                OpenFPGA     							| #
//****************************************************************************//
module lcd1602_basemod
(
    input CLOCK, RST_n,
	 //lcd1602 interface
	output 				LCD1602_RS,		//H: Data; L: Instruction code
	output				LCD1602_RW,		//H: Read; L: Write
	output  			LCD1602_EN,		//LCD1602 Chip enable signal
	output		[7:0]	LCD1602_D		//LCD1602 Data interface

	// input iCall,
	 //output oDone,
	 //input [5:0]iData

);

//****************************************************************************//
//   取模数据
//****************************************************************************//
//--------------------------------
//Driver of LCD1602
localparam	[127:0]	line_rom1 = "Hello World*^_^*";
localparam 	[127:0] line_rom2 = "I am CrazyBingo!";	

//***************************************************************************//
wire CallU1,DoneU2;
wire [7:0] oDATA; 
	 lcd1602_ctrlmod U1
	 (
	     .CLOCK( CLOCK ),
		  .RST_n( RST_n ),
		  .iCall( 1'b1 ),  // < top
		  .oDone(  ),    // > top
		  .line_rom1( line_rom1 ),    // > top
		  .line_rom2( line_rom2 ),  // > U2
		  .oCall(CallU1),
		  .iDone( DoneU2 ),    // < U2
		  .oDATA( oDATA )   // > U2

	 );

	 	 
	 lcd1602_funcmod U2
	 (
	     .CLOCK( CLOCK ),
		  .RST_n( RST_n ),
		  .LCD1602_RS( LCD1602_RS ),   // > top
		  .LCD1602_RW( LCD1602_RW ),         // > top
		  .LCD1602_EN( LCD1602_EN ),         // <> top
		  .LCD1602_D(LCD1602_D),
		  .iCall( CallU1 ),            // < U1
		  .oDone( DoneU2 ),              // > U1
		  .iDATA( oDATA )             // > U1

	 );

endmodule
