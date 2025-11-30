
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
 .data
string db 'emaan$'
.code
main proc
mov ax,@data
mov ds,ax 
mov si,offset string
mov cx,6

psh:
mov bx,[si]
push bx
inc si
loop psh

mov cx,6

pp:
pop dx
mov ah,2
int 21h
loop pp

mov ah,4ch
int 21h  
main endp
end main

ret
