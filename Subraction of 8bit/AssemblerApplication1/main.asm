;
; AssemblerApplication1.asm
;
; Created: 11/16/2021 10:10:03 AM
; Author : Dell
;


; Replace with your application code
 .include "m328pdef.inc"

 .cseg
 .org 0x00

 ldi r16,0x20 ;stores 20 in r16
 ldi r17,0x11 ; stores 11 in r17

 sub r16,r17; subtracts 20 - 11 = F -> r16