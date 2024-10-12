---
## Front matter
title: "Лабораторная работа №4"
subtitle: "Создание и процесс обработки программ на языке ассемблера NASM"
author: "Павличенко Родион Андреевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---


# Цель работы

Научиться писать базовые программы на языке ассемблера NASM, компилировать их в объектные файлы и собирать из них исполняемые программы с помощью компановщика.

# Выполнение лабораторной работы

Перед выполнением лабораторной работы необходимо создать нужную директорию с помощью команды mkdir :

![Создание каталога lab4](image/image_l41.png)

Теперь переместимся в созданный нами каталог :

![Перемещение в созданный каталог](image/image_l42.png)

Теперь создадим файл hello с расширением .asm, в котором мы будем писать код на ассемблере :

![Создание .asm файлы](image/image_l43.png)

Для того, чтобы редактировать созданный файл, воспользуемся текстовым редактором gedit :

![Открытие созданного файла с помощью gedit](image/image_l44.png)

Вставим в открытый файл следующий код :

![Редактирование файла](image/image_l45.png)

Теперь нам необходимо превратить наш файл в объектный. Этим занимается транслятор NASM. Введём следующую команду :

![Компиляция файла с помощью nasm](image/image_l46.png)

Здесь мы говорим создать из файла hello.asm объектный, указывая при этом формат файла elf (с помощью аргумента -f), то есть формат, работающий в системах семейства Linux. 
Далее проверим, создался ли объектный файл с помощью команды ls:

![Проверка на успешное создание файла](image/image_l47.png)

Теперь попробуем использовать полный вариант команды NASM :

![Использование команды nasm с большим количеством аргументов](image/image_l48.png)

Здесь мы указываем, что файл hello.asm должен быть скомпилирован в файл с названием obj.o (название указывается с помощью аргумента -o) в формате elf (аргументом -f) и включить туда символы для отладки (аргумент -g). Кроме того, мы укажем, что необходимо создать файл листинга list.lst (аргументом -l). 
Проверим, создался ли файл с помощью команды ls :

![Проверка на успешное создание файлов](image/image_l49.png)

Для создания исполняемого файла необходимо использовать компоновщик ld, который соберёт объектный файл. Напишем следующую команду:

![Сборка исполняемого файла с помощью ld](image/image_l410.png)

Здесь мы указываем формат elf_i386 (с помощью аргумента -m) и файл для сборки, а аргументом -o указываем имя выходного файла. Мы назовём его hello.
Проверим, создался ли файл с помощью команды ls :

![Проверка на успешное создание исполняемого файла](image/image_l411.png)

Теперь соберём файл obj.o в файл main :

![Сборка исполняемого файла main из файла obj.o](image/image_l412.png)

Теперь проверим, создался ли файл. Снова пропишем команду ls :

![Проверка на успешное создание исполняемого файла](image/image_l413.png)

Теперь запустим файл hello, для этого мы должны написать ./ и название файла :

![Запуск исполняемого файла](image/image_l414.png)

# Выполнение задания для самостоятельной работы

Скопируем файл hello.asm в каталог ~/work/arch-pc/lab04 под названием lab4.asm :

![Копирование файла](image/image_l415.png)

Внесём изменения в скопированный файл. Для этого откроем его в gedit :

![Открытие файла для редактирования](image/image_l416.png)

Теперь изменим третью строчку, заменив фразу Hello world! на фамилию и имя :

![Процесс редактирования файла](image/image_l417.png)

Теперь скомпилируем полученный файл в объектный. Для этого воспользуемся командой nasm и укажем формат elf и нужный файл для компиляции :

![Компиляция файла в объектный](image/image_l418.png)

Теперь соберём полученный объектный файл. Укажем формат elf_i386 и объектный файл для сборки (lab4.o). Укажем, что выходной файл должен быть назван lab4 :

![Сборка объектного файла в исполняемый](image/image_l419.png)

Убедимся в том, что сделали всё правильно. Для этого запустим собранный файл :

![Запуск собранного файла](image/image_l420.png)

Теперь скопируем файл hello.asm в каталог 4 лабораторной работы :

![Копирование файла hello.asm в каталог 4 лабораторной работы](image/image_l421.png)

Эту же операцию проведём для файла lab4.asm :

![Копирование файла lab4.asm в каталог 4 лабораторной работы](image/image_l422.png)
Теперь загрузим результат проделанной лабораторной работы на GitHub :

![Загрузка проделанной работы на GitHub](image/image_l423.png)

# Выводы

В результате выполнения лабораторной работы появилось понимание того, как работает алгоритм создания исполняемого файла из кода на ассемблере, а также появились навыки работы с языком nasm, компиляции кода в объектный файл и сборкой исполняемых программ.
