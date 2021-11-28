;
; AssemblerApplication1.asm
;
; Created: 11/16/2021 10:37:14 AM
; Author : Dell
;


; Replace with your application code
.def	drem8u	=r15		;remainder
.def	dd8u	=r17		;dividend
.def	dv8u	=r18		;divisor
.def	dcnt8u	=r19		;loop counter

.cseg
.org 0x00

ldi dd8u,0x10
ldi dv8u,0x03

div8u:	sub	drem8u,drem8u	;clear remainder and carry
	ldi	dcnt8u,9	;init loop counter
d8u_1:	rol	dd8u		;shift left dividend
	dec	dcnt8u		;decrement counter
	brne	d8u_2		;if done
	ret			;    return
d8u_2:	rol	drem8u		;shift dividend into remainder
	sub	drem8u,dv8u	;remainder = remainder - divisor
	brcc	d8u_3		;if result negative
	add	drem8u,dv8u	;    restore remainder
	clc			;    clear carry to be shifted into result
	rjmp	d8u_1		;else
d8u_3:	sec			;    set carry to be shifted into result
	rjmp	d8u_1