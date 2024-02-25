; boot.asm
[BITS 16]

section .text
    global _start

_start:
    ; Print "Hello, OS!" using BIOS interrupt
    mov ah, 0x0E
    mov al, 'H'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'o'
    int 0x10

    ; Infinite loop
    cli
    hlt
