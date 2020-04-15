#include "int.h"
#include "asm.h"

#define COM1 0x3f8
#define UART_STAT_REG_READY (1 << 0)
#define UART_STAT_REG_EMPTY (1 << 5)

#define DEL 0x7f


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
    // Enable interrupt
    outb(COM1 + 1, 0x01);

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


int uartgetc(void) {
    int ret;
    if (!(inb(COM1 + 5) & UART_STAT_REG_READY))
        return -1;
    ret = inb(COM1 + 0);
    if (ret == '\r') {
        ret = '\n';
    }
    return ret;
}


int handle_uartintr(void) {
    int ret = uartgetc();
    // echo back input from keyboard
    // so it will be shown on the console
    if (ret == DEL) {
        uartputc('\b');
        uartputc(' ');
        uartputc('\b');
    } else {
        uartputc(ret);
    }
    return ret;
}
