section .data
    text1 db "What is your name? "
    text2 db "Hello, "
 
section .bss
    name resb 16          @ reserve 16 bytes and reference it as 'name'
 
section .text
    global _start
    
_start:
    call _printText1
    call _getName
    call _printText2
    call _printName
    call _exit
 
 _exit:
    mov rax, 60
    mov rdi, 0
    syscall
 
_getName:
    mov rax, 0           @ ID = 0 for user input
    mov rdi, 0           @ 0 for standard input
    mov rsi, name        @ data is stored in 'name'
    mov rdx, 16          @ max length the name can be
    syscall
    ret
 
_printText1:
    mov rax, 1
    mov rdi, 1
    mov rsi, text1
    mov rdx, 19
    syscall
    ret
 
_printText2:
    mov rax, 1
    mov rdi, 1
    mov rsi, text2
    mov rdx, 7
    syscall
    ret
 
_printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16          @ max length the name can be
    syscall
    ret
