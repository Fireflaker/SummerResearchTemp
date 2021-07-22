set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {in[0]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {in[1]}]
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports {in[2]}]
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports {in[3]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {in[4]}]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {in[5]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {in[6]}]
set_property -dict {PACKAGE_PIN R13 IOSTANDARD LVCMOS33} [get_ports {in[7]}]
set_property -dict {PACKAGE_PIN T8 IOSTANDARD LVCMOS33} [get_ports {in[8]}]
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {in[9]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {in[10]}]
set_property -dict {PACKAGE_PIN T13 IOSTANDARD LVCMOS33} [get_ports {in[11]}]
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS33} [get_ports {in[12]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {in[13]}]
set_property -dict {PACKAGE_PIN U11 IOSTANDARD LVCMOS33} [get_ports {in[14]}]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {in[15]}]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports rst]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {segs_l[6]}]
set_property -dict {PACKAGE_PIN R10 IOSTANDARD LVCMOS33} [get_ports {segs_l[5]}]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports {segs_l[4]}]
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33} [get_ports {segs_l[3]}]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports {segs_l[2]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {segs_l[1]}]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports {segs_l[0]}]

set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports {an_l[0]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {an_l[1]}]
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports {an_l[2]}]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {an_l[3]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {an_l[4]}]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {an_l[5]}]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports {an_l[6]}]
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {an_l[7]}]

### LEDs
###Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
#set_property PACKAGE_PIN T8 [get_ports {an_l[0]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an_l[0]}]
##Bank = 34, Pin name = IO_L21N_T3_DQS_34,					Sch name = LED1
#set_property PACKAGE_PIN V9 [get_ports {an_l[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an_l[1]}]
##Bank = 34, Pin name = IO_L24P_T3_34,						Sch name = LED2
#set_property PACKAGE_PIN R8 [get_ports {an_l[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an_l[2]}]
##Bank = 34, Pin name = IO_L23N_T3_34,						Sch name = LED3
#set_property PACKAGE_PIN T6 [get_ports {an_l[3]]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an_l[3]]
##Bank = 34, Pin name = IO_L12P_T1_MRCC_34,					Sch name = LED4
#set_property PACKAGE_PIN T5 [get_ports {an_l[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an_l[4]}]
##Bank = 34, Pin name = IO_L12N_T1_MRCC_34,					Sch	name = LED5
#set_property PACKAGE_PIN T4 [get_ports {an_l[5}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an_l[5]}]
##Bank = 34, Pin name = IO_L22P_T3_34,						Sch name = LED6
#set_property PACKAGE_PIN U7 [get_ports {an_l[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an_l[6]}]
##Bank = 34, Pin name = IO_L22N_T3_34,						Sch name = LED7
#set_property PACKAGE_PIN U6 [get_ports {an_l[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an_l[7]}]







set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {Scrambler/out_of_ringosc_to_go_into_scrambler[*]}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Scrambler/*]
