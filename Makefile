images := $(patsubst %.S,%,$(wildcard *.S))


all: $(images)


hello_world: hello_world.S
	nasm -f bin -o $@.img $<

protected_mode: protected_mode.S
	nasm -f bin -o $@.img $<

run:
	qemu-system-i386 -drive 'file=$(IMG_FILE),format=raw' -serial mon:stdio

debug:
	qemu-system-i386 -drive 'file=$(IMG_FILE),format=raw' -monitor stdio -s -S

gdb:
	gdb -q -x cmd.gdb
