include emu8086.inc

mov cx, 5

outer_Loop:

    mov bx, cx

inner_Loop:

    print "*"

    loop inner_Loop

    mov cx, bx

    printn

    loop outer_Loop
