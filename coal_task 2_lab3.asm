
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.org 100h  
.data
.code
main proc
    
mov dl,69     
int 21h

mov dl,109    
mov ah,2
int 21h

mov dl,97     
mov ah,2
int 21h

mov dl,97     
mov ah,2
int 21h

mov dl,110    
mov ah,2
int 21h

mov dl,' '    
mov ah,2
int 21h

mov dl,65     
mov ah,2
int 21h

mov dl,104    
mov ah,2
int 21h

mov dl,109    
mov ah,2
int 21h

mov dl,101    
mov ah,2
int 21h

mov dl,100    
mov ah,2
int 21h

ret




