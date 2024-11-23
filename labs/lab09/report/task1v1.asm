%include 'in_out.asm'
SECTION .data
msg db "Результат: ", 0
msg2 db "Функция: f(x) = 2x + 15", 0
SECTION .text
global _start
_start:
pop ecx           ; Извлекаем количество аргументов
pop edx           ; Извлекаем имя программы
sub ecx, 1        ; Уменьшаем ecx (только аргументы, без имени программы)
mov esi, 0        ; Обнуляем промежуточную сумму
next:
cmp ecx, 0h       ; Проверяем, остались ли аргументы
jz _end           ; Если нет, переходим к завершению программы
pop eax           ; Извлекаем следующий аргумент из стека
call atoi         ; Преобразуем строку в число
call _calcul      ; Вызываем подпрограмму вычисления f(x)
add esi, eax      ; Добавляем результат к промежуточной сумме
loop next         ; Переход к обработке следующего аргумента
_end:
mov eax, msg2     ; Выводим описание функции
call sprintLF
mov eax, msg      ; Выводим сообщение "Результат: "
call sprint
mov eax, esi      ; Передаем результат в регистр eax
call iprintLF     ; Выводим результат
call quit         ; Завершаем программу
_calcul:
mov ebx, 2        ; Подготовка множителя для функции f(x)
mul ebx           ; eax = eax * 2
add eax, 15       ; eax = eax + 15
ret               ; Возврат из подпрограммы
