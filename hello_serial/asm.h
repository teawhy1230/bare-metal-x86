#ifndef ASM_H
#define ASM_H

#include "int.h"

static inline void outb(uint16_t port, uint8_t data) {
    __asm__ volatile (
            "out %0, %1\n\t" :
            :
            "d" (port), "a" (data) :
            );
}


static inline uint8_t inb(uint16_t port) {
    uint8_t ret;
    __asm__ volatile (
            "in %0, %1\n\t" :
            "=a" (ret):
            "d" (port) :
            );
    return ret;
}


static inline void insd(uint16_t port, char *dst, uint32_t cnt) {
    __asm__ volatile (
            "cld\n\t"
            "rep insd\n\t" :
            "=D" (dst), "=c" (cnt) :
            "d" (port), "0" (dst), "1" (cnt) :
            "cc", "memory"
            );
}


static inline void cli(void) {
    __asm__ volatile ("cli");
}


static inline void sti(void) {
    __asm__ volatile ("sti");
}


#endif
