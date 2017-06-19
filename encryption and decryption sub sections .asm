 ORG 100H
 
include 'emu8086.inc'
;printing msg0
mov dx,offset msg0
mov ah,09h
int 21h
input:  
mov     ah, 0
int     16h  


; print the key:
mov     ah, 0Eh
int     10h
                                                    
; check the input:
E:
cmp     al, 45h ; check if it's E
jnz      D
jz       Encryption

D:       
cmp     al, 44h ; check if it's D
jnz      Try_Again
jz       Decryption

Try_Again:
mov dx, offset msg2
mov ah, 9
int 21h
JMP input

tryagain1:
mov dx,offset wtf
mov ah,9
int 21h 
jmp encryption
       
msg0 db "Please, Enter 'E' for encryption or 'D' for decryption: ", 0Dh,0Ah

db , 0Dh,0Ah, "$"
msg1 db "ENTER THE NUMBER OF THE of lettersto encrypt : " , 0Dh,0Ah
db , 0Dh,0Ah, "$"   
msg1D db "enter the numbers of the letters to decrypt: ",0Dh,0ah
db , 0dh,0ah, "$"

msg2 db "Only 'E' or 'D' are allowed to enter!! " , 0Dh,0Ah
db , 0Dh,0Ah, "$"


wtf db "numbers only from 3 to 15!!",0Dh,0Ah 
db , 0dh,0ah,"$"                                               
 
   Encryption:
        mov dx,offset msg1   
        
        
mov ah,09h
int 21h

 
mov     ah, 0
int     16h  


; print the key:
mov     ah, 0Eh
int     10h

; check the input and compare it 
                      
                    

 CMP AL,33h
 JZ THREE
 CMP AL,34h
 JZ FOUR
 CMP AL,35h
 JZ FIVE
 CMP AL,36h
 JZ SIX
 CMP AL,37h
 JZ SEVEN
 CMP AL,38h
 JZ EIGHT
 CMP AL,39h
 JZ NINE
 CMP AL,61h
 JZ TEN
 CMP AL,62h
 JZ ELEVEN
 CMP AL,63h
 JZ TWELVE
 CMP AL,64h
 JZ THIRTEEN
 CMP AL,65h
 JZ FOURTEEN
 CMP AL,66h
 JZ FIFTEEN  
 jnz tryagain1 
 
 
 THREE:
jmp start3 ; skip over the declarations and data




msg5  db 13,10, "enter your three letters ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start3:
; print a welcome message:
lea     si, msg5
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+1]

MOV AH,[DI+2]



  
 MOV [DI+2],AL
 MOV [DI+1],AH    
  
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
       
        FOUR:
jmp start4 ; skip over the declarations and data

 

msg12 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di

START4:

; print a welcome message:
lea     si, msg12
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+1]

MOV AH,[DI+2]



  
 MOV [DI+2],AL
 MOV [DI+1],AH    
  
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
     
        FIVE:
jmp start5 ; skip over the declarations and data


msg13 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


 START5:

; print a welcome message:
lea     si, msg13
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+4]

MOV AH,[DI+6]

MOV CL,[DI+1]

MOV CH, [DI+3]
MOV [DI+6],CH
  
 MOV [DI+1],AL
 MOV [DI+3],AH    
 MOV [DI+4],CL 
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
   
        SIX:
jmp start6 ; skip over the declarations and data


msg14 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


 START6:
; print a welcome message:
lea     si, msg14
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+4]



MOV CL,[DI+1]

MOV CH, [DI+3]
MOV [DI+6],CH
  
 MOV [DI+1],AL
     
 MOV [DI+4],CL 
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "
; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT 
 
 
   
        SEVEN:
jmp start7 ; skip over the declarations and data

 

msg15 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di

START7:
; print a welcome message:
lea     si, msg15
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+4]

MOV AH,[DI+6]

MOV CL,[DI+1]

MOV CH, [DI+3]
MOV [DI+6],CH
  
 MOV [DI+1],AL
 MOV [DI+3],AH    
 MOV [DI+4],CL 
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: " 

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
eight:
jmp start8 ; skip over the declarations and data


msg16 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di

START8:

; print a welcome message:
lea     si, msg16
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+4]

