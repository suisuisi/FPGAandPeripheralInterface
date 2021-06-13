module init_module (
	input CLOCK,
//	input RST_n,
	
	input initial_start,
	output oDone,
	 output OLED_SCL,
	 inout OLED_SDA
	
);

	wire [7:0]AddrU1;
	wire [7:0]DataU1;
	wire [1:0]CallU1;
	wire DoneU2;
	wire oData;

wire clk_1m;
wire sys_rst_n;
assign sys_rst_n = RST_n;
PLL u_PLL(
		.inclk0(CLOCK),
		.c0(clk_1m),
		.locked(sys_rst_n)
		);	
	
initial_control u_init(
	     				.CLOCK( clk_1m ),
		 				.RST_n( RST_n ),
		  				.init_start_sig( initial_start ),  // < top
		  				.oDone( oDone ),    // > top
		  			
		  				.oCall( CallU1 ),  // > U2
		  				.iDone( DoneU2 ),    // < U2
		  				.oAddr( AddrU1 ),    // > U2
		  				.oData( DataU1 )     // > U2		
					);
					
iic u_iic
	 (
	     .CLOCK( CLOCK ),
		  .RST_n( RST_n ),
		  .SCL( OLED_SCL ),   // > top
		  .SDA( OLED_SDA ),         // <> top
		  .iCall( CallU1 ),            // < U1
		  .oDone( DoneU2 ),              // > U1
		  .iAddr( AddrU1 ),              // > U1
		  .iData( DataU1 ),              // > U1
		  .oData( oData )                // > top
	 );
endmodule

