;Muhammad Bin Nasir
;220201012


.stack 100h

.model small

.data 
    loopcounter1 dw ?
    loopcounter2 dw ?

.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov loopcounter1,10                    ;loop counters
    mov loopcounter2,3
    mov cx,4                    ;outer loop counter
    mov si,0   
    
    l1: 
        push cx
        mov cx,loopcounter1                ; inner loop counter
        l2:  
            push cx
            mov cx,loopcounter2            ; inner loop counter
            l3:
                inc si
                loop l3
            pop cx
            dec cx
            loop l2
        pop cx
        loop l1
        
    mov ax,si 
    
   
    mov dl,al                  ;gives the ascii valueof the character
    
                               ; which is 60
    mov ah,02h
    int 21h  

    
                
                
   
    
    
    
    
    
main endp

end main