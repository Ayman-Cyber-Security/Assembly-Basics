include emu8086.inc

.MODEL SMALL
.STACK 100h

.data
counter DB 5

.code

MAIN PROC
    mov ax,@data
    mov ds,ax
    
    mov al,counter 
    mov ah,0               
                   
    mov cl,al
    mov ch, 0
    
    
    print_number:
    
    call print_num  
    
    print " " 
    loop print_number 
    mov ax,4C00H
    int 21h
    MAIN ENDP

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END MAIN

