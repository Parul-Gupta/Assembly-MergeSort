.text
	mov r0, .array
	mov r1,0
	mov r2,
	call .m_sort
	.merge: 
		
       .m_sort:
       		cmp r1,r2
       		beq .return
       		add r3,r1,r2
       		lsr r3,r3,1
       		sub SP,SP,16
       		st r1,0[SP]
       		st r2,4[SP]
       		st r3,8[SP]
       		st r15,12[SP]
       		mov r2,r3
       		call .m_sort
       		ld r1,0[SP]
       		ld r2,4[SP]
       		ld r3,8[SP]
       		ld r15,12[SP]
       		//add SP,SP,16
       		//sub SP,SP,16
       		//st r1,0[SP]
       		//st r2,4[SP]
       		//st r3,8[SP]
       		//st r15,12[SP]
       		add r3,r3,1
       		mov r1,r3
       		call .m_sort
		ld r1,0[SP]
       		ld r2,4[SP]
       		ld r3,8[SP]
       		ld r15,12[SP]
       		add SP,SP,16
       		call .merge
       	.return:
       		ret
.end
.data
	.array:
	1
	9
	6
	5
	8
	3
	2
	7
	4
	10
