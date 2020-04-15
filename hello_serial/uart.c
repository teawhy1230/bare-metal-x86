#include "int.h"
#include "asm.h"

#define COM1 0x3f8
#define UART_STAT_REG_EMPTY (1 << 5)


static void delay() {
}


void inituart(void) {
    // Disable FIFO
    outb(COM1 + 2, 0);

    // Enable dlab
    outb(COM1 + 3, 0x80);
    // Configure baud rate
    outb(COM1 + 0, 115200 / 9600);
    outb(COM1 + 1, 0);
    // 8 bits, no parity, one stop, dlab low
    outb(COM1 + 3, 0x03);
    // Clear modem control register (no idea why)
    outb(COM1 + 4, 0);
    // Disable interrupt
    outb(COM1 + 1, 0);

    // read from interrupt identification register
    inb(COM1 + 2);
    // read from data register
    inb(COM1 + 0);
}


void uartputc(char ch) {
    while (!(inb(COM1 + 5) & UART_STAT_REG_EMPTY))
        delay();

    outb(COM1 + 0, ch);
}
