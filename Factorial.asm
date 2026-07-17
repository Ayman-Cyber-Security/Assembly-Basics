include 'emu8086.inc'
org 100h       ; it tells the computer th start from here

mov ax,1
mov cx,5

print "The Factorial of 5 = "

Factorial:
    
    mul cx
loop Factorial

call print_num       ; print the number in ax always

ret     ;end the program

DEFINE_PRINT_NUM            ; call print_num can not work without it
DEFINE_PRINT_NUM_UNS        ; i must use it when i use call print_num
