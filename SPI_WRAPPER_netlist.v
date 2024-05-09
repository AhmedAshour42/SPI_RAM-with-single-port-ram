// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Aug 15 21:12:02 2023
// Host        : pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force SPI_WRAPPER_netlist.v
// Design      : SPI_WRAPPER
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [0:36]sl_iport0_o;
  input [0:16]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    probe0,
    SL_IPORT_I,
    SL_OPORT_O,
    probe1,
    probe2,
    probe3,
    probe4);
  input clk;
  input [0:0]probe0;
  input [0:36]SL_IPORT_I;
  output [0:16]SL_OPORT_O;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;


endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_WRAPPER
   (clk,
    rst_n,
    MOSI,
    MISO,
    SS_n);
  input clk;
  input rst_n;
  input MOSI;
  output MISO;
  input SS_n;

  wire \<const1> ;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SPI_SLAVE_n_10;
  wire SPI_SLAVE_n_11;
  wire SPI_SLAVE_n_12;
  wire SPI_SLAVE_n_2;
  wire SPI_SLAVE_n_3;
  wire SPI_SLAVE_n_4;
  wire SPI_SLAVE_n_5;
  wire SPI_SLAVE_n_6;
  wire SPI_SLAVE_n_7;
  wire SPI_SLAVE_n_8;
  wire SPI_SLAVE_n_9;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [9:0]din;
  wire [7:0]dout;
  wire rst_n;
  wire rst_n_IBUF;
  wire rx_valid;
  wire rx_valid_ram;
  wire [0:36]sl_iport0_o_0;
  wire [0:16]sl_oport0_i_0;
  wire [7:0]tx_data;
  wire \tx_data[7]_i_3_n_0 ;
  wire \tx_data_reg[7]_i_2_n_0 ;
  wire tx_valid;
  wire tx_valid_spi;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  spi_RAM RAM
       (.CLK(clk_IBUF_BUFG),
        .D(dout),
        .Q(din),
        .rst_n(SPI_SLAVE_n_2),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid_ram(rx_valid_ram),
        .\tx_data_reg[7]_i_2 (\tx_data_reg[7]_i_2_n_0 ),
        .tx_valid(tx_valid));
  spi_SLAVE_INTERFACE SPI_SLAVE
       (.CLK(clk_IBUF_BUFG),
        .D({SPI_SLAVE_n_3,SPI_SLAVE_n_4,SPI_SLAVE_n_5,SPI_SLAVE_n_6,SPI_SLAVE_n_7,SPI_SLAVE_n_8,SPI_SLAVE_n_9,SPI_SLAVE_n_10,SPI_SLAVE_n_11,SPI_SLAVE_n_12}),
        .\FSM_sequential_cs_reg[2]_0 (SPI_SLAVE_n_2),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(tx_data),
        .SS_n_IBUF(SS_n_IBUF),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid(rx_valid),
        .tx_valid_spi(tx_valid_spi));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* CORE_GENERATION_INFO = "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(clk_IBUF_BUFG),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_12),
        .Q(din[0]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_11),
        .Q(din[1]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_10),
        .Q(din[2]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_9),
        .Q(din[3]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_8),
        .Q(din[4]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_7),
        .Q(din[5]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_6),
        .Q(din[6]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_5),
        .Q(din[7]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_4),
        .Q(din[8]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \din_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_SLAVE_n_3),
        .Q(din[9]),
        .R(SPI_SLAVE_n_2));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    rx_valid_ram_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_valid),
        .Q(rx_valid_ram),
        .R(SPI_SLAVE_n_2));
  LUT3 #(
    .INIT(8'hF8)) 
    \tx_data[7]_i_3 
       (.I0(din[9]),
        .I1(din[8]),
        .I2(\tx_data_reg[7]_i_2_n_0 ),
        .O(\tx_data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(dout[0]),
        .Q(tx_data[0]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(dout[1]),
        .Q(tx_data[1]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(dout[2]),
        .Q(tx_data[2]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(dout[3]),
        .Q(tx_data[3]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(dout[4]),
        .Q(tx_data[4]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(dout[5]),
        .Q(tx_data[5]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(dout[6]),
        .Q(tx_data[6]),
        .R(SPI_SLAVE_n_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(dout[7]),
        .Q(tx_data[7]),
        .R(SPI_SLAVE_n_2));
  FDCE #(
    .INIT(1'b0)) 
    \tx_data_reg[7]_i_2 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(SPI_SLAVE_n_2),
        .D(\tx_data[7]_i_3_n_0 ),
        .Q(\tx_data_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    tx_valid_spi_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_valid),
        .Q(tx_valid_spi),
        .R(SPI_SLAVE_n_2));
  (* CORE_GENERATION_INFO = "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=1,C_ADV_TRIGGER=false,C_DATA_DEPTH=1024,C_EN_STRG_QUAL=false,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=5,C_PROBE0_TYPE=2,C_PROBE0_WIDTH=1,C_PROBE1_TYPE=1,C_PROBE1_WIDTH=1,C_PROBE2_TYPE=1,C_PROBE2_WIDTH=1,C_PROBE3_TYPE=1,C_PROBE3_WIDTH=1,C_PROBE4_TYPE=1,C_PROBE4_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}" *) 
  (* DEBUG_PORT_clk = "n:clk_IBUF_BUFG" *) 
  (* DEBUG_PORT_probe0 = "n:clk_IBUF" *) 
  (* DEBUG_PORT_probe1 = "n:MISO_OBUF" *) 
  (* DEBUG_PORT_probe2 = "n:MOSI_IBUF" *) 
  (* DEBUG_PORT_probe3 = "n:rst_n_IBUF" *) 
  (* DEBUG_PORT_probe4 = "n:SS_n_IBUF" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(clk_IBUF_BUFG),
        .probe0(clk_IBUF),
        .probe1(MISO_OBUF),
        .probe2(MOSI_IBUF),
        .probe3(rst_n_IBUF),
        .probe4(SS_n_IBUF));
endmodule

module spi_RAM
   (tx_valid,
    D,
    CLK,
    rx_valid_ram,
    rst_n,
    Q,
    \tx_data_reg[7]_i_2 ,
    rst_n_IBUF);
  output tx_valid;
  output [7:0]D;
  input CLK;
  input rx_valid_ram;
  input rst_n;
  input [9:0]Q;
  input \tx_data_reg[7]_i_2 ;
  input rst_n_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]D;
  wire [9:0]Q;
  wire [7:0]add_read;
  wire \add_read[7]_i_1_n_0 ;
  wire [7:0]add_write;
  wire \add_write[7]_i_1_n_0 ;
  wire mem_reg_i_1_n_0;
  wire mem_reg_i_2_n_0;
  wire mem_reg_n_24;
  wire mem_reg_n_25;
  wire mem_reg_n_26;
  wire mem_reg_n_27;
  wire mem_reg_n_28;
  wire mem_reg_n_29;
  wire mem_reg_n_30;
  wire mem_reg_n_31;
  wire rst_n;
  wire rst_n_IBUF;
  wire rx_valid_ram;
  wire \tx_data_reg[7]_i_2 ;
  wire tx_valid;
  wire tx_valid_i_1_n_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0080)) 
    \add_read[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(Q[9]),
        .I2(rx_valid_ram),
        .I3(Q[8]),
        .O(\add_read[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \add_read_reg[0] 
       (.C(CLK),
        .CE(\add_read[7]_i_1_n_0 ),
        .D(Q[0]),
        .Q(add_read[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_read_reg[1] 
       (.C(CLK),
        .CE(\add_read[7]_i_1_n_0 ),
        .D(Q[1]),
        .Q(add_read[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_read_reg[2] 
       (.C(CLK),
        .CE(\add_read[7]_i_1_n_0 ),
        .D(Q[2]),
        .Q(add_read[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_read_reg[3] 
       (.C(CLK),
        .CE(\add_read[7]_i_1_n_0 ),
        .D(Q[3]),
        .Q(add_read[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_read_reg[4] 
       (.C(CLK),
        .CE(\add_read[7]_i_1_n_0 ),
        .D(Q[4]),
        .Q(add_read[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_read_reg[5] 
       (.C(CLK),
        .CE(\add_read[7]_i_1_n_0 ),
        .D(Q[5]),
        .Q(add_read[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_read_reg[6] 
       (.C(CLK),
        .CE(\add_read[7]_i_1_n_0 ),
        .D(Q[6]),
        .Q(add_read[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_read_reg[7] 
       (.C(CLK),
        .CE(\add_read[7]_i_1_n_0 ),
        .D(Q[7]),
        .Q(add_read[7]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h0200)) 
    \add_write[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(rx_valid_ram),
        .O(\add_write[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \add_write_reg[0] 
       (.C(CLK),
        .CE(\add_write[7]_i_1_n_0 ),
        .D(Q[0]),
        .Q(add_write[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_write_reg[1] 
       (.C(CLK),
        .CE(\add_write[7]_i_1_n_0 ),
        .D(Q[1]),
        .Q(add_write[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_write_reg[2] 
       (.C(CLK),
        .CE(\add_write[7]_i_1_n_0 ),
        .D(Q[2]),
        .Q(add_write[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_write_reg[3] 
       (.C(CLK),
        .CE(\add_write[7]_i_1_n_0 ),
        .D(Q[3]),
        .Q(add_write[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_write_reg[4] 
       (.C(CLK),
        .CE(\add_write[7]_i_1_n_0 ),
        .D(Q[4]),
        .Q(add_write[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_write_reg[5] 
       (.C(CLK),
        .CE(\add_write[7]_i_1_n_0 ),
        .D(Q[5]),
        .Q(add_write[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_write_reg[6] 
       (.C(CLK),
        .CE(\add_write[7]_i_1_n_0 ),
        .D(Q[6]),
        .Q(add_write[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \add_write_reg[7] 
       (.C(CLK),
        .CE(\add_write[7]_i_1_n_0 ),
        .D(Q[7]),
        .Q(add_write[7]),
        .R(\<const0> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,add_write,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,add_read,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO({mem_reg_n_24,mem_reg_n_25,mem_reg_n_26,mem_reg_n_27,mem_reg_n_28,mem_reg_n_29,mem_reg_n_30,mem_reg_n_31}),
        .ENARDEN(rx_valid_ram),
        .ENBWREN(mem_reg_i_1_n_0),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({mem_reg_i_2_n_0,mem_reg_i_2_n_0}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT3 #(
    .INIT(8'h8F)) 
    mem_reg_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(rst_n_IBUF),
        .O(mem_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_2
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(mem_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data[0]_i_1 
       (.I0(mem_reg_n_31),
        .I1(\tx_data_reg[7]_i_2 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data[1]_i_1 
       (.I0(mem_reg_n_30),
        .I1(\tx_data_reg[7]_i_2 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data[2]_i_1 
       (.I0(mem_reg_n_29),
        .I1(\tx_data_reg[7]_i_2 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data[3]_i_1 
       (.I0(mem_reg_n_28),
        .I1(\tx_data_reg[7]_i_2 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data[4]_i_1 
       (.I0(mem_reg_n_27),
        .I1(\tx_data_reg[7]_i_2 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data[5]_i_1 
       (.I0(mem_reg_n_26),
        .I1(\tx_data_reg[7]_i_2 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data[6]_i_1 
       (.I0(mem_reg_n_25),
        .I1(\tx_data_reg[7]_i_2 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_data[7]_i_1 
       (.I0(mem_reg_n_24),
        .I1(\tx_data_reg[7]_i_2 ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hD5C0)) 
    tx_valid_i_1
       (.I0(rx_valid_ram),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(tx_valid),
        .O(tx_valid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_n),
        .D(tx_valid_i_1_n_0),
        .Q(tx_valid));
endmodule

module spi_SLAVE_INTERFACE
   (MISO_OBUF,
    rx_valid,
    \FSM_sequential_cs_reg[2]_0 ,
    D,
    CLK,
    rst_n_IBUF,
    MOSI_IBUF,
    SS_n_IBUF,
    Q,
    tx_valid_spi);
  output MISO_OBUF;
  output rx_valid;
  output \FSM_sequential_cs_reg[2]_0 ;
  output [9:0]D;
  input CLK;
  input rst_n_IBUF;
  input MOSI_IBUF;
  input SS_n_IBUF;
  input [7:0]Q;
  input tx_valid_spi;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [9:0]D;
  wire \FSM_sequential_cs_reg[2]_0 ;
  wire MISO_OBUF;
  wire MISO_i_10_n_0;
  wire MISO_i_11_n_0;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_i_5_n_0;
  wire MISO_i_6_n_0;
  wire MISO_i_7_n_0;
  wire MISO_i_8_n_0;
  wire MISO_i_9_n_0;
  wire MOSI_IBUF;
  wire [7:0]Q;
  wire SS_n_IBUF;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire [2:0]ns;
  wire recieved_add_i_1_n_0;
  wire recieved_add_reg_n_0;
  wire rst_n_IBUF;
  wire [9:9]rx_data0_in;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[0]_i_2_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[1]_i_2_n_0 ;
  wire \rx_data[1]_i_3_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[5]_i_2_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[6]_i_2_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data[7]_i_4_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[8]_i_2_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire tx_valid_spi;

  LUT6 #(
    .INIT(64'h0000000000F0004F)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(recieved_add_reg_n_0),
        .I1(MOSI_IBUF),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(SS_n_IBUF),
        .O(ns[0]));
  LUT5 #(
    .INIT(32'h00000F08)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(cs[0]),
        .I1(MOSI_IBUF),
        .I2(SS_n_IBUF),
        .I3(cs[1]),
        .I4(cs[2]),
        .O(ns[1]));
  LUT5 #(
    .INIT(32'h00FF0002)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(MOSI_IBUF),
        .I3(SS_n_IBUF),
        .I4(cs[2]),
        .O(ns[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cs[2]_i_2 
       (.I0(rst_n_IBUF),
        .O(\FSM_sequential_cs_reg[2]_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:100,READ_ADD:011,READ_DATA:010,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\FSM_sequential_cs_reg[2]_0 ),
        .D(ns[0]),
        .Q(cs[0]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:100,READ_ADD:011,READ_DATA:010,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\FSM_sequential_cs_reg[2]_0 ),
        .D(ns[1]),
        .Q(cs[1]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:100,READ_ADD:011,READ_DATA:010,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\FSM_sequential_cs_reg[2]_0 ),
        .D(ns[2]),
        .Q(cs[2]));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000600)) 
    MISO_i_1
       (.I0(\counter_reg_n_0_[3] ),
        .I1(MISO_i_3_n_0),
        .I2(\counter_reg_n_0_[4] ),
        .I3(MISO_i_4_n_0),
        .I4(cs[0]),
        .I5(MISO_i_5_n_0),
        .O(MISO_i_1_n_0));
  LUT6 #(
    .INIT(64'h8C88888888888888)) 
    MISO_i_10
       (.I0(MISO_i_11_n_0),
        .I1(MISO_i_8_n_0),
        .I2(\counter_reg_n_0_[2] ),
        .I3(Q[6]),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[0] ),
        .O(MISO_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h44400040)) 
    MISO_i_11
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[5]),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q[4]),
        .O(MISO_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF00F400)) 
    MISO_i_2
       (.I0(MISO_i_6_n_0),
        .I1(Q[2]),
        .I2(MISO_i_7_n_0),
        .I3(MISO_i_8_n_0),
        .I4(MISO_i_9_n_0),
        .I5(MISO_i_10_n_0),
        .O(MISO_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    MISO_i_3
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .O(MISO_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    MISO_i_4
       (.I0(tx_valid_spi),
        .I1(cs[2]),
        .O(MISO_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MISO_i_5
       (.I0(cs[1]),
        .I1(cs[2]),
        .O(MISO_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    MISO_i_6
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(MISO_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00E20000)) 
    MISO_i_7
       (.I0(Q[7]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[3]),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[1] ),
        .O(MISO_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    MISO_i_8
       (.I0(cs[1]),
        .I1(cs[2]),
        .O(MISO_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    MISO_i_9
       (.I0(Q[1]),
        .I1(\counter_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[1] ),
        .O(MISO_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h0026)) 
    \counter[0]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00343400)) 
    \counter[1]_i_1 
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[1] ),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0034343434000000)) 
    \counter[2]_i_1 
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[0] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \counter[3]_i_1 
       (.I0(\counter[4]_i_4_n_0 ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[3] ),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11131115)) 
    \counter[4]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(cs[0]),
        .I5(\counter[4]_i_3_n_0 ),
        .O(counter));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \counter[4]_i_2 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter[4]_i_4_n_0 ),
        .I5(\counter_reg_n_0_[4] ),
        .O(\counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000004FF00000445)) 
    \counter[4]_i_3 
       (.I0(cs[2]),
        .I1(tx_valid_spi),
        .I2(\counter_reg_n_0_[3] ),
        .I3(MISO_i_3_n_0),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\rx_data[1]_i_3_n_0 ),
        .O(\counter[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h34)) 
    \counter[4]_i_4 
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .O(\counter[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[3]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[4]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hFFCF0080)) 
    recieved_add_i_1
       (.I0(\rx_data[0]_i_2_n_0 ),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(recieved_add_reg_n_0),
        .O(recieved_add_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    recieved_add_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(recieved_add_i_1_n_0),
        .Q(recieved_add_reg_n_0),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFBFEF0000802000)) 
    \rx_data[0]_i_1 
       (.I0(MOSI_IBUF),
        .I1(cs[0]),
        .I2(\rx_data[0]_i_2_n_0 ),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(D[0]),
        .O(\rx_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \rx_data[0]_i_2 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(\rx_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \rx_data[1]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[1]_i_2_n_0 ),
        .I2(\rx_data[1]_i_3_n_0 ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(MISO_i_5_n_0),
        .I5(D[1]),
        .O(\rx_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \rx_data[1]_i_2 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\rx_data[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \rx_data[1]_i_3 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(cs[1]),
        .O(\rx_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFAA202020AA)) 
    \rx_data[2]_i_1 
       (.I0(rx_data0_in),
        .I1(MISO_i_6_n_0),
        .I2(\rx_data[7]_i_3_n_0 ),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(D[2]),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \rx_data[3]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[7]_i_4_n_0 ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(MISO_i_5_n_0),
        .I5(D[3]),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \rx_data[4]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[5]_i_2_n_0 ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(MISO_i_5_n_0),
        .I5(D[4]),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \rx_data[5]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[5]_i_2_n_0 ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(MISO_i_5_n_0),
        .I5(D[5]),
        .O(\rx_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[5]_i_2 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\rx_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \rx_data[6]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[6]_i_2_n_0 ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(MISO_i_5_n_0),
        .I5(D[6]),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rx_data[6]_i_2 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\rx_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \rx_data[7]_i_1 
       (.I0(rx_data0_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\rx_data[7]_i_4_n_0 ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(MISO_i_5_n_0),
        .I5(D[7]),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2600)) 
    \rx_data[7]_i_2 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(MOSI_IBUF),
        .O(rx_data0_in));
  LUT5 #(
    .INIT(32'h00011101)) 
    \rx_data[7]_i_3 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(cs[2]),
        .O(\rx_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_data[7]_i_4 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(\rx_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFEF0000A02000)) 
    \rx_data[8]_i_1 
       (.I0(MOSI_IBUF),
        .I1(cs[0]),
        .I2(\rx_data[8]_i_2_n_0 ),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(D[8]),
        .O(\rx_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \rx_data[8]_i_2 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[3] ),
        .O(\rx_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFEF0000A02000)) 
    \rx_data[9]_i_1 
       (.I0(MOSI_IBUF),
        .I1(cs[0]),
        .I2(\rx_data[9]_i_2_n_0 ),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(D[9]),
        .O(\rx_data[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rx_data[9]_i_2 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[3] ),
        .O(\rx_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(D[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hFFF00840)) 
    rx_valid_i_1
       (.I0(cs[0]),
        .I1(\rx_data[0]_i_2_n_0 ),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(rx_valid),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\<const0> ));
endmodule
