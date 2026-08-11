include emu8086.inc

mov ax, 5
mov cx, 5

cmp cx, ax

je equal       ; je = Jump if Equal
ja bigger      ; ja = Jump if Above
jb smaller     ; jb = Jump if Below

equal:
    printn "CX == AX"
    jmp finish ; jump directly to finish

bigger:
    printn "CX > AX"
    jmp finish

smaller:
    printn "CX < AX"
    jmp finish

finish:

ret
