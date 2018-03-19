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

kisDot(z.a, z.b);
draw ddline(z.a, z.b)(0.2, 0.2) penbold;
kisDot(z.a,z.b);
kisDot(z.b,z.a);

label.top(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $a$ etex, 0.5[z.a, z.b]);
endfig;


beginfig(2)
save u;
u:=1cm;

z.a=origin;
z.b=(2, 0)*u;

draw z.a--z.b penbold;
kisDot(z.a,z.b);
kisDot(z.b,z.a);

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
kisDot(z.a,z.b);

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
kisDot(z.a,z.b);
kisDot(z.b,z.a);
kisDot(z.c,z.d);
kisDot(z.d,z.c);


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
kisDot(z.a,z.b);
kisDot(z.b,z.a);
kisDot(z.c,z.d);
kisDot(z.d,z.c);
kisDot(z.e,z.f);
kisDot(z.f,z.e);
kisDot(z.m,z.n);
kisDot(z.n,z.m);
kisDot(z.p,z.m);
kisDot(z.q,z.m);

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
%Dot z.o, z.a, z.b, z.c, z.d, z.e, z.f;

label.rt(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.lrt(btex $F$ etex, z.f);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
label.llft(btex $O\,$ etex, z.o);
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
draw cutcircle(p0, z.a, z.b) penbold;
draw cutcircle(p0, z.c, z.d) penbold;
draw cutcircle(p0, z.p, z.m) penbold;


Dot z.o; 
%z.a, z.b, z.c, z.d, z.p, z.m;
kisDotAng(z.a, z.o, 0);
kisDotAng(z.b, z.o, 0);
kisDotAng(z.c, z.o, 0);
kisDotAng(z.d, z.o, 0);
kisDotAng(z.m, z.o, 0);
kisDotAng(z.n, z.o, 0);
kisDotAng(z.p, z.o, 0);

label.llft(btex $A$ etex, z.a);
label.llft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.urt(btex $P$ etex, z.p);
label.top(btex $N$ etex, z.n);
label.lft(btex $M$ etex, z.m);
label.rt(btex $O$ etex, z.o);

endfig;

beginfig(8)
save u;
u:=.6cm;

z.o=origin;
z.o1=z.o+(5, 0)*u;
z.o2=z.o+(10, 0)*u;

save p; path p[];
p0=circle(z.o, 2u);
p1=circle(z.o1, 2u);
p2=circle(z.o2, 2u);

z.a=point 1.5 of p0;
z.a2=point 1.5 of p2;
z.m=point 2.9 of p0;
z.b=point .3 of p0;
z.c=point .3 of p1;
z.bc=point .3 of p2;
z.d=point 2.3 of p1;
z.n=point 1.3 of p1;
z.d2=point 2.3 of p2;

draw p0 penhair;
draw p1 penhair;
draw p2 pensemibold;
draw cutcircle(p0, z.a, z.b) pensemibold;
draw cutcircle(p1, z.c, z.d) pensemibold;
draw cutcircle(p2, z.a2, z.d2) penextrabold;
kisDotAng(z.a, z.o, 0);
kisDotAng(z.b, z.o, 0);
kisDotAng(z.c, z.o1, 0);
kisDotAng(z.d, z.o1, 0);
kisDotAng(z.a2, z.o2, 0);
kisDotAng(z.bc, z.o2, 0);
kisDotAng(z.d2, z.o2, 0);

label.ulft(btex $A$ etex, z.a);
label.ulft(btex $A$ etex, z.a2);
label.urt(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.urt(btex $BC$ etex, z.bc);
label.llft(btex $D$ etex, z.d2);
label.bot(btex $m$ etex, z.m);
label.top(btex $n$ etex, z.n);
endfig;

beginfig(9)
save u;
u:=.4cm;

z.o=origin;
z.a=z.o+(5, 0)*u;
z.b=z.a rotatedaround (z.o, 48);
z.x=z.o+(6, 0)*u;
z.y=z.x rotatedaround (z.o, 48);
z.e=z.x rotatedaround (z.o, 16);
z.d=z.e rotatedaround (z.o, 16);


draw z.o--z.x;
draw z.o--z.y;
draw z.o--z.e;
draw z.o--z.d;

label.llft(btex $O$ etex, z.o);
label.ulft(btex $A$ etex, z.b);
label.bot(btex $B$ etex, z.a);
label.urt(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);

endfig;

beginfig(10)
save u;
u:=.4cm;

z.o=origin;
z.a=z.o+(5, 4)*u;
z.b=z.o+(6, 0)*u;

draw z.o--z.a penbold;
draw z.o--z.b penbold;

hatchfill z.b--z.o--z.a..(1.05[z.o, 0.5[z.a, z.b]])..cycle  withcolor (127, 2mm, -.5bp);

label.llft(btex $O$ etex, z.o);
label.bot(btex $A$ etex, z.b);
label.top(btex $B$ etex, z.a);

z.v=(9, 0)*u;
z.o1=z.o+z.v;
z.a1=z.a+z.v;
z.b1=z.b+z.v;



draw z.o1--z.a1 penbold;
draw z.o1--z.b1 penbold;

hatchfill z.b1--z.o1--z.a1{dir 110}..(1.2[z.b1, 0.6[z.o1, z.a1]])..(1.2[0.5[z.a1, z.b1], z.o1])..(1.2[z.a1, 0.5[z.o1, z.b1]])..{dir 90}cycle withcolor (127, 2mm, -.5bp);

whitelabel.llft(btex $O$ etex, z.o1);
label.bot(btex $A$ etex, z.b1);
label.top(btex $B$ etex, z.a1);

endfig;

beginfig(11)
save u;
u:=1cm;

z.o=origin;
z.b=z.o+(2,0)*u;
z.a=z.b rotatedaround (z.o, 48);

z.o1=z.o+(3,0)*u;
z.a1=z.a+(3,0)*u;
z.b1=z.b+(3,0)*u;
z.x1=z.a1 rotatedaround (z.o1, 8);
z.y1=z.a1 rotatedaround (z.o1, -8);

draw z.o--z.a penbold;
draw z.o--z.b penbold;
draw z.o1--z.a1 penbold;
draw z.o1--z.b1 penbold;
draw z.o1--z.x1;
draw z.o1--z.y1;
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
z.p=z.m rotatedaround (z.n, 48);
z.q=z.p rotatedaround (z.n, 32);


draw z.a--z.o--z.b;
draw z.a1--z.o1--z.b1;
draw z.m--z.n--z.p; draw z.n--z.q;


arcs(z.m, z.n, z.p, ar2);
arcs2(z.q, z.n, z.p, ar2);
arcs(z.a, z.o, z.b, ar2);
arcs2(z.a1, z.o1, z.b1, ar2);

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

beginfig(13)
save u;
u:=1cm;

z.o=origin;
z.a=z.o+(4,0)*u;
z.b=z.a rotatedaround (z.o, 24);
z.c=z.b rotatedaround (z.o, 24);

draw z.o--z.a;
draw z.o--z.c;
draw z.o--z.b penbold;
endfig;


beginfig(14)
save u;
u:=1cm;

z.o=origin;
z.a=(1.5, 0)*u;
z.b=z.a rotatedaround (z.o, 72);
z.c=z.a rotatedaround (z.o, 135);
z.d=z.a rotatedaround (z.o, 180);

draw z.d--z.a;
draw z.o--z.b;
draw z.o--z.c;

endfig;

beginfig(15)
save u;
u:=1cm;

z.o=origin;
z.a=(1.5, 0)*u;
z.b=z.a rotatedaround (z.o, 72);
z.c=z.a rotatedaround (z.o, 145);
z.d=z.a rotatedaround (z.o, 225);
z.e=z.a rotatedaround (z.o, 265);

draw z.o--z.a;
draw z.o--z.b;
draw z.o--z.c;
draw z.o--z.d;
draw z.o--z.e;

endfig;

beginfig(16)
save u;
u:=.6cm;

z.o=origin;

save p; path p[];
p0=circle(z.o, 2u);

z.a=point 2.7 of p0;
z.b=point 3.3 of p0;

draw p0;
draw z.a--z.o--z.b;

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










