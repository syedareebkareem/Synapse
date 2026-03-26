


.model small
.data

a db "*",13,10,"$"                                                    
b db "**",13,10,"$" 
c db "***",13,10,"$"
d db "****",13,10,"$"
e db "*****",13,10,"$"                                                

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

mov dx,offset e        
mov ah,9
int 21h                

end main