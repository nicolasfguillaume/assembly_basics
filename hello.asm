section .data
        @ db means define bytes (each character is a byte)
        @ my_text is a pointer to a memory address that contains the data
        my_text db "Hello, World!\n"

section .text
        @ define a label
        @ global means that the object file will contain a link to every label declared 'global'
        global _start

@ registers are  part of the processor that temporarly holds memory
@ in the x86_64 architecture, registers hold 64 bits

@ a system call is when the program requests a service from the kernel
@ all syscalls have an ID associated with them, and take arguments
@ rax (contains ID), rdi (contains arg1), rsi (arg2), rdx (arg3), r10 (arg4), r8 (arg5), r9 (arg6)

@ all asm programs starts from the label _start
_start:
        @ call subroutines
        call _printHello
        call _exit
        
@ subroutine to create a system call: sys_write(1, my_text, 14)
_printHello:
        @ change value of rax register: 1 (ID: sys_write)
        mov rax, 1
        @ change value of rdi register: 1 (arg1: file descriptor: standard output)
        mov rdi, 1
        @ change value of rsi register: my_text (arg2: buffer: location of string to write)
        mov rsi, my_text
        @ change value of rdx register: 14 (arg3: count: length of string)
        mov rdx, 14
        syscall

        ret
 
 @ subroutine to create a system call: sys_exit(0)
_exit:
        @ change value of rax register: 60 (ID: sys_exit)
        mov rax, 60
        @ change value of rdi register: 0 (arg1: error code, 0 if no error)
        mov rdi, 0
        syscall

        ret
 
