.model small
.stack 100h

.code
main proc
    mov cx, 26
    mov dl, 90

L1:
    mov ah, 2
    int 21h

    dec dl

    loop L1

    mov ah, 4Ch
    int 21h

main endp
end main