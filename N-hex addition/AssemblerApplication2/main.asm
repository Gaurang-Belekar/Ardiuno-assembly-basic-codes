;
; AssemblerApplication2.asm
;
; Created: 11/16/2021 11:28:54 AM
; Author : Dell
;


; Replace with your application code
.def	num1L = r16	; define lower byte of number 1 as r16
	.def	num1H = r17	; define upper byte of number 1 as r17
	.def	num2L = r18	; define lower byte of number 2 as r18
	.def	num2H = r19	; define upper byte of number 2 as r19
	.def    count = r20 ;counter
	.cseg
	.org	0x00
	ldi count,0x0A
	ldi	num1L,0X00	
	ldi	num1H,0x00	

	ldi	num2L,0x01	
	ldi	num2H,0x00	

	sum: add	num1L,num2L	; add lower bytes of number
	     adc	num1H,num2H	; add upper bytes of number	
    dec count
	breq loop	
	inc num2L
adc num2H,r1

	rjmp sum

	loop:	rjmp	loop
