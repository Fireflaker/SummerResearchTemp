module mux_8 #(parameter bw =4)(
 input logic [(bw*8-1):0] in, [2:0] sw,            //8 bit in, and 3 bit switch in
 output logic [bw-1:0] out                         //4-1+1 = 4 bit out
 );
 always_comb
 begin
 case(sw)
 3'd0: out=in[(bw-1):0];
 3'd1: out=in[(2*bw-1):bw];
 3'd2: out=in[(3*bw-1):2*bw];
 3'd3: out=in[(4*bw-1):3*bw];
 3'd4: out=in[(5*bw-1):4*bw];
 3'd5: out=in[(6*bw-1):5*bw];
 3'd6: out=in[(7*bw-1):6*bw];
 3'd7: out=in[(8*bw-1):7*bw];
 default: out=0;
 endcase
 end
endmodule