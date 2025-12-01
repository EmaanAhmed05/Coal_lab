
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
display macro var
    push ax
    push dx

    lea dx, var     
    mov ah, 9
    int 21h         

    call newline   

    pop dx
    pop ax
endm
.model small
.stack 100h
.data
var1 db 'Emaan Ahmed$'
var2 db '66024$'
.code
main proc
    mov ax, @data
    mov ds, ax

    display var1
    display var2
    
    mov ah, 4Ch
    int 21h
main endp
newline proc
    mov dl, 10       
    mov ah, 2
    int 21h

    mov dl, 13  
    mov ah, 2
    int 21h

    ret
newline endp
end main






