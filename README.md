# Alter Mann

## Описание

Одним субботним вечером Диме стало скучно, и он решил поупражняться в этих ваших LaTeX'ах и Graphviz'ах, из чего под чашку вискаря родился вот такой шедевр. Шедевр в себя включает:

* забавная [песня](https://music.yandex.ru/album/288035/track/2721518) хорошего музколлектива 
* социальный граф
* работа с Graphviz, в том числе подграфы и стилизация элементов
* работа с LaTeX, включая:
  * вёрстку стихов
  * вставку исходного кода
  * вставку графики
  * перекрёстные и внешние ссылки
  * списки иллюстраций, листингов и источников
* написание `Makefile` для сборки проекта

## Сборка

~~~ bash
make all
~~~

Для пересборки предварительно выполить

~~~ bash
make clean
~~~

Или, совсем без `Makefile`, просто руками:

~~~ bash
dot -Tpng altermann.dot > altermann.png
pdflatex -shell-escape -interaction=nonstopmode -file-line-error altermann.tex
pdflatex -shell-escape -interaction=nonstopmode -file-line-error altermann.tex
~~~
