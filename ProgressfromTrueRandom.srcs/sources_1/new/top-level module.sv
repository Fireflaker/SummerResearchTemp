`timescale 1ns / 1ps
module sevenseg_control(
 input logic clk,rst,
 input logic [15:0] in,
 output logic [7:0] an_l,
 output logic [6:0] segs_l
 );
 logic[31:0] constants;
// assign constants[3:0] = 5;
// assign constants[7:4]=4;
// assign constants[11:8]=1;
// assign constants[15:12]=1;


//assign constants [15:0] = randbits;
//RandBitsOsc RBO (.randbits(constants));

logic [31:0] out_of_ringosc_to_go_into_scrambler;

ring_oscillator #(.WIDTH(32)) RingOsc (.state(out_of_ringosc_to_go_into_scrambler));
lhca #(.WIDTH(32)) Scrambler (.clk(sclk),.source(out_of_ringosc_to_go_into_scrambler),.state(constants));


 logic sclk,CLOCK; logic [2:0] q, a, sw;
 logic [3:0] y;
 logic [7:0] an_1;
 clkdiv CLK_D (.clk(clk),.reset(1'b0),.sclk(sclk));
 assign CLOCK =sclk;
 count_3bit COUNT3 (.clk(CLOCK),.rst(rst),.q(q));
 assign sw =q;
 assign a=q;
 mux_8 #(.bw(4)) MUX8 (.in(constants),.sw(sw),.out(y));
 seven_seg SEG (.data(y),.segs_l(segs_l));
 dec_3_8 DEC (.a(a),.y(an_1));
 assign an_l=~an_1;
endmodule
