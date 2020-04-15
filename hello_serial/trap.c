#include "trap.h"
#include "int.h"
#include "lapic.h"
#include "asm.h"
#include "io.h"


#define IDT_P (1 << 7) // 1 for valid entry in use
#define IDT_S (0 << 4) // always 0 for trap and interrupt gates
#define IDT_TYPE_TRAP 0xf
#define IDT_TYPE_INT  0xe

extern uint32_t vector_table[NUM_TRAPS];


struct idtentry idttable[IDT_NUM_GATES];


static inline void
set_trapgate(struct idtentry *entry, uint32_t offset, uint16_t selector, uint8_t dpl) {
    entry->offset_1 = offset & 0xffff;
    entry->selector = selector;
    entry->zero = 0;
    entry->type_attr = (uint8_t)(IDT_P | ((dpl & 0x3) << 0x5) | IDT_S | IDT_TYPE_TRAP);
    entry->offset_2 = (offset >> 16) & 0xffff;
}


static inline void
set_intgate(struct idtentry *entry, uint32_t offset, uint16_t selector, uint8_t dpl) {
    entry->offset_1 = offset & 0xffff;
    entry->selector = selector;
    entry->zero = 0;
    entry->type_attr = (uint8_t)(IDT_P | ((dpl & 0x3) << 0x5) | IDT_S | IDT_TYPE_INT);
    entry->offset_2 = (offset >> 16) & 0xffff;
}


void disable_pic(void) {
    outb(0xa1, 0xff);
    outb(0x21, 0xff);
}


void loop(void) {
label:
    goto label;
}


void handle_trap(int trapno) {
    switch(trapno) {
        case T_IRQ_BASE + IRQ_TIMER:
            eoi();
            break;
        case T_IRQ_BASE + IRQ_SPURIOUS:
            eoi();
            break;
        default:
            loop();
            break;
    }
}


// Configure idt
void initidt(void) {
    int i;
    for (i = 0; i < 32; i++) {
        set_trapgate(idttable + i, vector_table[i], 2 << 3, 0);
    }
    for (i = 32; i < IDT_NUM_GATES; i++) {
        set_trapgate(idttable + i, vector_table[i], 2 << 3, 3);
    }
}


volatile uint8_t idtr[6];
void lidt(void) {
    volatile uint8_t *idtr_p = idtr;
    *(uint16_t *)(idtr_p) = sizeof(struct idtentry) * IDT_NUM_GATES - 1;
    *(uint32_t *)(idtr_p + 2) = (uint32_t)idttable;

    __asm__ volatile (
            "lidt [%0]" :
            :
            "r" (idtr)
            );
}
