image = hello_timer.img
boot_elf = bootloader.elf
boot_objs = bootasm.o bootc.o
boot_ld = hello_timer.ld

main_elf = timertest.elf
main_objs = main.o trap.o lapic.o io.o vector.o 
main_ld = timertest.ld

CC = gcc
LD = ld

CFLAGS = -m32 -Wall -MD -fno-stack-protector -fno-pic -fno-builtin -fno-strict-aliasing -fno-omit-frame-pointer -fno-pie -no-pie -nostdinc -nostdlib -masm=intel
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

vector.o: gen_vector.py
	python3 gen_vector.py
	nasm -f elf32 vector.S

# -O is required for enabiling function inlining
%.o: %.c
	$(CC) $(CFLAGS) -O -c $<

run: $(image)
	qemu-system-i386 -drive 'file=$(image),format=raw' -serial mon:stdio

debug: $(image)
	qemu-system-i386 -drive 'file=$(image),format=raw' -monitor stdio -s -S

gdb:
	gdb -q -x ../cmd.gdb -x cmd.gdb

clean:
	rm -f $(image) $(boot_objs) $(boot_elf) $(main_elf) $(main_objs)

-include *.d
