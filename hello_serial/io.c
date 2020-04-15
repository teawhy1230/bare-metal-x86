#include "io.h"
#include "uart.h"


unsigned int strlen(const char *s) {
    unsigned int ret = 0;
    while (s[ret++])
        ;
    return ret;
}


int puts(const char *s) {
    unsigned int i, len;
    len = strlen(s);
    for (i = 0; i < len; i++) {
        uartputc(s[i]);
    }
    return 1;
}
