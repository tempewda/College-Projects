
;<Smaller of 2 numbers>

jmp start

;data
;numbers are loaded at 2000H and 2001H
;the code finds the smaller of the two,and stores it at 2002H


;code
start:  	lda 2001H
		mov B,A
		lda 2000H
		mov C,A		;initialize with A as smaller number

compare:	cmp B
		jc display	;if A<B, no changes required
		mov C,B

display:	mov A,C
		sta 2002H

hlt