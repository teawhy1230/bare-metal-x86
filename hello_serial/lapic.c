#include "int.h"
#include "trap.h"
#include "lapic.h"


#define LA_ID (0x20 / 4)
#define LA_SIV (0xf0 / 4)
#define LA_LVT_LINT0 (0x350 / 4)
#define LA_LVT_LINT1 (0x360 / 4)
#define LA_LVT_TIMER (0x320 / 4)
#define LA_LVT_PMC (0x340 / 4)
#define LA_LVT_ERR (0x370 / 4)
#define LA_ERR_STAT (0x280 / 4)
#define LA_EOI (0xb0 / 4)
#define LA_TPR (0x80 / 4)
#define LA_DCR (0x3e0 / 4)
#define LA_INIT_CTR (0x380 / 4)

#define LA_ENABLE 0x100
#define LA_MASK 0x10000
#define LA_PERIODIC (1 << 17)
#define LA_DIVIDE_BY 0xb // 1

volatile uint32_t *lapic = (uint32_t *)0xfee00000;


void write_lapic(uint32_t index, uint32_t val) {
    lapic[index] = val;
    lapic[LA_ID];
}


void eoi(void) {
    write_lapic(LA_EOI, 0);
}


void initlapic(void) {
    write_lapic(LA_ID, 0x0);

    write_lapic(LA_SIV, (T_IRQ_BASE + IRQ_SPURIOUS) | LA_ENABLE);

    // Disable lvts that we're not going to use
    write_lapic(LA_LVT_LINT0, LA_MASK);
    write_lapic(LA_LVT_LINT1, LA_MASK);
    write_lapic(LA_LVT_PMC, LA_MASK);

    write_lapic(LA_ERR_STAT, 0);

    eoi();

    write_lapic(LA_TPR, 0);

    // Initialize timer
    // Map IRQ and configure divide by
    write_lapic(LA_DCR, LA_DIVIDE_BY);
    // Set to periodic mode
    write_lapic(LA_LVT_TIMER, LA_PERIODIC | (T_IRQ_BASE + IRQ_TIMER));
    // Set initial counter
    write_lapic(LA_INIT_CTR, 0x30000000);
}
