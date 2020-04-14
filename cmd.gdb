target remote localhost:1234
b *0x7c00

define context
echo [registers]\n
info registers
echo [stack]\n
x/24lx $esp
echo [code]\n
x/24i $eip
end

c
