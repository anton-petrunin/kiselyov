input macros

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


beginfig(1)
save u;
u:=1cm;

z.a=origin;
z.b=(4, 0)*u;

draw ddline(z.a, z.b)(0.13, 0.13);
draw z.a--z.b penbold;
Dot z.a, z.b;

label.top(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $a$ etex, 0.5[z.a, z.b]);
endfig;

beginfig(2)
save u;
u:=1cm;

z.a=origin;
z.b=(4, 0)*u;

%draw ddline(z.a, z.b)(0.13, 0.13);
draw z.a--z.b penbold;
Dot z.a, z.b;

label.top(btex $C$ etex, z.a);
label.top(btex $D$ etex, z.b);
label.top(btex $b$ etex, 0.5[z.a, z.b]);
endfig;

beginfig(2)
save u;
u:=1cm;

z.a=origin;
z.b=(2, 0)*u;

%draw ddline(z.a, z.b)(0.13, 0.13);
draw z.a--z.b penbold;
Dot z.a, z.b;

label.top(btex $C$ etex, z.a);
label.top(btex $D$ etex, z.b);
label.top(btex $b$ etex, 0.5[z.a, z.b]);
endfig;

beginfig(3)
save u;
u:=1cm;

z.a=origin;
z.b=(5, 0)*u;

%draw ddline(z.a, z.b)(0.13, 0.13);
draw z.a--z.b penbold;
Dot z.a;

label.top(btex $A$ etex, z.a);
endfig;


beginfig(4)
save u;
u:=1cm;

z.a=origin;
z.b=(3, 0)*u;
z.c=z.a+(4, 0)*u;
z.d=z.b+(4, 0)*u;

%draw ddline(z.a, z.b)(0.13, 0.13);
draw z.a--z.b penbold;
draw z.c--z.d penbold;
Dot z.a, z.b, z.c, z.d;

label.top(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);

label.top(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);

endfig;



beginfig(12)
save u;
u:=0.7cm;

z.o=origin;
z.a=z.o+(3, 0)*u;
z.b=z.a rotatedaround (z.o, 48);

z.o1=z.a+(2, 0)*u;
z.a1=z.o1+(3, 0)*u;
z.b1=z.a1 rotatedaround (z.o1, 32);

z.n=z.a1+(2, 0)*u;
z.m=z.n+(3, 0)*u;
z.p=z.m rotatedaround (z.n, 32);
z.q=z.p rotatedaround (z.n, 32);


draw z.a--z.o--z.b;
draw z.a1--z.o1--z.b1;
draw z.m--z.n--z.p; draw z.n--z.q;


arcs(z.m, z.n, z.p, ar2);
arcs2(z.q, z.n, z.p, ar2);
arcs(z.a, z.o, z.b, ar2);
arcs2(z.a1, z.o1, z.b1, ar2);

Dot z.a, z.o, z.b;
Dot z.a1, z.o1, z.b1;
Dot z.n, z.m, z.p, z.q;

label.rt(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.llft(btex $O$ etex, z.o);

label.rt(btex $A_1$ etex, z.a1);
label.urt(btex $B_1$ etex, z.b1);
label.llft(btex $O_1$ etex, z.o1);

label.rt(btex $Q$ etex, z.m);
label.urt(btex $P$ etex, z.p);
label.llft(btex $N$ etex, z.n);
label.urt(btex $Q$ etex, z.q);

endfig;



end










