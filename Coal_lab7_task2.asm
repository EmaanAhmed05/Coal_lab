
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h
.model small
.data
rm DB 'reminder $'
qt DB 'quotient $'
.code
main proc
    mov ax,27
    mov bl,5
    div bl
    
    mov cl,al
    mov ch,ah
    
    mov ax,@data
    mov ds,ax
    mov dx,offset qt
    mov ah,9
    int 21h
    
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h
    
    mov dx,10
    mov ah,2
    int 21h
    
    mov dx,13
    mov ah,2
    int 21h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset rm
    mov ah,9
    int 21h
    
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h 
ret













