                                                        org 100h
jmp start

arr db 5 dup(?)

start:
    mov cx, 5
    mov si, offset arr

l1:
    mov ah, 01h
    int 21h
    mov [si], al
    inc si
    loop l1

    mov cx, 5
    dec si

l2:
    mov dl, [si]
    mov ah, 02h
    int 21h
    dec si
    loop l2

    ret