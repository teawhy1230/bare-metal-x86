#include "int.h"
#include "asm.h"
#include "trap.h"
#include "lapic.h"
#include "ioapic.h"
#include "uart.h"
#include "io.h"


void _start(void) {
    disable_pic();
    initidt();
    initlapic();
    initioapic();
    inituart();

    enableioapic(IRQ_SERIAL);

    lidt();
    sti();

    puts("Hello from serial!");
    puts("You can now type anything you want");
}
