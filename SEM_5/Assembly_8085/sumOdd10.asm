
;<Sum of 10 odd natural numbers>

jmp start

;data
;sum = 1 + 3 + 5 + ... + 19


;code
start: 		mvi A,00H		;initialize sum
		mvi B,01H		;starting point
		mvi C,0AH		;counter

nextOdd:	add B
		inr B
		inr B			;next odd number
		dcr C			;update counter
		jnz nextOdd

display:	sta 2000H


hlt