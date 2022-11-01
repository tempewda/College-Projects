
;<first 10 Fibonacci Series>

jmp start

;data
;B and C store the last two numbers in series
;D stores the current 


;code
start:  	lxi H,0FC50H		;H acts as memory pointer
		mvi A,00H
		mvi B,01H
		mvi C,01H
		mvi D,0AH		;D acts as counter

display:	mov M,A			;store the term in memory location
		dcr D			;decrement counter by 1
		jz halt
		inx H			;move to next bit 

fibonacci:	mov A,C
		add B			;add B and C's value
		mov E,A			;temporarily store sum
		mov A,B
		mov B,C
		mov C,E
		jmp display		;loop through

halt:		hlt