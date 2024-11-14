ORG 100h

mov dx, offset msg_input1
mov ah, 09h
int 21h

mov ah, 01h
int 21h
mov bl, al
cmp al, '0'
jl NotDigit
cmp al, '9'
jg NotDigit

mov dx, offset msg_output1
mov ah, 09h
int 21h
mov dl, bl
mov ah, 02h
int 21h

mov dx, offset msg_input2
mov ah, 09h
int 21h

mov ah, 01h
int 21h

mov cl, al
cmp al, '0'
jl NotDigit
cmp al, '9'
jg NotDigit

mov dx, offset msg_output2
mov ah, 09h
int 21h
mov dl, cl
mov ah, 02h
int 21h
        
cmp bl,cl
je equal         
mov dx, offset msg_notequal
mov ah, 09h
int 21h 
jmp endprogram 
equal:
   mov dx, offset msg_equal
   mov ah, 09h
   int 21h 
   jmp endprogram

NotDigit:
mov dx, offset msg_error
mov ah, 09h
int 21h

endprogram:
mov ah, 4Ch
int 21h

msg_input1 DB "Enter first digit: $"
msg_output1 DB 0Dh, 0Ah, "The first digit is: $"
msg_input2 DB 0Dh, 0Ah, "Enter second digit: $"

msg_output2 DB 0Dh, 0Ah, "The second digit is: $"
msg_equal DB 0Dh, 0Ah, "both the digits are equal $" 
msg_notequal DB 0Dh, 0Ah, "both the digits are not equal $"
msg_error DB 0Dh, 0Ah, "Error: Not a digit!$"
