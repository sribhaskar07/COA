ORG 100h 
MOV DX, OFFSET msg_input  
MOV AH, 09h        
INT 21h
        
MOV AH, 01h        
INT 21h


MOV BL, AL

 
MOV DX, OFFSET msg_output  
MOV AH, 09h        
INT 21h 

MOV DL, BL        
MOV AH, 02h        
INT 21h            
MOV AH, 4Ch        
INT 21h            
 
msg_input  DB 'Enter a character: $' 
msg_output DB 0Dh,0Ah, 'The entered character is:$'


END                
