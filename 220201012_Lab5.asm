; Name      :   Muhammad Bin Nasir
; Reg no    :   220201012
                              
                              
;The logic used is that we take two digit number as an input by using both high and low registers
;We put one digit in higher register, and one in lower register. In this way, 2 numbers are stored
;in two registers, B and C (bh,bl and ch,cl). Then, we add bl and cl in al, so that we get a two
;digit result (sum and carry) in ah and al. Then we move both values in B and C register, freeing 
;the A register. Then we add bh and ch along with the carry from the previous addition again in A
;registor, thus making another carry. So the sum is now stored in three places, Two sums and one 
;carry (A three digit number). It is then output on the console.                              
                              
.stack 100h                                      

.model small

.data       

    msg1 DB "Please give the first number: $"
    msg2 DB 0ah,0dh, "Please give the second number: $"
    msg3 DB 0ah,0dh, "The sum is: $"    
    a DB ?
    b DB ?

.code
    
    main proc   
        mov ax,@data
        mov ds,ax 

        mov ah,09h
        lea dx,msg1
        int 21h   
        
        mov ah,01
        int 21h
        mov a,al    
        
        mov ah,01
        int 21h
        mov b,al 
        
        mov bh,a
        mov bl,b
        
        mov ah,09h
        lea dx,msg2
        int 21h 
        
        mov ah,01
        int 21h
        mov a,al
        
        mov ah,01
        int 21h
        mov b,al
        
        mov ch,a
        mov cl,b
        
        mov al,bl         
        
        add al,cl
        mov ah,0
        aaa
        add al,48
        add ah,48
        
        mov bl,ch         
      
        mov cx,ax
        
        mov al,bh
                
        add al,bl 
        
        mov ah,0
        aaa
        add al,ch
        add al,48
        add ah,48 
        
        mov ch,ah
        
        mov bh,al
        
        mov bl,cl
        
        sub bh,48 
        
               
        mov ah,09h
        lea dx,msg3
        int 21h    
        
        mov dl,ch
        mov ah,02h
        int 21h
         
        mov dl,bh 
        mov ah,02h
        int 21h
        
        mov dl,bl
        mov ah,02h
        int 21h
 
    main endp
    
    
end main
