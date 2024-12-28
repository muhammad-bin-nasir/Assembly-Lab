;Name:  Muhammad Bin Nasir
;Regno: 220201012


include 'emu8086.inc'
.stack 100h

.model small

.data 

    myarr db 11,12,13,14,15  
                                                     
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov si,offset myarr 
        
        mov cx,5
        
        l1:
            mov ax,[si]
            mov ah,0
                    
            aaa        
            
            mov bx,ax
 
            mov dl,bh
            add dl,'0'
            mov ah,02h
            int 21h
            
            mov dl,bl
            add dl,'0'
            mov ah,02h
            int 21h
            inc si 
            mov dl,0
            mov ah,02h
            int 21h
        loop l1
        
        
        
            
        
        
        
    main endp
end main