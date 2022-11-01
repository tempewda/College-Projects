
;<Multiply two 8-bit numbers>

jmp start

;data
;the numbers are stored at 2000H(B) and 2001H(C)
;product is stored at 2002H
;logic: multiplication = continuous addition
;B times C = B added C times


;code
start: 		lda 2001H
		mov C,A		;C will act as counter
		lda 2000H
		mov B,A

multiply:	dcr C		;decrement counter
		jz display	;if counter is zero,display at 2002H
		add B
		jmp multiply

display:	sta 2002H

hlt