ENTRY(_start)

SECTIONS
{
    . = 0xc0100000 + SIZEOF_HEADERS;
    .text : AT(ADDR(.text) - 0xc0000000) {
        *(.text)
        *(.rodata)
        *(.data)
        *(.bss)
    }

    /DISCARD/ : {
        *(.eh_frame .note.gnu.build-id)
    }
}
