;
; AssemblerApplication1.asm
;
; Created: 11/16/2021 10:14:11 AM
; Author : Dell
;


; Replace with your application code

	.include "m328pdef.inc"

	.def	num1L = r16	; define lower byte of number 1 as r16
	.def	num1H = r17	; define upper byte of number 1 as r17
	.def	num2L = r18	; define lower byte of number 2 as r18
	.def	num2H = r19	; define upper byte of number 2 as r19
	.def    ansH = r21
	.def    ansL = r22

	.cseg
	.org	0x00
	ldi	num1L,0xCD	; load 0xCD into r16
	ldi	num1H,0xAB	; load 0xAB into r17
	ldi	num2L,0x34	; load 0x34 into r18
	ldi	num2H,0x12	; load 0x12 into r19

	sub	num1L,num2L	; subtract with borrow lower bytes of number
	sbc	num1H,num2H	; subtract upper bytes of number

	mov ansH,num1H
	mov ansL,num1L

loop:	rjmp	loop	
