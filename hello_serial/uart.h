#ifndef UART_H
#define UART_H

#define IRQ_SERIAL 4

void inituart(void);
void uartputc(char ch);
int handle_uartintr(void);

#endif
