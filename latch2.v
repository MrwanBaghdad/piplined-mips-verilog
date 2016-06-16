module latch2(clk,clr,rd1i,rd2i,rd1o,rd2o,rsd,rtd,rdd,rse,rte,rde,signimmin,signimmout);
input clk,clr;
input [31:0] rd1i,rd2i,rsd,rtd,rdd,signimmin;
output [31:0] rd1o,r2do,rse,rte,rde,signimmout;

always @(posedge clk ) begin
	if (clr) begin
		// reset
		rd1o<=0;
		r2do<=0;
		rse<=0;
		rte<=0;
		rde<=0;
		signimmout<=0;
	end
	else begin
		rd1o<=rd1i;
		r2do<=rd2i;
		rse<=rsd;
		rte<=rtd;
		rde<=rdd;
		signimmout<=0;	
	end
end