@ define constants
STDIN equ 0
STDOUT equ 1
STDERR equ 2
SYS_READ equ 0
SYS_WRITE equ 1
SYS_EXIT equ 60

section .data
        @ db means define bytes (each character is a byte)
        @ my_text is a pointer to a memory address that contains the data
        my_text db "Hello, World!\n"

section .text
        @ global means that the object file will contain a link to every label declared 'global'
        global _start

_start:
        call _printHello
        call _exit
        
@ subroutine to create a system call: sys_write(1, my_text, 14)
_printHello:
        mov rax, SYS_WRITE       @ update value of rax register: 1 (ID: sys_write)
        mov rdi, STDOUT          @ update value of rdi register: 1 (arg1: file descriptor: standard output)
        mov rsi, my_text         @ update value of rsi register: my_text (arg2: buffer: location of string to write)
        mov rdx, 14              @ update value of rdx register: 14 (arg3: count: length of string)
        syscall
        
        ret
 
 @ subroutine to create a system call: sys_exit(0)
_exit:
        mov rax, SYS_EXIT        @ update value of rax register: 60 (ID: sys_exit)
        mov rdi, 0               @ update value of rdi register: 0 (arg1: error code, 0 if no error)
        syscall

        ret
 
