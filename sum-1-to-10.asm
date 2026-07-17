include emu8086.inc

org 100h
mov cx,10
mov ax,0

Sum_numbers:

add ax,cx

loop Sum_numbers

print "Sum Numbers = "

call print_num

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
