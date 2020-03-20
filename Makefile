images := $(patsubst %.img,%.S,$(wildcard *.S))


hello_world: hello_world.S
	nasm -f bin -o $@.img $<

run:
	qemu-system-i386 -drive 'file=$(IMG_FILE),format=raw' -serial mon:stdio
