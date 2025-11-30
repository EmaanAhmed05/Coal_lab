
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
      

org 100h

.model small
.stack 100h
.data
arr db 5 DUP('#'),'$'        

.code
main proc
    mov ax, @data
    mov ds, ax
    mov si, offset arr    
    mov cx, 5        

displayloop:
    mov dl, [si]         
    mov ah, 2             
    int 21h
    inc si               
    loop displayloop     

    mov ah, 4Ch          
    int 21h
main endp
end main


ret




