hello:
        # compiler: compiles text to object
        nasm -f elf64 -o hello.o hello.asm
        # linker: links objects
        ld hello.o -o hello
        # clean
        rm hello.o

input:
        # compiler: compiles text to object
        nasm -f elf64 -o input.o input.asm
        # linker: links objects
        ld input.o -o input
        # clean
        rm input.o

nasm:
        # make sure to use a x86_64 processor
        uname -a
        # install the compiler
        sudo apt-get install nasm
