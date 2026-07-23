 
 
 ;sub 3 every time inside the loop from ax and print it step after step 

include emu8086.inc

org 100h

mov cx,20
mov ax,50

print "The New Value of ax = "

Sub_Number:

sub ax,3

call print_num

print "       "

loop Sub_Number

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
