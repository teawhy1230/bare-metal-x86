// Entry page directory

#define KERN_BASE      0xc0100000
#define KERN_PHYS_BASE 0x00100000
#define PHYS_OFFSET (KERN_BASE - KERN_PHYS_BASE)
#define PGSIZE 0x1000

#define PTE_P (1 << 0)
#define PTE_RW (1 << 1)
#define PTE_US (1 << 2)

#define PDE_P PTE_P
#define PDE_RW PTE_RW
#define PDE_US PTE_US
#define PDE_PS (1 << 7)


typedef unsigned int pde_t;
typedef unsigned int pte_t;



__attribute__((__aligned__(PGSIZE)))
pde_t entrypgdir[1024] = {
    [0] = (0 | PDE_P | PDE_RW | PDE_US | PDE_PS),
    [KERN_BASE >> 22] = (0 | PDE_P | PDE_RW | PDE_US | PDE_PS),
};
