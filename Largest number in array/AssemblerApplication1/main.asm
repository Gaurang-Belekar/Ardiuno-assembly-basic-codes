;
; AssemblerApplication1.asm
;
; Created: 11/17/2021 7:33:35 AM
; Author : Dell
;


; Replace with your application code
.dseg
.org 0x0100
data: .byte 1 ; assigns ram block


.def cntr = r16 ; assigns counter variable to
.def large = r18 ; to store largest number
.cseg
.org 0x00

ldi cntr,0x05 ; creating counter

ldi XL,LOW(data)
ldi XH,HIGH(data)

ldi large,0x00 ; intializing variable

compare: ld r17,X+ ;loading number from memory to check
         cp r17,large ; to compare loaded number with largest number
		 brge store_large ; if r17 is larger than large numbber , then goto store_large
		 dec cntr
		 breq loop
		 rjmp compare
		 
store_large: mov large,r17; to store largest number
             rjmp compare

loop: rjmp loop