MOV AH,[DI+6]

MOV CL,[DI+1]

MOV CH, [DI+3]
MOV [DI+6],CH
  
            MOV [DI+1],AL
            MOV [DI+3],AH    
            MOV [DI+4],CL 
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
       
        NINE:
jmp start9 ; skip over the declarations and data

 

msg17 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


 START9:
; print a welcome message:
lea     si, msg17
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              
  mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah


                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
 
       
        TEN:
jmp start10; skip over the declarations and data

 

msg18 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


START10:
; print a welcome message:
lea     si, msg18
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              



  mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah


                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
 
       
        ELEVEN:
jmp start11; skip over the declarations and data


msg19 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di

START11:
start:
; print a welcome message:
lea     si, msg19
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              


  mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah



mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah


 

                     
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
       
        TWELVE:
jmp start12; skip over the declarations and data

 

msg20 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start12:
; print a welcome message:
lea     si, msg20
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              


   mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah



mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah








      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
 
       
       THIRTEEN:
jmp start13; skip over the declarations and data

 

msg21 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start13:
; print a welcome message:
lea     si, msg21
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

 


   mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah

mov al,[di+3]
mov ah,[di+12]
mov [di+12],al
mov [di+3],ah

mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah









    
  
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
 
       
        FOURTEEN:
jmp start14; skip over the declarations and data

 

msg22 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start14:
; print a welcome message:
lea     si, msg22
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             



mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah

mov al,[di+3]
mov ah,[di+12]
mov [di+12],al
mov [di+3],ah

mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah


mov al,[di+11]
mov ah,[di+13]
mov [di+13],al
mov [di+11],ah  



                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "
; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 

 
        FIFTEEN:
jmp start15; skip over the declarations and data

 

msg23 db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start15:
; print a welcome message:
lea     si, msg23
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              



mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah

mov al,[di+3]
mov ah,[di+12]
mov [di+12],al
mov [di+3],ah

mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah

mov al,[di+7]
mov ah,[di+14]
mov [di+14],al
mov [di+7],ah

mov al,[di+11]
mov ah,[di+13]
mov [di+13],al
mov [di+11],ah    
  
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the encrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
                                                   
   
Decryption:
       mov dx,offset msg1D   
        
        
mov ah,09h
int 21h

 
mov     ah, 0
int     16h  


; print the key:
mov     ah, 0Eh
int     10h

; check the input and compare it 
       
 CMP AL,33h
 JZ THREED
 CMP AL,34h
 JZ FOURD
 CMP AL,35h
 JZ FIVED
 CMP AL,36h
 JZ SIXD
 CMP AL,37h
 JZ SEVEND
 CMP AL,38h
 JZ EIGHTD
 CMP AL,39h
 JZ NINED
 CMP AL,61h
 JZ TEND
 CMP AL,62h
 JZ ELEVEND
 CMP AL,63h
 JZ TWELVED
 CMP AL,64h
 JZ THIRTEEND
 CMP AL,65h
 JZ FOURTEEND
 CMP AL,66h
 JZ FIFTEEND  
 jnz tryagain1


  THREED:
jmp start3D ; skip over the declarations and data




msg5D  db 13,10, "enter your three letters ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start3D:
; print a welcome message:
lea     si, msg5D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+1]

MOV AH,[DI+2]



  
 MOV [DI+2],AL
 MOV [DI+1],AH    
  
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
       
        FOURD:
jmp start4D ; skip over the declarations and data

 

msg12D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di

START4D:

; print a welcome message:
lea     si, msg12D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+1]

MOV AH,[DI+2]



  
 MOV [DI+2],AL
 MOV [DI+1],AH    
  
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
     
        FIVED:
jmp start5D ; skip over the declarations and data


msg13D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


 START5D:

; print a welcome message:
lea     si, msg13D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+4]

MOV AH,[DI+6]

MOV CL,[DI+1]

MOV CH, [DI+3]
MOV [DI+6],CH
  
 MOV [DI+1],AL
 MOV [DI+3],AH    
 MOV [DI+4],CL 
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
   
        SIXD:
jmp start6D ; skip over the declarations and data


msg14D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


 START6D:
