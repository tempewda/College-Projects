
;<Smallest of 10 numbers>

jmp start

;logic
;sequentially check each number and compare 
;the answer is stored at 205BH


;code
start: 		lxi H,2050H	;H acts as memory pointer for bytes
		mvi C,0AH	;c acts as counter

small:		mov A,M		;A stores the smallest number

compare:	dcr C		;decrement counter by 1
		jz display	;end of loop
		inx H		;point to next byte
		cmp M
		jc compare	;loop through
		jmp small	;new smallest number found
		
display:	sta 205BH 

hlt