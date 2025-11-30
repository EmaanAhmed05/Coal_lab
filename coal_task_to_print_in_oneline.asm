
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
      

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dl,'E'          
mov ah,2
int 21h
 
mov dl,'m'
mov ah,2
int 21h
      
mov dl,'a'
mov ah,2
int 21h   

mov dl,'a'          
mov ah,2
int 21h
 
mov dl,'n'
mov ah,2
int 21h
         

mov dl,' '          
mov ah,2
int 21h
 
mov dl,'A'
mov ah,2
int 21h
      
mov dl,'h'
mov ah,2
int 21h   

mov dl,'m'          
mov ah,2
int 21h
 
mov dl,'e'
mov ah,2
int 21h
      
mov dl,'d'
mov ah,2
int 21h

ret





