# Alter Mann

![latex](https://github.com/at8eqeq3/altermann/actions/workflows/latex.yml/badge.svg)
![docker](https://github.com/at8eqeq3/altermann/actions/workflows/docker.yml/badge.svg)

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
* сборка проекта в Docker
* сборка на GitHub Actions с использованием приватного экшена и Docker

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

Или с использованием Docker, чтобы не тащить себе весь TexLive:

~~~ bash
docker build -t mytexlive .
docker run -it --rm -v ${PWD}:/root  mytexlive
~~~