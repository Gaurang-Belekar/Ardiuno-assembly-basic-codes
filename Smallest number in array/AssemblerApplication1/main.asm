;
; AssemblerApplication1.asm
;
; Created: 11/17/2021 8:49:23 AM
; Author : Dell
;


; Replace with your application code
.dseg
.org 0x0100
data: .byte 1 ; assigns ram block


.def cntr = r16 ; assigns counter variable to
.def small = r18
.cseg
.org 0x00

ldi cntr,0x05

ldi XL,LOW(data)
ldi XH,HIGH(data)

ldi small,0xFF

compare: ld r17,X+
         cp r17,small
		 brlo store_small
		 dec cntr
		 breq loop
		 rjmp compare
		 
store_small: mov small,r17
             rjmp compare

loop: rjmp loop

