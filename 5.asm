.model small
.stack 100h

.code
main proc
    mov cx, 5
    mov bl, 9

checkKaro:
    mov al, bl
    mov ah, 0
    mov dl, 2
    div dl
    
    cmp ah, 1
    jne skipNow
    
    mov dl, bl
    add dl, 48
    mov ah, 2
    int 21h
    
    dec cx
    cmp cx, 0
    je exit

skipNow:
    dec bl
    jmp checkKaro

exit:
    mov ah, 4ch
    int 21h
main endp
end main