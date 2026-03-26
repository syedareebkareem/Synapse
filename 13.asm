
.model small
.data
line1 db " * ",10,13,'$'       
line2 db "***",10,13,'$'
line3 db " * ",10,13,'$'

.code
main:
mov ax,@data
mov ds,ax

mov dx,offset line1
mov ah,9
int 21h  

mov dx,offset line2
mov ah,9
int 21h

mov dx,offset line3
mov ah,9
int 21h
                      