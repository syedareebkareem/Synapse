.MODEL SMALL
.STACK 100H
.DATA
    msg1    DB 'AOA, KINDLY ENTER A SINGLE DIGIT FROM 0 TO 9','$'
    evenMsg DB 13,10,'This is an Even Number','$'
    oddMsg  DB 13,10,'This is an ODD number','$'
    
.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 09H
    LEA DX, msg1
    INT 21H

    MOV AH, 01H
    INT 21H       

    SUB AL, 30H    

    MOV AH, 00H
    MOV BL, 02H
    DIV BL         

    CMP AH, 00H
    JE EVEN

ODD:
    MOV AH, 09H
    LEA DX, oddMsg   
    INT 21H
    JMP EXIT

EVEN:
    MOV AH, 09H
    LEA DX, evenMsg
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

