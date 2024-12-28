
;Muhammad Bin Nasir
;220201012

include 'emu8086.inc'
.stack 100h
.model small  

.data    

.code
 main proc
    print "Enter Small Characte:"
    
    mov ah,01
    int 21h     
    
    mov bl,al
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h  
    
    sub bl,32          
    
    mov dl,bl 
    
    mov ah,02h
    int 21h      
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h    
    
    print "Enter Capital Character:"
    
    mov ah,01
    int 21h     
    
    mov bl,al
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h  
                  
    add bl,32          
    
    mov dl,bl 
    
    mov ah,02h
    int 21h      
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h
    
    
   
    main endp
 end main
  



