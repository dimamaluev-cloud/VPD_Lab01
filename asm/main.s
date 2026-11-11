.intel_syntax noprefix

.section .rodata
message:
    .asciz "Hello to 304 from Maluev Dmitriy Sergeevich, number 11, group M3O-110BVk-26!"

.section .text
.globl main
.extern puts

main:
    sub rsp, 40
    lea rcx, [rip + message]
    call puts
    xor eax, eax
    add rsp, 40
    ret