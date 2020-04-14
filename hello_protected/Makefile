image = protected_mode.img

CC = gcc
LD = ld

CFLAGS = -m32 -MD -fno-stack-protector -fno-pic -fno-builtin -fno-strict-aliasing -fno-omit-frame-pointer -fno-pie -no-pie -nostdinc -nostdlib
LDFLAGS = -m elf_i386

all: $(image)

%.img: %.S
	nasm -f bin -o $@ $<

run:
	qemu-system-i386 -drive 'file=$(image),format=raw' -serial mon:stdio

debug:
	qemu-system-i386 -drive 'file=$(image),format=raw' -monitor stdio -s -S

gdb:
	gdb -q -x cmd.gdb

clean:
	rm -f $(image)

-include *.d
