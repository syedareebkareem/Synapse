
.data
    val1 db 10,13,'2 x 1 = ','$'
    val2 db 10,13,'2 x 2 = ','$'
    val3 db 10,13,'2 x 3 = ','$'
    val4 db 10,13,'2 x 4 = ','$'
    
    res db 2  ;

.code
main:
    mov ax, @data
    mov ds, ax

    mov dx, offset val1
    mov ah, 09h
    int 21h        
    
    mov dl, 2      
    add dl, 48
    mov ah, 02h
    int 21h

    mov dx, offset val2
    mov ah, 09h
    int 21h        

    mov dl, 4      
    add dl, 48
    mov ah, 02h
    int 21h

    mov dx, offset val3
    mov ah, 09h
    int 21h

    mov dl, 6      ;
    add dl, 48
    mov ah, 02h
    int 21h

    mov dx, offset val4
    mov ah, 09h
    int 21h

    mov dl, 8      
    add dl, 48
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h      

end main