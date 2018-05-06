# Как собрать книгу

Потребуется LaTeX+MetaPost (всё работает с последним дистрибутивом TeX Live на Kubuntu 16.04). Желательно также использовать Git.

Следующая команда создаст локальную копию исходных файлов вместе с историей версий.

`git clone https://github.com/anton-petrunin/kiselyov-2D.git`

Эти файлы можно также получить, пройдя по ссылке "Clone or Download" и "Download ZIP". В этом случае Git не нужен.

Далее, перейти в полученную папку

`cd kiselyov-2D`

Перейти в папку `mppics`, создать рисунки и вернуться назад:

`cd mppics/`<br/>
`mpost ris.mp`<br/>
`mpost ris-1914.mp`<br/>
`mpost ris-1931.mp`<br/>
`mpost ris-ru.mp`<br/>
`mpost ris-extra.mp`<br/>
`mpost ris-wood.mp`<br/>
`mpost transportir.mp`<br/>
`cd ..`

Далее сказать следующее:

`pdflatex kiselyov-2D.tex`<br/>
`texindy -L russian -C utf8 kiselyov-2D.idx`<br/>
`pdflatex kiselyov-2D.tex`<br/>

Если всё прошло удачно, то вы получили файл `kiselyov-2D.pdf`.
Файл `ris-ru.mp` содержит картинки с русскими буквочками, а файл `ris-wood.mp` — картинки с линейкой и угольником.
В последнем использовались случайные числа и они иногда зашакливают.
Пэтому, если приходит сообщение об ошибке от рисунов, типа

`./mppics/ris-wood-76.mps:1635:Dimension too large ...0029 0.07253 0.99998 0 0] concat stroke`

то следует повторить `mpost ris-wood.mp` в папке `mppics`.
