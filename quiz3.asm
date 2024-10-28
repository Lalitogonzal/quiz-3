section .text
    global _start

_start:
    ; Initialize the factorial calculation
    mov eax, 1              
    mov ecx, [x]          

factorial_loop:
    ; Multiply EAX by ECX (EAX = EAX * ECX)
    mul ecx                 ; Multiply EAX by ECX
    dec ecx                 ; Decrement ECX by 1
    cmp ecx, 1              ; Check if ECX is greater than 1
    jg factorial_loop       ; If greater, jump back to factorial_loop

    ; Store the result
    mov [result], eax       ; Store the factorial result in the result variable

    ; Exit the program
    mov eax, 1            
    xor ebx, ebx            
    int 0x80

section .data
    x dd 5                  ; Set the number to calculate factorial
    result dd 0        

