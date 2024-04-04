# Как собрать книгу

Потребуется LaTeX+MetaPost+Asymptote (всё работает с последним дистрибутивом TeX Live на Kubuntu 16.04).
Желательно также использовать Git.

Следующая команда создаст локальную копию исходных файлов вместе с историей версий.

`git clone https://github.com/anton-petrunin/kiselyov.git`

Эти файлы можно также получить, пройдя по ссылке "Clone or Download" и "Download ZIP".
В этом случае Git не нужен.

Далее, перейти в полученную папку

`cd kiselyov`

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
`mpost s-ris.mp`<br/>
`cd ..`

## Asymptote

Перейти в папку `asy`, создать рисунки и вернуться назад:

`cd asy/`<br/>
`asy schwarz.asy`<br/>
`epstopdf --gsopt=-dCompatibilityLevel=1.3 schwarz.eps`<br/>
`cd ..`

## LaTeX

Далее нужно создать индекс и получить конечный результат

`pdflatex kiselyov.tex`<br/>
`texindy -L russian -C utf8 kiselyov.idx`<br/>
`pdflatex kiselyov.tex`<br/>

Если всё прошло удачно, то вы получили файл `kiselyov.pdf`.

## Замечания

Файл `ris-ru.mp` содержит картинки с русскими буквами, а файл `ris-wood.mp` — картинки с линейкой и угольником.
Архив со всеми tex-файлами и готовыми картинками можно получить сказав

`tar -cvf arXiv.tar --files-from list-of-files.txt`
