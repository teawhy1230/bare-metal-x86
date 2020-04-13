#define uint32_t unsigned int
#define uint16_t unsigned short
#define uint8_t unsigned char

#define SECT_SIZE 512

#define ALIGN_SECT(x) \
    ((x + SECT_SIZE - 1) & ~(SECT_SIZE - 1))

#define RDY (1 << 6)
#define BSY (1 << 7)

#define CHECK_READY(status) \
    ((status & (RDY | BSY)) == RDY)


typedef struct {
    uint8_t e_ident[16];
    uint16_t e_type;
    uint16_t e_machine;
    uint32_t e_version;
    uint32_t e_entry;
    uint32_t e_phoff;
    uint32_t e_shoff;
    uint32_t e_flags;
    uint16_t e_ehsize;
    uint16_t e_phentsize;
    uint16_t e_phnum;
    uint16_t e_shentsize;
    uint16_t e_shnum;
    uint16_t e_shstrndx;
} Elf32_Ehdr;


typedef struct {
    uint32_t p_type;
    uint32_t p_offset;
    uint32_t p_vaddr;
    uint32_t p_paddr;
    uint32_t p_filesz;
    uint32_t p_memsz;
    uint32_t p_flags;
    uint32_t p_align;
} Elf32_Phdr;


typedef void (*func_t)(void);


static inline void outb(uint16_t port, uint8_t data) {
    __asm__ volatile (
            "out %0, %1\n\t" :
            :
            "d" (port), "a" (data) :
            );
}


static inline uint8_t inb(uint16_t port) {
    uint8_t ret;
    __asm__ volatile (
            "in %0, %1\n\t" :
            "=a" (ret):
            "d" (port) :
            );
    return ret;
}


static inline void insd(uint16_t port, char *dst, uint32_t cnt) {
    __asm__ volatile (
            "cld\n\t"
            "rep insd\n\t" :
            "=D" (dst), "=c" (cnt) :
            "d" (port), "0" (dst), "1" (cnt) :
            "cc", "memory"
            );
}


static inline uint8_t status(void) {
    return inb(0x1f7);
}


static char *read_sector(char *dst, uint32_t lba) {
    while (!CHECK_READY(status()))
        ;

    outb(0x1f6, 0xe0 | ((lba >> 24) & 0xf));
    outb(0x1f2, 1); // number of sectors to read
    outb(0x1f3, (uint8_t)(lba));
    outb(0x1f4, (uint8_t)(lba >> 8));
    outb(0x1f5, (uint8_t)(lba >> 16));

    outb(0x1f7, 0x20); // emit read command

    while (!CHECK_READY(status()))
        ;

    insd(0x1f0, dst, SECT_SIZE / 4);

    return dst + SECT_SIZE;
}


static char *read_disk(char *dst, uint32_t disk_offset, uint32_t count) {
    char *end = dst + count;
    char *p;

    uint32_t segment_sector, segment_offset;
    // lba of the sector the segment is stored
    segment_sector = disk_offset / SECT_SIZE;
    // offset of the exact place the segment is stored inside the sector
    segment_offset = disk_offset % SECT_SIZE;

    p = dst - segment_offset;
    while (p < end) {
        p = read_sector(p, segment_sector++);
    }

    return end;
}


static char *load_segment(char *dst, Elf32_Phdr *phdr) {
    dst = read_disk(dst, SECT_SIZE + phdr->p_offset, phdr->p_filesz);
    uint32_t i;
    for (i = 0; i < phdr->p_memsz - phdr->p_filesz; i++) {
        *dst++ = '\x00';
    }
    return dst;
}


void bootmain(void) {
    char *p = (char *)0x10000;
    Elf32_Ehdr *ehdr = (Elf32_Ehdr *)p;

    // read elf header and program header
    p = read_disk(p, SECT_SIZE * 1, SECT_SIZE);

    int i;
    for (i = 0; i < ehdr->e_phnum; i++) {
        Elf32_Phdr *phdr = (Elf32_Phdr *)((char *)ehdr + ehdr->e_phoff + i * sizeof(Elf32_Phdr));
        p = load_segment(p, phdr);
    }

    func_t entry = (func_t)ehdr->e_entry;
    entry();
}
