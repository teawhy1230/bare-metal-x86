#include "int.h"
#include "asm.h"
#include "trap.h"


#define VRAM 0xb8000
#define BG_COLOR 0x1f


char msg[] = "Hello from interrupt";


void initbg() {
    int i;
    short *now = (short *)VRAM;
    for (i = 0; i < 2000; i++) {
        *now = BG_COLOR << 8;
        now++;
    }
}


void print(char *msg, int n) {
    int i;
    char *now = (char *)VRAM;
    for (i = 0; i < n; i++) {
        *now = msg[i];
        now += 2;
    }
}


void show_message(void) {
    initbg();
    print(msg, sizeof(msg));
}


void _start(void) {
    // Disable pic
    disable_pic();
    // initialize idt
    initidt();
    set_trap(32, show_message);

    sti();

    __asm__ volatile ("int 32; hlt");
}
