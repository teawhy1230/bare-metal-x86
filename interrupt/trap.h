#ifndef TRAP_H
#define TRAP_H

#include "asm.h"
#include "int.h"

void disable_pic(void);
void hlt(void);
void initidt(void);
void set_trap(int trapno, void (*handler)(void));

#endif
