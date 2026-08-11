include emu8086.inc

mov dx, 1          
mov bx, 5         

outer_loop:

    mov cx, dx   

inner_loop:
    print "*"
    loop inner_loop

    printn

    inc dx        

    cmp dx, bx
    jbe outer_loop 
