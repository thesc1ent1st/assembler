; x86 assembler.
; the-scientist@rootstorm.com
; spl0its-r-us security
; 
; nasm -f elf -o outfile.o outfile.asm
; ld -m elf_i386 outfile.o -o a.out 

[BITS 32]
global _start
_start:
db 0x8b,0x02
db 0xeb,0x03
db 0x8b,0x02
db 0x90
db 0x90
db 0x31,0xc0
db 0x90
db 0xeb,0xf3
db 0x90
db 0xb8,0x01,0x00,0x00,0x00
db 0xb8,0x00,0x00,0x00,0x00
db 0xcd,0x80
db 0x90