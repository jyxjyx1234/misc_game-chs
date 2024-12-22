.data
    extrn returnAddress: qword
    extrn get_file: qword
    extrn change_text: qword
    extrn call_addr1: qword

.code
    public _hook_replace_text

_hook_replace_text proc
    pop rax

    xor edx, edx
    mov rcx, rbx

    pushfq
    push rax 
    push rbx 
    push rcx 
    push rdx 
    push rbp 
    push rsi 
    push rdi 
    push r8 
    push r9 
    push r10 
    push r11 
    push r12 
    push r13 
    push r14 
    push r15
    push r15
    push r15
    push r15
    push r15

    lea rax, get_file
    call rax
    
    pop r15
    pop r15
    pop r15
    pop r15
    pop r15
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rdi
    pop rsi
    pop rbp
    pop rdx
    pop rcx
    pop rbx
    pop rax
    popfq

    call call_addr1

    pushfq
    push rax 
    push rbx 
    push rcx 
    push rdx 
    push rbp 
    push rsi 
    push rdi 
    push r8 
    push r9 
    push r10 
    push r11 
    push r12 
    push r13 
    push r14 
    push r15
    push r15
    push r15
    push r15
    push r15

    mov rcx, rax
    add rcx, 10h
    lea rax, change_text
    call rax
    
    pop r15
    pop r15
    pop r15
    pop r15
    pop r15
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rdi
    pop rsi
    pop rbp
    pop rdx
    pop rcx
    pop rbx
    pop rax
    popfq

    test rax, rax

    jmp returnAddress

_hook_replace_text endp
end
