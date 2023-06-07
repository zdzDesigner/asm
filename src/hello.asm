mov ax, 3
int 0x10 ; 将显示模式设置为文本模式



xchg bx, bx

mov ax, 0x1111
mov bx, 0x2222

mov al, 0x3

; mov ax, 0xb800
; mov ds, ax

; mov byte [0], 'H'
; mov byte [2], 'e'
; mov byte [4], 'l'
; mov byte [6], 'l'
; mov byte [8], 'o'
; mov byte [10], 'w'




halt:
    jmp halt



times 510 - ($ - $$) db 0
db 0x55, 0xaa
