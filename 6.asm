.model small
.data
msg db "Welcome to Kareem's 1st assembly code",13,10,"$"

myName db "Syed Areeb Kareem",13,10,"$"
enrollment db "01-135232-095",13,10,"$"
program db "BS(IT)",13,10,"$"
               
issuedOn db "Issued on",13,10,"$"
date db "May,2025",13,10,"$"


.code
main:

mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,9
int 21h     

mov dx,offset myName
mov ah,9
int 21h

mov dx, offset enrollment
mov ah,9
int 21h

mov dx,offset program
mov ah,9
int 21h

mov dx,offset issuedOn
mov ah,9
int 21h

mov dx,offset date
mov ah,9  
int 21h            


mov ah,4ch                      
int 21h                         
