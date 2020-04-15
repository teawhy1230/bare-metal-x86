ENTRY(_start)

SECTIONS
{
    . = 0x10000 + SIZEOF_HEADERS;
    .text : {
        *(.text)
        *(.rodata)
        *(.data)
        *(.bss)
    }
}
