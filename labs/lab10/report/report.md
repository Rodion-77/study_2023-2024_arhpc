---
## Front matter
title: "Лабораторная работа №10"
subtitle: "Работа с файлами средствами Nasm"
author: "Павличенко Родион"

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
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
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

Приобретение навыков написания программ для работы с файлами.

# Выполнение лабораторной работы

Для начала выполнения работы необходимо создать рабочую папку и файл lab10-1.asm, а также файлы readme-1.txt и readme-2.txt :

![Создание рабочей директории и файлов](image/10-1.png)

Далее, запустим Midnight commander:

![Запуск Midnight commander](image/10-2.png)

Вставим в файл lab10-1.asm код из листинга 10.1 :

![Вставка кода из файла листинга 9.1](image/10-3.png)

Скопируем файл in_out.asm из директории прошлой работы :

![Копирование файла in_out.asm в рабочую директорию](image/10-4.png)

Соберём программу и посмотрим на результат :

![Сборка программы из файла lab10-1.asm и её запуск](image/10-5.png)

Как видим, файл выполнился, однако, ничего не произошло, так как в коде прописано записать данные в файл readme.txt, которого не существует.
Теперь попробуем изменить права доступа для программы lab10-1 так, чтобы запретить всем группам пользователей запускать данную программу и попробуем запустить его :

![Повторный запуск файла](image/10-6.png)

Как видим, файл даже не запустился, и нам вывело ошибку "Отказано в доступе". Теперь попробуем добавить файлу с исходным кодом lab10-1.asm права на запуск, и попробуем его запустить :

![Запуск файла lab10-1.asm](image/10-7.png)

Как видим, нам вывело много ошибок, так как файл сам по себе не предназначен для запуска. ведь это файл с исходным кодом, который требует предварительной сборки. Теперь попробуем выдать права доступа для файлов readme-1.txt и readme-2.txt согласно варианту 1. Так, мы используем chmod и пишем права доступа в восьмиричном виде :

![Изменение прав доступа и проверка](image/10-8.png)

Как видим, права доступа установились корректно. 

# Выполнение задания для самостоятельной работы

Далее, напишем код согласно заданию к самостоятельной работе. Он должен создать файл name.txt, записать туда фразу “Меня зовут”, запросить фамилию и имя пользователя и дописать их в файл, но сначала создадим файл

![Создание файла lab10-2.asm](image/10-9.png)

Далее, запустим Midnight commander

![Запуск Midnight commander](image/10-10.png)

Напишем код

![Код файла самостоятельной работы ](image/10-11.png)

Теперь соберём программу и проверим корректность выполнения её работы. Для этого с помощью ls мы проверим, создался ли файл, а с помощью cat посмотрим, что в файл записалось то, что нужно :

![Запуск файла и проверка корректности работы](image/10-12.png)

Как видим, программа выполнилась корректно

# Выводы

В результате выполнения лабораторной работы я приобрел навыки написания программ для работы с файлами.

