.model small
.stack 100h

.code
main proc
    mov cx, 10
    mov bl, 48

input_loop:
    mov ah, 1
    int 21h

    cmp al, bl
    jbe skip
    
    mov bl, al

skip:
    loop input_loop

    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov dl, bl
    mov ah, 2
    int 21h

    mov ah, 4Ch
    int 21h

main endp
end main