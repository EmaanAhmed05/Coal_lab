; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
 
.model small
.stack 100h
.data
msg1 db 'EMAAN',13,10,'$'
msg2 db 'IS',13,10,'$'
msg3 db 'FROM',13,10,'$'
msg4 db 'CITY',13,10,'$'
msg5 db 'ISAMABAD',13,10,'$'

list dw offset msg1, offset msg2, offset msg3, offset msg4, offset msg5
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5
    mov si, offset list
printLoop:
    mov dx, [si]
    call printMsg
    add si, 2
    loop printLoop

    mov ah, 4ch
    int 21h
main endp

printMsg proc
    mov ah, 09h
    int 21h
    ret
printMsg endp

end main