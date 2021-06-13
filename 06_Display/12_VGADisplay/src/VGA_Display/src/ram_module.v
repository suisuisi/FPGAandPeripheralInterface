module ram_module
(
    input CLK,
	 input RSTn,
    input Write_En_Sig,
	 input [3:0]Write_Addr_Sig,
	 input [15:0]Write_Data,
	 input [3:0]Read_Addr_Sig,
	 output [15:0]Read_Data
	 
);

    /*************************/
	 
	 (* ramstyle = "no_rw_check , m9k" , ram_init_file = "ram_initial_file.mif" *) reg [15:0] RAM[15:0]; 
	 
	 /*************************/
	
	reg [15:0]rData;
	
	always @ ( posedge CLK or negedge RSTn )
	    if( !RSTn )
		     rData <= 16'd0;
		 else if( Write_En_Sig )
		     RAM[ Write_Addr_Sig ] <= Write_Data;
		 else 
		     rData <= RAM[ Read_Addr_Sig ];	 
	
	/*************************/
	
	 assign Read_Data = rData;
	 
	 /*************************/
	 
endmodule
