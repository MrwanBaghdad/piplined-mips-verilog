'include latch1.v'
'include latch2.v'
'include latch3.v'
'include latch4.v'
'include hazardUnit.v'
'include alu.v'
'include memory.v'
'include mux2.v'
'include mux3.v'
'include  mux4.v'
'include registerFile.v'
'include instructionMemory.v'
'include clock.v'
'include clock2.v'

module top();

latch1 FD();
latch2 DE();
latch3 EM();
latch4 MW();
wire clk;
//wire between F D latch
wire [31:0] pcout,pcf,instf,instd,pcplus4f,pcplus4d,pcbranchd;
//wires between DE latch
wire [4:0] rsd,rtd,rdd,shiftAmount,rst,rte,rde;

//registerFile output
wire [31:0] rd1d,rd2d,rd1e,rd2e;

//shamt d and e
wire[4:0] shmtD,shmtE;


//control unit signals
wire logic regwriteD,memtoRegD,memwriteD,alucontrolD,alusrcD,regdstD,branchD,
jal,sb,lb,jr,bne,regdstE;

//wires after latch DE

wire [15:0] signImmE,signImmD;
wire [31:0] Wd3;
wire loigc we3;
wire logic memwriteE;


wire logic stallF,stallD,branchD,ForwardAd,ForwardBD,flushE,
memtoRegE,regWriteE,regwriteM,regiWriteW,memtoRegW;
wire [3:0] alucontrolE;
wire logic alusrcE;
wire [1:0] forwardAE,forwardBE;


wire [31:0] srcAE,srcEE,aluoutE,alutoutM,aluoutW,writeDataE,writeDataM,
readdataW,resultW;
wire [4:0] writeRegE,writeRegM,writeRegW;
FD(clk,stall)
end module;


//init modules

//logic between fd de

instructionMemory instruction_Memory(pcf,instf);
adder adder1(pcf,'b0100,pcplus4f);

clock flipflop(clk,pc,pcf);
wire logic pcsrcD;
FD(clk,pcsrcD,!stallD,instf,pcplus4f,instd,pcplus4f);
DE(clk,flushE,rd1d,rd2d,rd1e,rd2e,rsd,rtd,rdd,rse,rte,rde,signimmD,signimmE);
wire logic memtoRegM,memwriteM;

EM(clk,regWriteE,memtoRegE,memwriteE,alucontrolE,aluoutE,writeDataE,writeRegE,
	regwriteM,memtoRegM,memwriteM,aluoutM,writeDataM,writeRegM);

MW(clk,regwriteM,memtoRegM,readdataM,writeDataM,aluoutM,writeRegM,regiWriteW,memtoRegW,readdataW,aluoutW,writeRegW);
wire [31:0] rd1d_before,rd2d_before;
registerFile regFile(clk,pcsrcD,instD[25:21],instd[20:18],rd1d_before,rd2d_before,Wd3,resultW);


instruction_Memory(pc,pcf);

if(pcbranchd)
	pc<=pcbranchd;
else if(jal)
	begin
	pc<={{pcplus4d[31:29]}instd[25:0]*4};
	//sequential logic
	stallD=1;
	stallD=0;	
	end
else if(jr)
	begin
		pc<=rd1d;
		stallD<=1;
	end
else begin
	pc<=pcplus4F;
end