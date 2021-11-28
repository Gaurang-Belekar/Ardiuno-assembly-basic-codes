;
; AssemblerApplication1.asm
;
; Created: 11/16/2021 10:22:59 AM
; Author : Dell
;


; Replace with your application code
.include "m328pdef.inc"

.cseg
.org 0x00

ldi r16,0x12 ;storing 12 in r16
ldi r17,0x21 ; storing 21 in r17

mul r16,r17 ; multiplying 12H and 21H
 
mov r18,r0 ; The multiplied result is stored in r0 register. Storing that result in r18

loop: rjmp loop