images := $(patsubst %.S,%,$(wildcard *.S))
HELLO_C_OBJS := hello_c_asm.o hello_c.o

CC = gcc
LD = ld

CFLAGS = -m32 -MD -fno-stack-protector -fno-pic -fno-builtin -fno-strict-aliasing -fno-omit-frame-pointer -fno-pie -no-pie -nostdinc -nostdlib
LDFLAGS = -m elf_i386

all: hello_world.img protected_mode.img hello_c.img

hello_world.img: hello_world.S
	nasm -f bin -o $@.img $<

protected_mode.img: protected_mode.S
	nasm -f bin -o $@.img $<

hello_c.img: hello_c_asm.o hello_c.o
	$(LD) $(LDFLAGS) -T hello_c.ld -o hello_c.elf $^
	objcopy -S -j .text -j .sign -O binary hello_c.elf hello_c.img

hello_c_asm.o: hello_c_asm.S
	nasm -f elf32 $<

hello_c.o: hello_c.c
	$(CC) $(CFLAGS) -c $^

run:
	qemu-system-i386 -drive 'file=$(IMG_FILE),format=raw' -serial mon:stdio

debug:
	qemu-system-i386 -drive 'file=$(IMG_FILE),format=raw' -monitor stdio -s -S

gdb:
	gdb -q -x cmd.gdb

clean:
	rm -f $(images) $(HELLO_C_OBJS) hello_c.elf hello_c.img

-include *.d
