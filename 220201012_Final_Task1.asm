;Muhammad Bin Nasir
;220201012


.stack 100h

.model small

.data
    myarr db 1,2,3,9,6,5
.code   
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset myarr
    mov cx,5
    l1:
        cmp cx,6
        je first
        jne else
        
        first:
            mov bl,[si]         ;first time takes in value of zeroindex in bl
            jmp endl 
        else:
            cmp [si],bl
            ja above                ;then compares bl with next index
            jna endl                ;if greater, updates the value ofbl
            above:
                mov bl,[si]
        endl:      
            inc si
            loop l1  
            
      
    mov dl,bl
    add dl,48
    mov ah,02
    int 21h
        
main endp
end main
       
        
    
