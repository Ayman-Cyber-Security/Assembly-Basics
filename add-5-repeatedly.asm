; Showing the steps of add number 5 to ax in a loop 6 times



include emu8086.inc

org 100h
mov ax,5
mov cx,6
 print "The New Value of ax = "
 
add_Number:

add ax,5    

        call print_num 
        
        print "         "
loop add_Number





DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
