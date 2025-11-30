
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
      


org 100h
.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 10      
    mov dl, '0'    
push:
    mov ah, 0
    push dx          
    inc dl           
    loop push
    mov cx, 10
pop:
    pop dx          
    mov ah, 2       
    int 21h
    loop pop

    mov ah, 4Ch
    int 21h
main endp
end main 
ret









