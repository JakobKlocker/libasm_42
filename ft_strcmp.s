;User-level applications use as integer registers for passing the sequence %rdi, %rsi, %rdx, %rcx, %r8 and %r9
section .text
    global ft_strcmp

ft_strcmp:
    mov rax, -1
    cmp rdi, 0
    je null
    cmp rsi, 0
    je null
    jmp loop

loop:
    inc rax

    mov r8b, byte [rdi + rax]
    mov r9b, byte [rsi + rax]

    cmp byte[rdi + rax], byte 0
    je return
    cmp byte[rsi + rax], byte 0
    je return

    cmp r8b, r9b
    jne return
    jmp loop

null:
    mov rax, 0
    ret

return:
    sub r8b, r9b
    movsx rax, r8b
    ret
