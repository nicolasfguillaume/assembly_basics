# assembly
Toy Scripts in Assembly language

## hello.asm

To compile:
```bash
make
```
To run:
```bash
./hello
```
Returns:
```bash
>> Hello World!
```

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
