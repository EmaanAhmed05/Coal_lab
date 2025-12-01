
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


.org 100h
.data
.code

main proc

mov dl,65
mov ah,2
int 21h

ret












