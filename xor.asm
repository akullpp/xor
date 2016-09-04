section .text
        global _start
_start:
        xor ecx,ecx
        mov ebp,0x63
        jmp loop
loop:
        cmp ecx,0x1
        jbe crypt
        jmp exit
crypt:
        lea eax,[ebp]
        add eax,ecx
        mov ebx,eax
        xor ebx,0x55
        mov edx,ebx
        inc ecx
        jmp write
write:
        mov eax,0x4
        mov ebx,0x1
        mov ecx,0x1
        mov edx,
        int 0x80
exit:   
        mov eax,0x1
        mov ebx,0x0
        int 0x80
