
;<Largest of 10 numbers>

jmp start

;logic
;sequentially check each number and compare 
;the answer is stored at 205BH


;code
start: 		lxi H,2050H	;H acts as memory pointer for bytes
		mvi C,0AH	;C acts as counter

large:		mov A,M		;A stores the largest number

compare:	dcr C		;decrement counter by 1
		jz display	;end of loop
		inx H		;point to next byte
		cmp M
		jc large	;new largest number found
		jmp compare	;loop through
		
display:	sta 205BH 

hlt