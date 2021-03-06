// megafunction wizard: %SignalTap II Logic Analyzer%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: sld_signaltap 

// ============================================================
// File Name: SIGN.v
// Megafunction Name(s):
// 			sld_signaltap
//
// Simulation Library Files(s):
// 			
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 17.0.0 Build 595 04/25/2017 SJ Standard Edition
// ************************************************************

//Copyright (C) 2017  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Intel and sold by Intel or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.

module SIGN (
	acq_clk,
	acq_data_in,
	acq_trigger_in);

	input	  acq_clk;
	input	[7:0]  acq_data_in;
	input	[0:0]  acq_trigger_in;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: DATA_WIDTH_SPIN STRING ""
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: PRIVATE: RAM_TYPE_COMBO STRING "Auto"
// Retrieval info: PRIVATE: SAMPLE_DEPTH_COMBO STRING "512"
// Retrieval info: PRIVATE: SLD_TRIGGER_OUT_ENABLED NUMERIC "0"
// Retrieval info: PRIVATE: TRIGGER_LEVELS_COMBO STRING "1"
// Retrieval info: PRIVATE: TRIGGER_WIDTH_SPIN STRING ""
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: SLD_ADVANCED_TRIGGER_ENTITY STRING "basic,1,"
// Retrieval info: CONSTANT: SLD_DATA_BITS NUMERIC "8"
// Retrieval info: CONSTANT: SLD_DATA_BIT_CNTR_BITS NUMERIC "4"
// Retrieval info: CONSTANT: SLD_ENABLE_ADVANCED_TRIGGER NUMERIC "0"
// Retrieval info: CONSTANT: SLD_MEM_ADDRESS_BITS NUMERIC "9"
// Retrieval info: CONSTANT: SLD_NODE_CRC_BITS NUMERIC "32"
// Retrieval info: CONSTANT: SLD_NODE_CRC_HIWORD NUMERIC "2074"
// Retrieval info: CONSTANT: SLD_NODE_CRC_LOWORD NUMERIC "23989"
// Retrieval info: CONSTANT: SLD_NODE_INFO NUMERIC "1076736"
// Retrieval info: CONSTANT: SLD_RAM_BLOCK_TYPE STRING "AUTO"
// Retrieval info: CONSTANT: SLD_SAMPLE_DEPTH NUMERIC "512"
// Retrieval info: CONSTANT: SLD_STORAGE_QUALIFIER_GAP_RECORD NUMERIC "0"
// Retrieval info: CONSTANT: SLD_STORAGE_QUALIFIER_MODE STRING "OFF"
// Retrieval info: CONSTANT: SLD_TRIGGER_BITS NUMERIC "1"
// Retrieval info: CONSTANT: SLD_TRIGGER_IN_ENABLED NUMERIC "0"
// Retrieval info: CONSTANT: SLD_TRIGGER_LEVEL NUMERIC "1"
// Retrieval info: CONSTANT: SLD_TRIGGER_LEVEL_PIPELINE NUMERIC "1"
// Retrieval info: USED_PORT: acq_clk 0 0 0 0 INPUT NODEFVAL "acq_clk"
// Retrieval info: USED_PORT: acq_data_in 0 0 8 0 INPUT NODEFVAL "acq_data_in[7..0]"
// Retrieval info: USED_PORT: acq_trigger_in 0 0 1 0 INPUT NODEFVAL "acq_trigger_in[0..0]"
// Retrieval info: CONNECT: @acq_clk 0 0 0 0 acq_clk 0 0 0 0
// Retrieval info: CONNECT: @acq_data_in 0 0 8 0 acq_data_in 0 0 8 0
// Retrieval info: CONNECT: @acq_trigger_in 0 0 1 0 acq_trigger_in 0 0 1 0
// Retrieval info: GEN_FILE: TYPE_NORMAL SIGN.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL SIGN.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL SIGN.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL SIGN.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL SIGN_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL SIGN_bb.v TRUE
