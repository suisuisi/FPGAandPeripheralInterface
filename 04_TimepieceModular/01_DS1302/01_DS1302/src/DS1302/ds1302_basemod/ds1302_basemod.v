//****************************************************************************//
//# @Author: 碎碎思
//# @Date:   2019-05-19 20:56:01
//# @Last Modified by:   zlk
//# @WeChat Official Account: OpenFPGA
//# @Last Modified time: 2019-05-19 21:06:16
//# Description: 
//# @Modification History: 2019-05-19 20:57:52
//# Date			    By			   Version			   Change Description: 
//# ========================================================================= #
//# 2019-05-19 20:57:52
//# ========================================================================= #
//# |                                          								| #
//# |                                OpenFPGA     							| #
//****************************************************************************//
module ds1302_basemod
(
    input CLOCK, RST_n,
	 output RTC_NRST, RTC_SCLK,
	 inout RTC_DATA,
	 input [7:0]iCall,
	 output oDone,
	 input [7:0]iData,
	 output [7:0]oData
);
    wire [7:0]AddrU1;
	 wire [7:0]DataU1;
	 wire [1:0]CallU1;
	 
	 ds1302_ctrlmod U1
	 (
	     .CLOCK( CLOCK ),
		  .RST_n( RST_n ),
		  .iCall( iCall ),  // < top
		  .oDone( oDone ),    // > top
		  .iData( iData ),    // > top
		  .oCall( CallU1 ),  // > U2
		  .iDone( DoneU2 ),    // < U2
		  .oAddr( AddrU1 ),    // > U2
		  .oData( DataU1 )     // > U2
	 );
	 
	 wire DoneU2;
	 
	 ds1302_funcmod U2
	 (
	     .CLOCK( CLOCK ),
		  .RST_n( RST_n ),
		  .RTC_NRST( RTC_NRST ),   // > top
		  .RTC_SCLK( RTC_SCLK ),         // > top
		  .RTC_DATA( RTC_DATA ),         // <> top
		  .iCall( CallU1 ),            // < U1
		  .oDone( DoneU2 ),              // > U1
		  .iAddr( AddrU1 ),              // > U1
		  .iData( DataU1 ),              // > U1
		  .oData( oData )                // > top
	 );

endmodule
