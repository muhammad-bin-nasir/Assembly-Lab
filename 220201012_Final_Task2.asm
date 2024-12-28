;Muhammad Bin Nasir
;220201012


include "emu8086.inc"

.stack 100h

.model small

.data
    arrayofvowels db 97,101,105,111,117      ;ascii of vowels
     
.code      
    mov ax,@data
    mov ds,ax
             
    printn "Give the alphabet:"         
           
    mov ah,01h
    int 21h 
    mov bl,al                   
     
    mov si,offset arrayofvowels 
    mov cx,5
             
    l1:
        cmp bl,[si]
        je equal
        inc si
        loop l1
    
    printn ""    
    printn "The letter is a consonant."
    mov ah,04ch
    int 21h
    
    equal: 
        printn ""
        printn "The letter is a vowel."
        mov ah,04ch
        int 21h
        
                
            
            