ORG 0x7c00
bits 16

boot:
    xor ax, ax
    mov ds, ax

    ; vram is at 0xb8000
    mov di, 0xb800
    mov es, di

    ; init background
    mov ah, 0x1f
    xor di, di
    mov cx, 2000
    rep stosw

    ; output message
    xor di, di
    mov si, message
loop:
    mov ah, [si]
    test ah, ah
    jz cursor
    mov [es:di], ah
    mov byte [es:di+1], 0x1f
    inc si
    add di, 2
    jmp loop

cursor:
    ; enable cursor
    mov dx, 0x3d4
    mov al, 0xa
    out dx, al
    inc dx
    mov al, 0xb
    out dx, al
    ; set cursor position at (0, 0)
    mov dx, 0x3d4
    mov al, 0xf
    out dx, al
    inc dx
    mov al, 0x0
    out dx, al
    mov dx, 0x3d4
    mov al, 0xe
    out dx, al
    inc dx
    mov al, 0x0
    out dx, al
fin:
    hlt
    jmp fin

message:
    db "Hello world"


times 510-($-$$) db 0x0

sign:
    db 0x55
    db 0xaa
