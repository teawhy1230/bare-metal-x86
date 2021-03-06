bits 16


%define nullentry dq 0

%define RW (1 << 1)
%define Ex (1 << 3)

; gdtentry permission, base, limit
%macro gdtentry 3
    dw (%3 & 0xffff) ; limit 0:15
    dw (%2 & 0xffff)
    db ((%2 >> 16) & 0xff)
    db (0x90 | %1) ; access byte
    db (0xc0 | (%3 >> 16) & 0xf) ; flags | limit 16:19
    db (%2 >> 24) & 0xff
%endmacro


sectors equ 18
cylinders equ 20
heads equ 2


extern bootmain


section .text

boot:
    cli
    xor ax, ax
    mov ds, ax
    mov ss, ax

waitkbd1:
    in al, 0x64
    test al, 2
    jnz waitkbd1

    mov al, 0xd1
    out 0x64, al

waitkdb2:
    in al, 0x64
    test al, 2
    jnz waitkdb2

    mov al, 0xdf
    out 0x60, al

; Wait until the enabling of A20 is finished
waitkdb3:
    in al, 0x64
    test al, 2
    jnz waitkdb3

; load gdt
    lgdt [gdtdesc]

; Set PE bit to 1
    mov eax, cr0
    or al, 1
    mov cr0, eax

; Enter protected mode
    jmp (2 << 3):protected

bits 32
protected:
    mov eax, (1 << 3)
    mov ds, eax
    mov es, eax
    mov fs, eax
    mov gs, eax
    mov ss, eax
    mov esp, boot
    call bootmain
fin:
    hlt
    jmp fin


align 4
gdt:
    nullentry
    gdtentry RW, 0x00000000, 0xffffffff
    gdtentry Ex, 0x00000000, 0xffffffff

gdtdesc:
    dw 8 * 3 - 1 ; size
    dd gdt ; offset
