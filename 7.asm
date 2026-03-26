

.model small
.data

a db "This",0Ah,"$"
b db "is",0Ah,"$"
c db "my",0Ah,"$"
d db "Name",0Ah,"$"


.code

main:

mov ax,@data
mov ds,ax

mov dx,offset a
mov ah,9
int 21h        

mov dx,offset b
mov ah,9
int 21h


mov dx,offset c
mov ah,9
int 21h

mov dx,offset d
mov ah,9
int 21h

mov ah,4CH
int 21h


end main                                      


.model small     
