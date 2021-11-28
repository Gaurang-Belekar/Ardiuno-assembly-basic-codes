;
; AssemblerApplication1.asm
;
; Created: 11/16/2021 1:49:55 PM
; Author : Dell
;


; Replace with your application code

;data segment

.dseg
.org 0x0100
data: .byte 1
.db 01, 02, 03, 04, 05
.org 0x012C
data2: .byte 1

.def cntr = r16 ; setting counter variable to r16 register

.cseg
.org 0x00

ldi cntr,0x06

ldi XL,LOW(data2)
ldi XH,HIGH(data2)

ldi YL,LOW(data)
ldi YH,HIGH(data)

transfer: ld r17,Y+ ; transfers data of location at data location
           st X+,r17 ; transfers content of r17 into data2 location
		  dec cntr
		  breq loop
		  rjmp transfer

loop: rjmp loop


