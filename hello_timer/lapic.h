#ifndef LAPIC_H
#define LAPIC_H


#define IRQ_TIMER 0
#define IRQ_SPURIOUS 7

void eoi(void);
void initlapic(void);

#endif
