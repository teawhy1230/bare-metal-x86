#include "io.h"

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


void printdigit(int d) {
    char ch = d + '0';
    print(&ch, 1);
}
