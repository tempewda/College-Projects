
;<check if sum greater than 10,returns 1 if true,0 otherwise>

;result,initialised to 2
mvi H,00H

;numbers to be added
mvi B,00H
mvi C,05H

;number,the sum should not exceed
mvi D,0AH

;inverse the number in D register
mvi A,00FFH
sub D
mov D,A

;add the 2 numbers
mov A,B
add C

;store the sum in E
mov E,A

;check if it exceeds 10
add D
jnc display
mvi H,01H

display: mov A,H
	 sta 0000H

hlt