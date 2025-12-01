     ; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.model small
.stack 100h
.data
msg1 db 'Enter first number: $'
msg2 db 0Dh,0Ah,'Enter second number: $'
msg3 db 0Dh,0Ah,'Product is: $'
num1 db ?
num2 db ?
result db ?
.code
main proc
mov ax, @data
mov ds, ax

mov dx, offset msg1
mov ah, 09h
int 21h

mov ah, 01h      
int 21h
sub al, 30h   
mov num1, al

mov dx, offset msg2
mov ah, 09h
int 21h

mov ah, 01h
int 21h
sub al, 30h
mov num2, al

mov al, num1
mov bl, num2
mul bl        
mov result, al   

mov dx, offset msg3
mov ah, 09h
int 21h

mov dl, result
add dl, 30h    
mov ah, 02h
int 21h

mov ah, 4Ch
int 21h
main endp
end main

ret