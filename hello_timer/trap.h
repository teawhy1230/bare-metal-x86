#ifndef TRAP_H
#define TRAP_H

#include "asm.h"
#include "int.h"

#define NUM_TRAPS 256

#define IDT_NUM_GATES 256

void disable_pic(void);
void hlt(void);
void initidt(void);
void set_trap(int trapno, void (*handler)(void));


#define T_MSG 80
#define T_IRQ_BASE 32

struct idtentry {
    uint16_t offset_1;
    uint16_t selector;
    uint8_t zero;
    uint8_t type_attr;
    uint16_t offset_2;
};


void lidt(void);

#endif
