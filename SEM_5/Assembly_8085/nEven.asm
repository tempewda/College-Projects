
;<store n even numbers starting from 8080 and als store sum>

jmp start

;data
;B -> A -> H
;B += 2
;H++
;A = A + D
;A -> D
;C--


;code
start: 		lxi H,8080
	     	mvi B,00H   	;even number
	     	mvi C,0AH	;n
		mvi D,00H	;sum
  
loop:	 	mov A,B		;store number in memory
		mov M,A
		inx H		;next memory
	    	inr B		;next even number		
	    	inr B
	    	add D		;sum
	    	mov D,A
	    	dcr C		;counter
	    	jnz loop

stop:		mov M,A
	    	hlt
