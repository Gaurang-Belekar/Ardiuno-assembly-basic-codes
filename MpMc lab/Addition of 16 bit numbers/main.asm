;
; Addition of 16 bit numbers.asm
;
; Created: 11/16/2021 8:07:51 AM
; Author : Dell
;



	.include "m328pdef.inc"

	.def	num1L = r16	; define lower byte of number 1 as r16
	.def	num1H = r17	; define upper byte of number 1 as r17
	.def	num2L = r18	; define lower byte of number 2 as r18
	.def	num2H = r19	; define upper byte of number 2 as r19
	.def    sumH = r20 ; defining upper byte of sum as r20
	.def    sumL = r21 ; defining lower byte of sum as r21

	.cseg
	.org	0x00
	ldi	num1L,0x22	; load 0x34 into r16
	ldi	num1H,0x11	; load 0x12 into r17
	ldi	num2L,0xBB	; load 0xCD into r18
	ldi	num2H,0xAA	; load 0xAB into r19

	add	num1L,num2L	; add lower bytes of number
	adc	num1H,num2H	; add upper bytes of number

	mov sumH,num1H; storing result of higher byte
	mov sumL, num1L; storing resul of lower byte

loop:	rjmp	loop		; infinite loop
