
;<Linear Search>

jmp start

;data
;data stored at 2000H through 2006H
;search element entered at 2007H
;result shown at 2008H
;if found, show the number, else 0


;code
start: 		lxi H,2000H
		mvi C,07H		;counter
		mvi D,00H		;result
		lda 2007H
		mov B,A			;search element

search:		mov A,M
		cmp B
		jz display
		dcr C
		jz notfound
		inx H			;next byte
		jmp search		;loop through

notfound:	mvi A,00H
	
display:	sta 2008H
		
hlt