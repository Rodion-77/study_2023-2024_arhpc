;--------------------------------
; Программа вычисления варианта
;--------------------------------
%include 'in_out.asm'
SECTION .data
msg: DB 'Выражение для вычисления: (12 * X + 3) * 5', 0
rem: DB 'Введите X: ', 0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov eax, rem
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax, x
call atoi ; Преобразование ASCII кода в число, результат в eax
mov ebx, 12
mul ebx         ; eax = eax * 12
add eax, 3      ; eax = eax + 3
mov ebx, 5
mul ebx         ; eax = eax * 5
call iprintLF
call quit
