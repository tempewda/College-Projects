
;<Sum of 10 even natural numbers>

jmp start

;data
;sum = 2 + 4 + 6 + ... + 20


;code
start: 		mvi A,00H		;initialize sum
		mvi B,02H		;starting point
		mvi C,0AH		;counter

nextEven:	add B
		inr B
		inr B			;next even number
		dcr C			;update counter
		jnz nextEven

display:	sta 2000H


hlt