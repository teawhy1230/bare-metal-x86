NUM_VECTORS = 256


def main():
    header = """bits 32

extern handle_trap

section .text
"""

    vectors = ""
    for i in range(NUM_VECTORS):
        vectors += """
global vector{trapnum}
vector{trapnum}:
    pushad
    push {trapnum}
    cld
    call handle_trap
    add esp, 4
    popad
    iret
""".format(trapnum=i)

    vector_table = """

global vector_table
vector_table:"""
    for i in range(NUM_VECTORS):
        vector_table += """
    dd vector{trapnum}""".format(trapnum=i)

    with open("vector.S", "w") as f:
        f.write(header + vectors + vector_table)


if __name__ == '__main__':
    main()
