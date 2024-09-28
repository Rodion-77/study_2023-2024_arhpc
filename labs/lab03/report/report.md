---
## Front matter
title: "Лабораторная работа № 3"
subtitle: "Язык разметки markdown"
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
Oсвоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Выполнение лабораторной работы

Переходим в каталог, который привязан к репозиторию Git на сайте Github.

![Перемещение в рабочий каталог](image/image_l31.png)

С помощью команды git pull обновляем локальный репозиторий,скачивая
изменения. 

![Использование gitpull](image/image_l32.png)

Переходим в каталог report 3 лабораторной работы. 

![Перемещение в каталог 3 лабораторной работы](image/image_l33.png)

Теперь проведём компиляцию шаблона отчёта с помощью команды make

![Использование команды make] (image/image_l34.png)

Теперь проверим, создались ли файлы .docx и .pdf

![Проверка создания файлов](image/image_l35.png)

Теперь попробуем удалить эти файлы. Для этого воспользуемся командой make clean

![Использование команды make clean](image/image_l36.png)

А теперь проверим, удалились ли файлы отчёта

![Проверка удалённых файлов](image/image_l37.png)

Теперь откроем файл отчёта report.md с помощью редактора gedit

![Открытие файла отчёта с помощью gedit](image/image_l38.png)

Теперь посмотрим, что из себя представляет файл report.md

[Структура файла отчёта](image/image_l39.png)


