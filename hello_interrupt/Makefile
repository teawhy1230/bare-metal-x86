image = hello_int.img

CC = gcc
LD = ld

CFLAGS = -m32 -Wall -MD -fno-stack-protector -fno-pic -fno-builtin -fno-strict-aliasing -fno-omit-frame-pointer -fno-pie -no-pie -nostdinc -nostdlib -masm=intel
LDFLAGS = -m elf_i386

all: $(image)

$(image): bootasm.o bootc.o traptest.elf
	$(LD) $(LDFLAGS) -T hello_int.ld -o hello_int.elf $(filter %.o,$^)
	objcopy -S -j .text -j .sign -O binary hello_int.elf hello_int.img
	cat traptest.elf >> hello_int.img

bootasm.o: bootasm.S
	nasm -f elf32 $<

traptest.elf: main.o trap.o
	$(CC) $(CFLAGS) -T traptest.ld -o $@ $^

# bootc.o: bootc.c
# 	$(CC) $(CFLAGS) -O -c $<

%.o: %.c
	$(CC) $(CFLAGS) -O -c $<

run: $(image)
	qemu-system-i386 -drive 'file=$(image),format=raw' -serial mon:stdio

debug: $(image)
	qemu-system-i386 -drive 'file=$(image),format=raw' -monitor stdio -s -S

gdb:
	gdb -q -x ../cmd.gdb -x cmd.gdb

clean:
	rm -f $(image) bootasm.o bootc.o traptest main.o trap.o hello_int.img hello_int.elf traptest.elf

-include *.d
