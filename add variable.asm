.MODEL SMALL
.stack 100h
.data
 msg1 db 10, "enter the value of 1st number $10"
 msg2 db 10, "enter the value of 2nd number $10" 
 a db ?
 b db ?
.code 
 main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,msg1
    int 21h
     mov ah,1
     int 21h
     mov a,al
   mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,msg2
    int 21h
     mov ah,1
     int 21h
     mov b,al
     mov al,a
     add al,b 
     sub al,30h
     mov dl,al
     mov ah,2
     int 21h
     mov ah,4ch
     int 21h 
     
    
    main endp
 end main



