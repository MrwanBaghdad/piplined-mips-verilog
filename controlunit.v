module controlunit (
	op,
	func,
	pcWrite,
	branch,
	pcSrc,
	aluCtrl,
	aluSrcA,
	aluSrcB,
	regWrite,
	iorD,
	memWrite,
	irWrite,
	bne,
	sb,
	lb,
	jal,
	jr
	);

input [31:26] op;
input [5:0] func;
input clk;
output pcWrite,branch,pcSrc,regWrite,aluSrcA,iorD,memWrite,irWrite,jump;
output [2:0] aluCtrl;
output [1:0] aluSrcB;

case op
3'b000:
	if()
end case

end case;

end module;
