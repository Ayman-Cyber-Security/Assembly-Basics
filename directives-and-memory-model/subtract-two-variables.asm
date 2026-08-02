include emu8086.inc

.MODEL SMALL
.STACK 100h

.DATA            ; تعريف المتغيرات
    x DB 5
    y DB 6

.CODE

numbers PROC        ; داله
    mov ax, @data     ; تعريف القيم التي عند data
    mov ds, ax

    mov al, x
    sub al, y
    cbw                  ;تمدد قيمة AL (8 بت) إلى AX (16 بت) مع الحفاظ الصحيح على الإشارة (سالب/موجب
    call print_num

    mov ax, 4C00h       ;
    int 21h             ; انهاء الداله

numbers ENDP

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END numbers        ; انهاء البرنامج
