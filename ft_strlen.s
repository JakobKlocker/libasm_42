section .text
    global ft_strlen

ft_strlen:
    mov rax, -1
    cmp rsi, 0
    je null
    jmp loop

null:
    mov rax, 0
    ret

loop:
    inc rax
    cmp BYTE[rdi + rax], 0
    jnz loop
    ret