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


beginfig(1)
save u;
u:=1cm;

z.a=origin;
z.b=(2, 0)*u;

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
z.b=(3, 0)*u;

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

beginfig(5)
save u;
u:=1cm;

z.m=origin;
z.n=z.m+(2, 0)*u;
z.p=z.n+(3, 0)*u;
z.q=z.p+(1.5, 0)*u;
z.a=z.m+(-.5,1)*u;
z.b=z.n+(-.5,1)*u;
z.c=z.n+(.5,1)*u;
z.d=z.p+(.5,1)*u;
z.e=z.p+(1.5,1)*u;
z.f=z.q+(1.5,1)*u;

draw ddline(z.m, z.q)(0.13, 0.13);
draw z.m--z.q penbold;
draw z.a--z.b penbold;
draw z.c--z.d penbold;
draw z.e--z.f penbold;
Dot z.a, z.b, z.c, z.d, z.e, z.f, z.p, z.q, z.m, z.n;

label.top(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.top(btex $F$ etex, z.f);
label.top(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);
label.top(btex $P$ etex, z.p);
label.top(btex $Q$ etex, z.q);
endfig;

beginfig(6)
save u;
u:=.6cm;

z.o=origin;

save p; path p[];
p0=circle(z.o, 2u);

z.a=point 0 of p0;
z.b=point 0.6 of p0;
z.c=point 1.1 of p0;
z.d=point 2 of p0;
z.e=point 2.8 of p0;
z.f=point 3.7 of p0;

z.m=1.4[z.f, z.e];
z.n=1.5[z.e, z.f];

p1=z.o--(cutcircle(p0, z.b, z.c))--cycle;
p2=(cutcircle(p0, z.e, z.f))--cycle;

hatchfill p1  withcolor (87, 1mm, -.5bp);
hatchfill p2  withcolor (43, 1mm, -.5bp);


draw p0;
draw z.o--z.b;
draw z.o--z.c;
draw z.o--z.e;
draw z.o--z.f;
draw z.m--z.n;

draw z.a--z.d;
Dot z.o, z.a, z.b, z.c, z.d, z.e, z.f;

label.rt(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.lrt(btex $F$ etex, z.f);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
label.llft(btex $O$ etex, z.o);
label.lrt(btex $m$ etex, point 3.2 of p0);


endfig;

beginfig(7)
save u;
u:=.6cm;

z.o=origin;

save p; path p[];
p0=circle(z.o, 2u);

z.a=point 2.5 of p0;
z.b=point 2.9 of p0;
z.c=point 3.4 of p0;
z.d=point 3.8 of p0;
z.p=point .8 of p0;
z.m=point 1.6 of p0;
z.n=point 1.2 of p0;



draw p0;

Dot z.o, z.a, z.b, z.c, z.d, z.p, z.m;

label.llft(btex $A$ etex, z.a);
label.llft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.urt(btex $P$ etex, z.p);
label.top(btex $N$ etex, z.n);
label.lft(btex $M$ etex, z.m);
label.rt(btex $O$ etex, z.o);

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

Dot z.o;
Dot z.o1;
Dot z.n;

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

beginfig(2191)
save u;
u:=1.2cm;

z.o=origin;

z.a=(0, 1.5)*u;
z.b=z.a rotatedaround (z.o, 72);
z.c=z.b rotatedaround (z.o, 72);
z.d=z.c rotatedaround (z.o, 72);
z.e=z.d rotatedaround (z.o, 72);

draw z.a--z.b--z.c--z.d--z.e--cycle pensemibold;

endfig;

beginfig(2192)
save u;
u:=1.2cm;

z.o=origin;

z.a=(0, 1.5)*u;
z.b=z.a rotatedaround (z.o, 72);
z.c=z.b rotatedaround (z.o, 72);
z.d=z.c rotatedaround (z.o, 72);
z.e=z.d rotatedaround (z.o, 72);

draw z.a--z.c--z.e--z.b--z.d--cycle pensemibold;

endfig;


end










