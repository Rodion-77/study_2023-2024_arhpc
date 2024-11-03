%include 'in_out.asm'
section .data
msg1 DB "Введите X: ",0h
msg2 DB "Введите A: ",0h
msg3 DB "Ответ=",0h
section .bss
x: RESB 80
a: RESB 80
ans: RESB 80
section .text
global _start
_start:
; Ввод x
mov eax, msg1
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax, x
call atoi
mov [x], eax
; Ввод a
mov eax, msg2
call sprint
mov ecx, a
mov edx, 80
call sread
mov eax, a
call atoi
mov [a], eax
; Проверка условий
mov eax, [x]
cmp eax, [a]
jl less_than_a      ; Переход, если x < a
jmp greater_equal_a ; Переход, если x >= a
less_than_a:
; Если x < a, то ans = a - 1
mov eax, [a]
sub eax, 1
jmp save_result
greater_equal_a:
; Если x >= a, то ans = 8
mov eax, 8
save_result:
; Сохранение результата в ans
mov [ans], eax
; Вывод результата
mov eax, msg3
call sprint
mov eax, [ans]
call iprintLF
call quit
