include 'emu8086.inc'
.stack 100h
.model small
.data 
    Num1Tens db 0
    Num1Ones db 0
    Num2Tens db 0
    Num2Ones db 0
    ResTens db 0
    ResOnes db 0

.code
    main proc     
         mov ax,@data
         mov ds,ax
         
         print 'Give first number: '
         mov ah,01h
         int 21h
         
         mov Num1Tens,al
         
         mov ah,01h
         int 21h
         
         mov Num1Ones,al 
         
         mov dl,10
         mov ah,02h
         int 21h
         
         mov dl,13
         mov ah,02h
         int 21h
         
         print 'Give second number: '
         mov ah,01h
         int 21h
         
         mov Num2Tens,al
         
         mov ah,01h
         int 21h
         
         mov Num2Ones,al
         
         mov dl,10
         mov ah,02h
         int 21h
         
         mov dl,13
         mov ah,02h
         int 21h
         
         print 'The sum is: '
         
         mov bh,Num1Tens
         mov bl,Num1Ones
         mov ch,Num2Tens
         mov cl,Num2Ones
         
         mov al,bl
         add al,cl
         mov ah,0
         aaa
         
         mov bl,ch
         
         mov cx,ax
         
         mov al,bl
         add al,bh

         mov ah,0
         aaa
         add al,ch
         mov bh,ah
         mov ch,al  
         
         add bh,48
         add ch,48
         add cl,48
         
         mov dl,bh
         mov ah,02h
         int 21h
         
         mov dl,ch
         mov ah,02h
         int 21h
         
         mov dl,cl
         mov ah,02h
         int 21h
        
        
        
    main endp
end main