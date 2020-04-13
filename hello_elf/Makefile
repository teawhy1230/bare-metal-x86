image = hello_elf.img

CC = gcc
LD = ld

CFLAGS = -m32 -Wall -MD -fno-stack-protector -fno-pic -fno-builtin -fno-strict-aliasing -fno-omit-frame-pointer -fno-pie -no-pie -nostdinc -nostdlib -masm=intel
LDFLAGS = -m elf_i386

all: $(image)

$(image): hello_elf_asm.o hello_elf.o start
	$(LD) $(LDFLAGS) -T hello_elf.ld -o hello_elf.elf $(filter %.o,$^)
	objcopy -S -j .text -j .sign -O binary hello_elf.elf hello_elf.img
	cat start >> hello_elf.img

hello_elf_asm.o: hello_elf_asm.S
	nasm -f elf32 $<

start: start.o
	$(CC) $(CFLAGS) -T start.ld -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -O -c $<

run:
	qemu-system-i386 -drive 'file=$(image),format=raw' -serial mon:stdio

debug:
	qemu-system-i386 -drive 'file=$(image),format=raw' -monitor stdio -s -S

gdb:
	gdb -q -x ../cmd.gdb -x cmd.gdb

clean:
	rm -f $(image) hello_elf_asm.o hello_elf.o hello_elf.elf start.o start

-include *.d
