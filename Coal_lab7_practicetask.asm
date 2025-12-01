
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,3
mov bl,2
Mul bl
mov dx,ax
add dx,48
mov ah,2
int 21h

ret




