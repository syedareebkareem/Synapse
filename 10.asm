.model small
.stack 100h

.data
grade   db 85         
msgA    db 'A$'
msgB    db 'B$'
msgC    db 'C$'
msgD    db 'D$'
msgF    db 'F$'
msgInv  db 'Not Valid$'

.code
main:
    mov ax, @data
    mov ds, ax

    mov al, grade

    cmp al, 0
    jl  invalid

   
    cmp al, 100
    jg  invalid

    cmp al, 90
    jge gradeA

    cmp al, 80
    jge gradeB

    cmp al, 70
    jge gradeC

    cmp al, 50
    jge gradeD

    jmp gradeF

gradeA:
    mov ah, 9
    lea dx, msgA
    int 21h
    jmp exit

gradeB:
    mov ah, 9
    lea dx, msgB
    int 21h
    jmp exit

gradeC:
    mov ah, 9
    lea dx, msgC
    int 21h
    jmp exit

gradeD:
    mov ah, 9
    lea dx, msgD
    int 21h
    jmp exit

gradeF:
    mov ah, 9
    lea dx, msgF
    int 21h
    jmp exit

invalid:
    mov ah, 9
    lea dx, msgInv
    int 21h

exit:
    mov ah, 4Ch
    int 21h

end main