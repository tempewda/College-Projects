
;<Check Even/Odd>
;number is stored at location 2000H
;if number is even, '0' is stored at 2001H
;else '1' is stored at 2001H


start:  	lda 2000H
		mvi B,00H	;initialize remainder with 0

subtract:	sui 2		
		cpi 2		
		jc remainder	;if value less than 2,jump
		jmp subtract	;else keep subtracting

remainder:	cpi 1
		jc display	;remainder stays 0
		inr B
	
display:	mov A,B
		sta 2001H

hlt