module hazardUnit(stallF,StallD,branchD,forwardAD,
	forwardBD,RsD,RtD,FlushE,
	RsE,RtE,WriteRegE,MemtoRegE,
	RegWriteE,WriteRegM,RegWriteM,
	RegWriteM,WriteRegW,RegWriteW);

output stallF,StallD,forwardBD,forwardBD,FlushE;
input RegWriteM,RegWriteE,RegWriteW,branchD;

input [4:0] RsD,RtD;
