image = hello_c.img

CC = gcc
LD = ld

CFLAGS = -m32 -MD -fno-stack-protector -fno-pic -fno-builtin -fno-strict-aliasing -fno-omit-frame-pointer -fno-pie -no-pie -nostdinc -nostdlib
LDFLAGS = -m elf_i386

all: hello_c.img

hello_c.img: hello_c_asm.o hello_c.o
	$(LD) $(LDFLAGS) -T hello_c.ld -o hello_c.elf $^
	objcopy -S -j .text -j .sign -O binary hello_c.elf hello_c.img

hello_c_asm.o: hello_c_asm.S
	nasm -f elf32 $<

%.o: %.c
	$(CC) $(CFLAGS) -c $<

run:
	qemu-system-i386 -drive 'file=hello_c.img,format=raw' -serial mon:stdio

debug:
	qemu-system-i386 -drive 'file=hello_c.img,format=raw' -monitor stdio -s -S

gdb:
	gdb -q -x ../cmd.gdb

clean:
	rm -f hello_c.img hello_c_asm.o hello_c.o hello_c.elf

-include *.d
