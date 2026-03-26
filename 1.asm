org 100h
jmp start

inputArray db 10 dup(?)
messageEven db 10,13,"Even: $"
messageOdd db 10,13,"Odd: $"
messageEvenGreater db 10,13,"Even > Odd$"
messageOddGreater db 10,13,"Odd > Even$"
messageEqual db 10,13,"Even = Odd$"

start:
    mov cx, 10
    mov si, offset inputArray
inputLoop:
    mov ah, 01h
    int 21h
    mov [si], al
    inc si
    loop inputLoop

    mov cx, 10
    mov si, offset inputArray
    mov bl, 0 
    mov bh, 0 
checkLoop:
    mov al, [si]
    and al, 1
    jz isEven
    inc bh
    jmp nextElement
isEven:
    inc bl
nextElement:
    inc si
    loop checkLoop

    mov ah, 09h
    mov dx, offset messageEven
    int 21h
    mov al, bl
    aam
    add ax, 3030h
    push ax
    mov dl, ah
    mov ah, 02h
    int 21h
    pop ax
    mov dl, al
    mov ah, 02h
    int 21h

    mov ah, 09h
    mov dx, offset messageOdd
    int 21h
    mov al, bh
    aam
    add ax, 3030h
    push ax
    mov dl, ah
    mov ah, 02h
    int 21h
    pop ax
    mov dl, al
    mov ah, 02h
    int 21h

    cmp bl, bh
    jg evenGreater
    jl oddGreater

    mov ah, 09h
    mov dx, offset messageEqual
    int 21h
    jmp endProgram

evenGreater:
    mov ah, 09h
    mov dx, offset messageEvenGreater
    int 21h
    jmp endProgram

oddGreater:
    mov ah, 09h
    mov dx, offset messageOddGreater
    int 21h

endProgram:
    ret