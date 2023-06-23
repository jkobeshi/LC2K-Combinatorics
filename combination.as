comb	lw		0	6	one
		sw		5	7	Stack	//return pointer
		add		5	6	5
		sw		5	1	Stack	//n
		add		5	6	5
		sw		5	2	Stack	//r
		add		5	6	5
		beq		2	0	ret1	/start if
		beq		1	2	ret1
		lw		0	6	neg1		
		add		1	6	1
		jalr	4	7
		sw		5	3	Stack
		lw		0	6	one
		add		5	6	5
		lw		0	6	neg1
		add		2	6	2
		jalr	4	7
		lw		0	6	neg1
		add		5	6	5
		lw		5	6	Stack
		add		6	3	3
		beq		0	0	afRet
ret1	add		0	6	3
afRet	lw		0	6	neg1
		add		5	6	5
		lw		5	2	Stack	//r
		add		5	6	5
		lw		5	1	Stack	//n
		add		5	6	5
		lw		5	7	Stack	//return pointer
		jalr	7	6
one		.fill	1
neg1	.fill	-1
Caddr	.fill	comb
