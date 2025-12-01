; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah,1
int 21h 
mov bl,al

mov cx,10

L1:
mov ah,2
mov dl,13         
int 21h
mov dl,10      
int 21h

mov dl,bl
int 21h

Loop L1

ret




