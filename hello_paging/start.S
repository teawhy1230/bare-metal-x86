bits 32


%define VIRT_PHYS_OFFSET 0xc0000000
%define VIRT_TO_PHYS(addr) (addr - VIRT_PHYS_OFFSET)

global _start
extern entrypgdir
extern main

_start equ (start_virt - VIRT_PHYS_OFFSET)

section .text
start_virt:
    mov eax, cr4
    or eax, (1 << 4) ; Enable 4MB page size
    mov cr4, eax

    mov eax, VIRT_TO_PHYS(entrypgdir)
    mov cr3, eax

    mov eax, cr0
    or eax, ((1 << 16) | (1 << 31))
    mov cr0, eax

    mov eax, main
    jmp eax
