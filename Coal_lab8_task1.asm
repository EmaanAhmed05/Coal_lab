
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h

mov cx,26
mov dx,97

L1:
mov ah,2 
int 21h 
inc dx   

loop L1

ret