; print a welcome message:
lea     si, msg14D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+4]



MOV CL,[DI+1]

MOV CH, [DI+3]
MOV [DI+6],CH
  
 MOV [DI+1],AL
     
 MOV [DI+4],CL 
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "
; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT 
 
 
   
        SEVEND:
jmp start7D ; skip over the declarations and data

 

msg15D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di

START7D:
; print a welcome message:
lea     si, msg15D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+4]

MOV AH,[DI+6]

MOV CL,[DI+1]

MOV CH, [DI+3]
MOV [DI+6],CH
  
 MOV [DI+1],AL
 MOV [DI+3],AH    
 MOV [DI+4],CL 
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: " 

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
eightD:
jmp start8D ; skip over the declarations and data


msg16D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di

START8D:

; print a welcome message:
lea     si, msg16D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             
MOV AL,[DI+4]

MOV AH,[DI+6]

MOV CL,[DI+1]

MOV CH, [DI+3]
MOV [DI+6],CH
  
            MOV [DI+1],AL
            MOV [DI+3],AH    
            MOV [DI+4],CL 
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
       
        NINED:
jmp start9D ; skip over the declarations and data

 

msg17D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


 START9D:
; print a welcome message:
lea     si, msg17D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              



mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah



  


                
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
 
       
        TEND:
jmp start10D; skip over the declarations and data

 

msg18D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


START10D:
; print a welcome message:
lea     si, msg18D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              





mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah

                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
 
       
        ELEVEND:
jmp start11D; skip over the declarations and data


msg19D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di

START11D:

; print a welcome message:
lea     si, msg19D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              


mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah



mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah

                    
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
       
        TWELVED:
jmp start12D; skip over the declarations and data

 

msg20D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start12D:
; print a welcome message:
lea     si, msg20D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              



mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah



mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah

                    
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
       
      THIRTEEND:
jmp start13D; skip over the declarations and data

 

msg21D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start13D:
; print a welcome message:
lea     si, msg21D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

 



mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah

mov al,[di+3]
mov ah,[di+12]
mov [di+12],al
mov [di+3],ah

mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah


mov al,[di+11]
mov ah,[di+13]
mov [di+13],al
mov [di+11],ah    
  
                 






    
  
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
 
       
        FOURTEEND:
jmp start14D; skip over the declarations and data

 

msg22D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start14D:
; print a welcome message:
lea     si, msg22D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              

             


mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah

mov al,[di+3]
mov ah,[di+12]
mov [di+12],al
mov [di+3],ah

mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah



mov al,[di+11]
mov ah,[di+13]
mov [di+13],al
mov [di+11],ah    
  
                 


   
  
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "
; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
 
 
 
 
 
 
 
 
        FIFTEEND:
jmp start15D; skip over the declarations and data

 

msg23D db 13,10, "Enter a string: ", 0


mov ax,0000h
mov ds,ax
MOV CX,AX
off=0000h ;offset of di


start15D:
; print a welcome message:
lea     si, msg23D
call    print_string 

; get string to ds:di
LEA DI,[off]    ; buffer offset.
mov     dx, 16     ; buffer size.
call    get_string
              



mov al,[di+1]
mov ah,[di+8]
mov [di+8],al
mov [di+1],ah

mov al,[di+2]
mov ah,[di+4]
mov [di+4],al
mov [di+2],ah

mov al,[di+3]
mov ah,[di+12]
mov [di+12],al
mov [di+3],ah

mov al,[di+5]
mov ah,[di+10]
mov [di+10],al
mov [di+5],ah

mov al,[di+7]
mov ah,[di+14]
mov [di+14],al
mov [di+7],ah

mov al,[di+11]
mov ah,[di+13]
mov [di+13],al
mov [di+11],ah    
  
                 





    
  
                      
                      
                      
                      
                      
                      
putc    0Dh
putc    10 ; next line.

; print using macro:
print "the decrypted word is: "

; print string in ds:si using procedure:
mov     si, di
call    print_string
JMP EXIT
 
                                    




       EXIT:
HLT 






















                    




DEFINE_PRINT_STRING
DEFINE_GET_STRING 

ret          

             

 
 
 
 
 
 
 
 
 
 
