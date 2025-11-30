
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,30
mov bl,5
Div bl   

mov cl,al
mov ch,ah
mov dl,cl
add dl,48
mov ah,2
int 21h  

mov dl,10 
int 21h

mov dl,13
int 21h  

mov dl,ch
add dl,48
mov ah,2
int 21h 

ret



