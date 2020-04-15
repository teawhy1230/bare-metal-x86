#include "int.h"
#include "ioapic.h"
#include "trap.h"

#define IOAPIC 0xfec00000

#define IA_VER 0x01
#define IA_REDIRECTION_BASE 0x10
#define IA_ENTRY_MASK (1 << 16)


volatile uint32_t *ioapic = (uint32_t *)IOAPIC;


uint32_t readioapic(uint32_t reg) {
    ioapic[0] = (reg & 0xff);
    return ioapic[4];
}


void writeioapic(uint32_t reg, uint32_t val) {
    ioapic[0] = (reg & 0xff);
    ioapic[4] = val;
}


void initioapic(void) {
    uint32_t i;
    uint32_t max_ent = (readioapic(IA_VER) >> 16) & 0xff;

    for (i = 0; i < max_ent; i++) {
        writeioapic(IA_REDIRECTION_BASE + i * 2, IA_ENTRY_MASK | (T_IRQ_BASE + i));
        writeioapic(IA_REDIRECTION_BASE + i * 2 + 1, 0);
    }
}


void enableioapic(uint8_t irq) {
    // Map IRQ #irq to trigger interrupt #(T_IRQ_BASE + irq)
    writeioapic(IA_REDIRECTION_BASE + irq * 2, T_IRQ_BASE + irq);
    writeioapic(IA_REDIRECTION_BASE + irq * 2 + 1, 0);
}
