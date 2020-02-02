# assembly
Toy Scripts in Assembly language (x86-64). Tested on Ubuntu 18.04 on an Intel Core i7 PC.

## hello.asm

To compile:
```bash
make hello
```
To run:
```bash
./hello
```
Returns:
```bash
>> Hello World!
```

## input.asm

To compile:
```bash
make input
```
To run:
```bash
./input
```
Returns:
```bash
>> What is your name?
>> Bob
>> Hello Bob
```

## Assembly basics

**Registers** are  part of the processor that temporarly holds memory  
- in the x86_64 architecture, registers hold 64 bits

A **system call** is when the program requests a service from the kernel  
All syscalls have an ID associated with them, and take arguments
- rax (contains ID)
- rdi (contains arg1)
- rsi (arg2)
- rdx (arg3)
- r10 (arg4)
- r8 (arg5)
- r9 (arg6)

All asm programs starts from the label **_start**

The **stack**, like registers, is another way to store data temporarily  
You stack data onto it. You can only see the content of the top of the stack  
- push: add data onto the top of the stack  
- pop: remove data onto the top of the stack  
- peek: just look at the top of the stack (w/o adding/removing any data)

## Cheat sheets

- https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf
- https://web.stanford.edu/class/cs107/guide/x86-64.html
- http://www.ccs.neu.edu/home/ntuck/courses/2018/09/cs3650/amd64_asm.html
