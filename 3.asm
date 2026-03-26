org 100h
jmp start

arr db 5 dup(?) 

start:
   
    mov cx, 5
    mov si, offset arr
inputLoop:
    mov ah, 01h     
    int 21h
    mov [si], al    
    inc si
    loop inputLoop

   
    mov dx, 5           
outerLoop:
    mov cx, 4           
    mov si, offset arr
innerLoop:
    mov al, [si]        
    mov bl, [si+1]      
    cmp al, bl
    jge skip            
    
    mov [si], bl        
    mov [si+1], al

skip:
    inc si
    loop innerLoop  
        
    dec dx
    jnz outerLoop:   


    mov cx, 5
    mov si, offset arr
printLoop:
    mov dl, [si]    
    mov ah, 02h     
    int 21h
    inc si
    loop printLoop

       