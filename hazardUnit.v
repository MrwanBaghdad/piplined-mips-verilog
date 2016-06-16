module hazardUnit(stallF,StallD,branchD,forwardAD,
	forwardBD,forwardAE,forwardBE,RsD,RtD,FlushE,
	RsE,RtE,WriteRegE,MemtoRegE,
	RegWriteE,WriteRegM,RegWriteM,
	RegWriteM,WriteRegW,RegWriteW);

output stallF,StallD,forwardBD,forwardBD,FlushE,forwardBE,forwardAE;
input RegWriteM,RegWriteE,RegWriteW,
		branchD,MemtoRegE;

input [4:0] RsD,RtD;

if(RsE!=0 && RsE == WriteRegM && RegWriteM)
begin
	forwardAE<=2'b10 ;
end 
else if (RsE!=0 && RsE== WriteRegW && RegWriteW) begin
		forwardAE=01;
		end 
		else begin
		forwardAE=2'b00;
	end
	
end module
