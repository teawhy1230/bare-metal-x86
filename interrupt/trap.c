#include "asm.h"
#include "int.h"


void show_message(void);


#define IDT_P (1 << 7) // 1 for valid entry in use
#define IDT_S (0 << 4) // always 0 for trap and interrupt gates
#define IDT_TYPE_TRAP 0x7
#define IDT_TYPE_INT  0xe

#define IDT_NUM_GATES 33


struct idtentry {
    uint16_t offset_1;
    uint16_t selector;
    uint8_t zero;
    uint8_t type_attr;
    uint16_t offset_2;
};


struct idtentry idttable[IDT_NUM_GATES];


static inline void
set_trapgate(struct idtentry *entry, uint32_t offset, uint16_t selector, uint8_t dpl) {
    entry->offset_1 = offset & 0xffff;
    entry->selector = selector;
    entry->zero = 0;
    entry->type_attr = (uint8_t)(IDT_P | dpl | IDT_S | IDT_TYPE_TRAP);
    entry->offset_2 = (offset >> 16) & 0xffff;
}


static inline void
set_intgate(struct idtentry *entry, uint32_t offset, uint16_t selector, uint8_t dpl) {
    entry->offset_1 = offset & 0xffff;
    entry->selector = selector;
    entry->zero = 0;
    entry->type_attr = (uint8_t)(IDT_P | dpl | IDT_S | IDT_TYPE_INT);
    entry->offset_2 = (offset >> 16) & 0xffff;
}


void disable_pic(void) {
    outb(0xa1, 0xff);
    outb(0xa1, 0xff);
}


void loop(void) {
label:
    goto label;
}


volatile uint8_t idtr[6];
static inline void lidt() {
    volatile uint8_t *idtr_p = idtr;
    *(uint16_t *)(idtr_p) = sizeof(struct idtentry) * IDT_NUM_GATES - 1;
    *(uint32_t *)(idtr_p + 2) = (uint32_t)idttable;

    __asm__ volatile (
            "lidt [%0]" :
            :
            "r" (idtr)
            );

}


// Configure idt
void initidt(void) {
    int i;
    for (i = 0; i < 32; i++) {
        set_trapgate(idttable + i, (uint32_t)loop, 2 << 3, 0);
    }
    for (i = 32; i < IDT_NUM_GATES; i++) {
        set_intgate(idttable + i, (uint32_t)loop, 2 << 3, 0);
    }
}


void set_trap(int trapno, void (*handler)(void)) {
    // TODO
    // Don't know why but it doesn't work when dpl != 0.
    // Maybe invalid TSS exception?
    set_intgate(idttable + trapno, (uint32_t)handler, 2 << 3, 0);
    lidt();
}
