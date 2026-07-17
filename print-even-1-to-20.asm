include emu8086.inc

org 100h

mov cx,10
mov ax,0
printNumber:
 add ax,2

           call print_num
loop printNumber      


DEFINE_PRINT_NUM
 DEFINE_PRINT_NUM_UNS
