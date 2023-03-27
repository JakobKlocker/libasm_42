;User-level applications use as integer registers for passing the sequence %rdi, %rsi, %rdx, %rcx, %r8 and %r9
section .text
    global ft_strcpy

ft_strcpy:
    mov rax, -1
    cmp rdi, 0
    je null
    cmp rsi, 0
    je null
    jmp loop

loop:
    inc rax
    cmp byte[rsi + rax], 0
    jz return
    mov r8, [rsi + rax]
    mov [rdi + rax], r8
    jmp loop

null:
    mov rax, 0
    ret

return:
    mov byte[rdi + rax], 0
    mov rax, rdi
    ret