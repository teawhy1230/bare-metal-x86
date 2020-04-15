#ifndef IOAPIC_H
#define IOAPIC_H

#include "int.h"

void initioapic(void);
void enableioapic(uint8_t irq);

#endif
