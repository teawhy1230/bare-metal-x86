image = hello_paging.img
boot_elf = bootloader.elf
boot_objs = bootasm.o bootc.o
boot_ld = bootloader.ld

main_elf = pagingtest.elf
main_objs = start.o main.o paging.o
main_ld = main.ld

CC = gcc
LD = ld

CFLAGS = -m32 -Wall -MD -fno-stack-protector -fno-pic -fno-builtin -fno-strict-aliasing -fno-omit-frame-pointer -fno-pie -no-pie -nostdinc -nostdlib -masm=intel -Wl,--build-id=none
LDFLAGS = -m elf_i386

all: $(image)

$(image): $(boot_objs) $(main_elf)
	$(LD) $(LDFLAGS) -T $(boot_ld) -o $(boot_elf) $(filter %.o,$^)
	objcopy -S -j .text -j .sign -O binary $(boot_elf) $(image)
	cat $(main_elf) >> $(image)

bootasm.o: bootasm.S
	nasm -f elf32 $<

$(main_elf): $(main_objs)
	$(CC) $(CFLAGS) -T $(main_ld) -o $@ $^

start.o: start.S
	nasm -f elf32 $<

# -O is required for enabiling function inlining
%.o: %.c
	$(CC) $(CFLAGS) -O -c $<

run: $(image)
	qemu-system-i386 -drive 'file=$(image),format=raw' -serial mon:stdio

debug: $(image)
	qemu-system-i386 -drive 'file=$(image),format=raw' -monitor stdio -s -S

gdb:
	gdb -q -x ../cmd.gdb -x cmd.gdb

monitor:
	telnet localhost 1235

clean:
	rm -f $(image) $(boot_objs) $(boot_elf) $(main_elf) $(main_objs)

-include *.d
