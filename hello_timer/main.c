#include "int.h"
#include "asm.h"
#include "trap.h"
#include "lapic.h"
#include "io.h"


char errmsg[] = "Oops! Something unexpected happened!";
char tmrmsg[] = "Hello from timer (not seconds)";


void show_errmsg(void) {
    initbg();
    print(errmsg, sizeof(errmsg));
}


void show_tmrmsg(void) {
    print(tmrmsg, sizeof(tmrmsg));
}


void _start(void) {
    // Disable pic
    disable_pic();
    // initialize idt
    initidt();
    // maybe idt has to be loaded after init_lapic
    initlapic();

    lidt();

    // __asm__ volatile ("int 0x80; hlt");

    sti();
}
