
.intel_syntax noprefix

.global _main

_main:
        // print title
        mov rax, 0x2000004 
        mov rdi, 1 
        lea rsi, byte ptr title[rip] 
        mov rdx, 14
        syscall

        mov rax, 0
        mov rbp, 1

        mov rcx, 11 // nth = 12
.loop_start:
        add rax, rbp
        xchg rax, rbp
        sub rcx, 1
        jnz .loop_start

        mov rax, 0x2000001      
        mov rdi, rbp
        syscall

title: 
        .asciz "Fibonacci V2!\n"
