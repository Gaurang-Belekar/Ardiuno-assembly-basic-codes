;
; Addition of 8 bit numbers.asm
;
; Created: 11/16/2021 9:39:14 AM
; Author : Dell
;


; Replace with your application code
.include "m328pdef.inc"

.def num1 =r16 ;defining num1 to register r16
.def num2 = r17 ; defining num2 to register r17
.def sum = r18; defining sum to register r18

.cseg
.org   0x00

ldi num1,0x09 ; declaring value to num1 = 09H
ldi num2,0x07 ; declaring value to num2 = 07H

add num1,num2 ; adding 09+07 = 11 and storing to num1

mov sum,num1 ; moving output to sum value

loop: rjmp loop