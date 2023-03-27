;User-level applications use as integer registers for passing the sequence %rdi, %rsi, %rdx, %rcx, %r8 and %r9
;ssize_t write(int fd, const void *buf, size_t count);

global ft_write
extern	__errno_location

section .text

ft_write:
    mov rax, 1
    syscall
    cmp eax, 0
    jl error
    ret

error:
    neg rax
    mov r8, rax
    call  __errno_location WRT ..plt
    mov [rax], r8
    mov rax, -1
    ret
