include emu8086.inc

mov si,17          ; original number

mov cx,si
sub cx,2          ; number of loop iterations

mov bx,2          ; divisor

number:
    mov ax,si     ; restore original number
    mov dx,0      ; clear DX before DIV
    div bx

    cmp dx,0
    je not_prime

    inc bx
    loop number

prime:
    printn "Prime"
    jmp break

not_prime:
    printn "Not Prime"

break:
