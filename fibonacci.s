
.intel_syntax noprefix

.global _main

_main:
        // print title
        mov rax, 0x2000004 
        mov rdi, 1 
        lea rsi, byte ptr title[rip] 
        mov rdx, 11
        syscall

        mov rax, 0
        mov rbp, 1

        xor rcx, rcx
.loop_start:
        add rax, rbp
        xchg rax, rbp
        inc rcx
        cmp rcx, 11 // nth = 12
        jl .loop_start

        mov rax, 0x2000001      
        mov rdi, rbp
        syscall

title: 
        .asciz "Fibonacci!\n"
