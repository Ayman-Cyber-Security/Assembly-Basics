include emu8086.inc

org 100h

mov ax,320

mov cx,5

mov dx,0

MOV si,2

divNumber:

div si

call print_num 
printn

mov dx,0

loop divNumber

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
