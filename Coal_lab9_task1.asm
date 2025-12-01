
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.data
msg1 DB 10,13, "Enter value for A: $"
msg2 DB 10,13, "Enter value for B: $"
msg3 DB 10,13, "A is greater than B$"
msg4 DB 10,13, "A is less than B$"
.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, offset msg1
    mov ah, 9
    int 21h

    mov ah, 1        
    int 21h
    mov bl, al       
    sub bl, 30h    

    mov dx, offset msg2
    mov ah, 9
    int 21h

    mov ah, 1       
    int 21h
    mov bh, al       
    sub bh, 30h   

    cmp bl, bh
    jg greater
    jl lesser
    jmp exit    
greater:
    mov dx, offset msg3
    mov ah, 9
    int 21h
    jmp exit
lesser:
    mov dx, offset msg4
    mov ah, 9
    int 21h
exit:
    mov ah, 4Ch
    int 21h

main endp
end main


ret










