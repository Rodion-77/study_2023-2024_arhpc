---
## Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "Простейший вариант"
author: "Дмитрий Сергеевич Кулябов"

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

Ознакомиться с программой Midnight commander и освоить написание программ на языке ассемблера с помощью инструкций mov и int

# Выполнение лабораторной работы

Для начала выполнения лабораторной работы нам необходимо открыть Midnight commander с помощью команды mc 

![Запуск Midnight commander](image/4-1.png)

После ввода команды мы увидим такой интерфейс 

![Интерфейс midnight commander](image/4-2.png)

С помощью стрелок и клавиши Enter перейдём в каталог ~/work/arch-pc

![Переход в нужный каталог (~/work/arch-pc)](image/4-3.png)

Создадим папку lab05 с помощью клавиши F7

![Создание папки](image/4-4.png)

Теперь с помощью команды touch создадим файл lab5-1.asm 

![Создание файла lab5-1.asm с помощью команды touch прямо в mc](image/4-5.png)

Теперь с помощью клавиши F4 откроем только что созданный файл и отредактивруем файл, поместим в него следующий код

![Выбор текстового редактора](image/4-6.png)

Теперь сохраним его клавишей F2

![Редактирование файла lab5-1.asm](image/4-7.png)

С помощью функциональной клавиши F3 откроем файл lab5-1.asm для просмотра. Убедимся, что файл содержит текст программы.

![Проверка успешного редактирования](image/4-8.png)

Теперь скомпилируем его 

![Компиляция файла с помощью nasm](image/4-9.png)

И соберём 

![Сборка исполняемого файла с помощью ld](image/4-10.png)

После этого запустим получившийся исполняемый файл 

![Запуск исполняемого файла](image/4-11.png)

Теперь введём ФИО 

![Взаимодействие с программой](image/4-12.png)

После нажатия Enter программа завершится и ничего не произойдёт. Теперь скачаем файл in_out.asm и откроем папку с ним в правой панели

![Открытие папки с файлом in_out.asm в правой панели](image/4-13.png)

Скопируем его в нашу рабочую папку с помощью F6 

![Копирование файла c помощью F6](image/4-14.png)

Теперь сделаем копию файла lab5-1.asm с помощью команды F5. Назовём копию lab5-2.asm 

![Копирование файла c помощью F5](image/4-15.png)

Теперь наша папка выглядит следующим образом 

![Текущий вид рабочей папки](image/4-16.png)

Откроем в текстовом редакторе файл lab5-2.asm и напишем туда следующий код 

![Редактирование файла lab5-2.asm](image/4-17.png)

После чего создадим исполняемый файл с помощью nasm и ld 

![Создание исполняемого файла](image/4-18.png)

Запустим созданный файл и введем ФИО

![Запуск исполняемого файла](image/4-19.png)

Он работает также, как и файл lab5-1, но использует для работы сторонний файл. Попробуем теперь вместо команды sprintLF использовать просто команду sprint 

![Изменение файла lab5-2.asm](image/4-20.png)

Точно также соберём исполняемый файл и запустим его

![Запуск изменённого файла](image/4-21.png)

Как мы видим, теперь нет переноса на следующую строку. Этим и отличаются команды sprintLF от sprint. Первая добавляет перенос после текста, а вторая нет

# Выполнение задания для самостоятельной работы

Теперь создадим с помощью F6 копию файла lab5-1.asm 

![Создание копии файла lab5-1.asm](image/4-22.png)

Изменим копию так, чтобы она выводила тот текст, который получила на ввод. Для этого перед системным вызовом exit вставим текст с системным вызовом write. Он очень похож на системный вызов write, который уже был в коде, но есть несколько отличий. Так, мы перемещаем адрес строки buf1 в ecx и размер строки buf1 (80) в edx (Рис. 3.2):

![Изменение файла lab5-1-1.asm](image/4-23.png)

Сохраним изменения и создадим исполняемый файл. Запустим его и проверим, что всё работает.

![Создание исполняемого файла](image/4-24.png)

Теперь создадим с помощью F5 копию файла lab5-2.asm 

![Создание копии файла lab5-2.asm](image/4-25.png)

Теперь сделаем так, чтобы этот код также выводил тот текст, что получит на ввод. Для этого перед последней строкой добавим строчку, которая записывает в eax адрес buf1, а также строчку, которая вызывает подпрограмму sprintLF (Рис. 3.6):

![Изменение файла lab5-2-1.asm](image/4-26.png)

Теперь создадим исполняемый файл,запустим программу и убедимся, что она работает 

![Создание исполняемого файла](image/4-27.png)

# Выводы

В результате выполнения работы были получены навыки работы с Midnight commander, а также навыки написания простых программ ввода-вывода на языке ассемблера

