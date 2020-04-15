#ifndef IO_H
#define IO_H

#define VRAM 0xb8000
#define BG_COLOR 0x1f


void initbg(void);
void print(char *msg, int n);
void printdigit(int d);


#endif
