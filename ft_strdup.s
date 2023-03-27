;User-level applications use as integer registers for passing the sequence %rdi, %rsi, %rdx, %rcx, %r8 and %r9

global ft_strdup
extern malloc
extern ft_strlen

section .text

ft_strdup:
    cmp rdi, 0
    je  error
    push rdi
    call ft_strlen
    inc rax
    mov rdi, rax  
    call malloc  WRT ..plt
    cmp rax, 0
    je error
    pop rdi
    mov r8, -1
    jmp loop

loop:
    inc r8
    cmp byte [rdi + r8], 0
    je return
    mov r9b, byte[rdi + r8]
    mov byte[rax + r8], r9b
    jmp loop

return:
    mov byte [rax + r8], 0 ;add null byte
    ret

error:
    mov rax, 0
    ret