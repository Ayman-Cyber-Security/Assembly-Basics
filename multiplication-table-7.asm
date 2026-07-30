include emu8086.inc 


org 100h 
          
mov cx,12

mov bx,7

mov si,0
                   
print_MulNumber:

inc si
mov ax,si           ; we cannot use ax alone as the counter because mul overwrites ax
                    ; with the multiplication result each time, so we use si to keep
                    ; a clean, untouched counter and copy it into ax before each mul
mul bx

call print_num
printn 

loop print_MulNumber



DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
