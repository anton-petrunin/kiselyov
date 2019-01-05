# Как собрать книгу

Потребуется LaTeX+MetaPost (всё работает с последним дистрибутивом TeX Live на Kubuntu 16.04). Желательно также использовать Git.

Следующая команда создаст локальную копию исходных файлов вместе с историей версий.

`git clone https://github.com/anton-petrunin/kiselyov-2D.git`

Эти файлы можно также получить, пройдя по ссылке "Clone or Download" и "Download ZIP". В этом случае Git не нужен.

Далее, перейти в полученную папку

`cd kiselyov-2D`

## MetaPost 

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

## LaTeX

Далее нужно создать индекс и получить конечный результат

`pdflatex kiselyov.tex`<br/>
`texindy -L russian -C utf8 kiselyov.idx`<br/>
`pdflatex kiselyov.tex`<br/>

Если всё прошло удачно, то вы получили файл `kiselyov.pdf`.

## Замечания

Файл `ris-ru.mp` содержит картинки с русскими буквочками, а файл `ris-wood.mp` — картинки с линейкой и угольником.
Архив со всеми tex-файлами и готовыми картинками можно получить сказав

`tar -cvf arXiv.tar --files-from list-of-files.txt`
