
;<Sum of 5 8-bit numbers>

jmp start

;data
;numbers are stored at location 2000H thru 2004H
;sum gets stored in 2005H


;code
start: 		mvi A,04H		;initialize memory locations
		sta 2000H
		mvi A,07H
		sta 2001H
		mvi A,02H
		sta 2002H
		mvi A,09H
		sta 2003H
		mvi A,06H
		sta 2004H

		lxi H,2000H		;starting memory pointer
		mvi A,00H		;initialize sum
		mvi C,0AH		;counter

sum:		add M
		inx H			;next byte
		dcr C			;update counter
		jnz sum			;loop through

display:	sta 2005H

hlt