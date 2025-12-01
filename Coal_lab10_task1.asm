
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

arr db 49,50,51,52
.code
main proc
    mov ax,@data
    mov ds,ax
    mov si,offset arr
    mov dx,[si]
    mov ah,2
    int 21h
    
    mov dx,[si+1]
    mov ah,2
    int 21h
    
    mov dx,[si+2]
    mov ah,2
    int 21h
    
    mov dx,[si+3]
    mov ah,2
    int 21h 
    
    mov ah,4ch
    int 21h
    
    main endp
end main
            
ret