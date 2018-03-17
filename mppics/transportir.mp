
input TEX

input macros
input hatching
verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex


filenametemplate "%j-%1c.mps";
prologues:=3;


color Greencolor, Bluecolor, Lilacolor, Orangecolor, Pinkcolor;

Greencolor=0.1875 red + 0.30859375 green + 0.1484375 blue;
%0.0red+0.59765625green+0.3984375blue;

Bluecolor= 0.125 red + 0.375 green + 0.4765625 blue;
%0.0red+0.3984375gre
%en+0.59765625blue;

Lilacolor=0.1875 red + 0.0625 green + 0.4765625 blue;
%0.3984375red+0.0green+0.19921875blue;

Orangecolor=0.609375 red + 0.3984375 green + 0.14453125 blue;
%CPcolor:=0.99609375red+0.59765625green+0.0blue;


Pinkcolor=0.51953125 red + 0.1796875 green + 0.18359375 blue;
%0.99609375red+0.3984375green+0.3984375blue;

vardef drawletter@#(expr a, b, t)=
save p; picture p, q;
	p=(TEX(decimal a));
	q=p shifted (
	+ 1*labeloffset*laboff@#
	+(-labxf@#, 0)*(abs(urcorner p - ulcorner p)-1)
	+(0, -labyf@#)*(abs(urcorner p - lrcorner p)-2));
	draw ((q rotated (-90+b)) scaled 0.7) shifted t;
enddef;


beginfig(19)
save u;
u:=1cm;

path p[];
z.o=origin;

r1=3u;
r2=r1+0.5u;
r3=r2+0.5u;
r4=r3+0.7u;

p1=subpath(0, 2) of circle(z.o, r1);
p2=subpath(0, 2) of circle(z.o, r2);
p3=subpath(0, 2) of circle(z.o, r3);
p4=subpath(0, 2) of circle(z.o, r4);

z.a=point 0 of p3;
z.b=point 2 of p3;

z.a1=point 0 of p4;
z.b1=point 2 of p4;

z.a2=z.a1+(0, -1u);
z.b2=z.b1+(0, -1u);

for i=1 upto 179:
	draw ((r3, 0)--(r4, 0)) rotatedaround (z.o, i);
endfor;

for i=5 step 10 until 179:
	draw ((r2, 0)--(r3, 0)) rotatedaround (z.o, i);
endfor;

for i=10 step 10 until 179:
	draw ((r3, 0)--(r4, 0)) rotatedaround (z.o, i) pensemibold;

	draw ((r2, 0)--(r2+0.14u, 0)) rotatedaround (z.o, i);
	draw ((r3-0.1u, 0)--(r3, 0)) rotatedaround (z.o, i);

	draw ((r1, 0)--(r1+0.14u, 0)) rotatedaround (z.o, i);
	draw ((r2-0.1u, 0)--(r2, 0)) rotatedaround (z.o, i);
endfor;

for i=10 step 10 until 179:
	drawletter(i, i, ((0.5[r1,r2], 0)) rotatedaround (z.o, i));
%	label(TEX(decimal i),  );
endfor;

for i=10 step 10 until 179:
	drawletter(180-i, i, ((0.5[r2,r3], 0)) rotatedaround (z.o, i));
%	label(TEX(decimal i),  );
endfor;
	


draw z.a1--z.a2--z.b2--z.b1;
draw z.a1--z.b1 penbold;

draw p1 penbold;
draw p4 penbold;
draw p2; draw p3;

endfig;



end










