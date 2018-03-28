input macros
input hatching
verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../book}
\begin{document}
etex


filenametemplate "%j-%1c.mps";
prologues:=3;
anglecolor:=white;


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

beginfig(17)
save u;
u:=.6cm;

z.o=origin;

save p; path p[];
p0=circle(z.o, 2u);

z.a=point 1.1 of p0;
z.b=point .5 of p0;
z.c=point 0 of p0;
z.d=point 3.4 of p0;

p1=circle(z.o, 1.5u);
z.x=point .4 of p1;
z.y=point .1 of p1;

draw p0;
drawarrow  reverse cutcircle(p1, z.y, z.x);
draw z.a--z.o--z.b;
draw z.c--z.o--z.d;

endfig;

beginfig(18)
save u;
u:=1cm;
w:=6;

z.o=origin;

save p; path p[];
p0=circle(z.o, 2.5u);
z.d=z.o+(3,0)*u;
z.1=z.d rotatedaround (z.o, w);
z.2=z.d rotatedaround (z.o, 2*w);
z.3=z.d rotatedaround (z.o, 3*w);
z.4=z.d rotatedaround (z.o, 4*w);
z.5=z.d rotatedaround (z.o, 5*w);
z.6=z.d rotatedaround (z.o, 6*w);
z.7=z.d rotatedaround (z.o, 7*w);

z.s=point 0 of p0;
z.e=z.s rotatedaround (z.o, 7*w);

draw ddline(z.o, z.d)(0, 0.13);
draw ddline(z.o, z.7)(0, 0.13);
draw z.o--z.1;
draw z.o--z.2;
draw z.o--z.3;
draw z.o--z.4;
draw z.o--z.5;
draw z.o--z.6;
draw cutcircle(p0, z.s, z.e);
endfig;

beginfig(20)
save u;
u:=.8cm;

z.o=origin;
z.o1=z.o+(3,0)*u;
z.o2=z.o+(6,0)*u;

save p; path p[];
p0=circle(z.o, 2u);
p1=circle(z.o1, 2u);
p2=circle(z.o2, 2u);

z.x0=point 0 of p0;
z.x=point 2 of p0;
z.x1=point 0 of p1;
z.w1=point .7 of p1;
z.x2=point 0 of p2;

z.y0=point 1 of p0;
z.y1=point 1 of p1;
z.y2=point 1 of p2;
z.w2=point 1.4 of p2;

draw cutcircle(p0, z.x0, z.x);
draw cutcircle(p1, z.x1, z.y1);
draw cutcircle(p2, z.x2, z.w2);

draw ddline(z.o, z.x0)(0, 0.13) penbold;
draw ddline(z.o, z.x)(0, 0);
draw ddline(z.o, z.y0)(0, 0.13) penbold;
draw ddline(z.o1, z.x1)(0, 0.13) penbold;
draw ddline(z.o1, z.y1)(0, 0.13);
draw ddline(z.o1, z.w1)(0, 0.13) penbold;
draw ddline(z.o2, z.w2)(0, 0.13) penbold;
draw ddline(z.o, z.x0)(0, 0.13) penbold;
draw ddline(z.o, z.y0)(0, 0.13) penbold;
draw ddline(z.o2, z.x2)(0, 0.13) penbold;
draw ddline(z.o2, z.y2)(0, 0.13);

endfig;

beginfig(21)
save u;
u:=.7cm;

z.o=origin;
z.a=z.o-(2,0)*u;
z.b=z.o+(1.5,1.5)*u;
z.c=z.o+(2,0)*u;

draw z.a--z.c;
draw z.o--z.b;

arcs(z.c, z.o, z.b, ar2);
arcs2(z.b, z.o, z.a, ar2);

endfig;

beginfig(22)
save u;
u:=.8cm;

z.o=origin;
z.a=z.o+(2,0)*u;
z.b=z.o+(1.4,1.4)*u;

draw ddline(z.o, z.a)(0.67, 0);
draw ddline(z.o, z.b)(0.67, 0);
draw z.o--z.a penbold;
draw z.o--z.b penbold;

endfig;

beginfig(23)
save u;
u:=1.1cm;

z.o=origin;

save p; path p[];
p0=circle(z.o, u);

z.a=z.o+(1,0)*u;
z.b=z.o+(0,1)*u;

draw ddline(z.o, z.a)(1.13, .13);
draw ddline(z.o, z.b)(1.13, .13);
draw p0;

endfig;

beginfig(24)
save u;
u:=.7cm;

z.o=origin;
z.a=z.o-(2,0)*u;
z.b=z.o+(1.5,1.5)*u;
z.c=z.o+(2,0)*u;

draw z.a--z.c;
draw z.o--z.b;

endfig;

beginfig(25)
save u;
u:=.7cm;

z.o=origin;
z.a=z.o-(2,0)*u;
z.b=z.o+(0,1.5)*u;
z.c=z.o+(2,0)*u;

draw z.a--z.c;
draw z.o--z.b;

endfig;

beginfig(26)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(3,0)*u;
z.c=.5[z.a,z.b];
z.d=.5[z.a,z.c];
z.m= z.b rotatedaround (z.c, 90);
z.n= z.m reflectedabout (z.a,z.b);

draw z.a--z.b;
draw z.m--z.n;
draw z.m--z.d--z.n;

mark_angle(z.b, z.c, z.m, 8);
mark_angle(z.n, z.c, z.b, 10);

arcs(z.b, z.d, z.m, 8);
arcs(z.n, z.d, z.b, 10);
endfig;

%27 > ../geogebra/ugolnik.png

beginfig(28)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(1*u,-3*u);
z.c=z.a+(0,-3)*u;
z.d=z.a+(1,0)*u;

draw z.a--z.b;
draw z.c--z.d;
endfig;

beginfig(29)
save u;
u:=1cm;

z.o=origin;
z.a=z.o+(-1.5,0)*u;
z.b=z.o+(-1.5,1)*u;
z.c=z.o+(-.5,2)*u;
z.d=z.o+(1,2)*u;
z.e=z.o+(1.5,0)*u;

draw z.o--z.a;
draw z.o--z.b;
draw z.o--z.c;
draw z.o--z.d;
draw z.o--z.e;

endfig;

beginfig(30)
save u;
u:=1cm;

z.o=origin;
z.a=z.o+(-1.5,-.9)*u;
z.b=z.o+(-1.5,1)*u;
z.c=z.o+(1,1)*u;
z.d=z.o+(1.5,0)*u;
z.e=z.o+(0.9,-1)*u;

draw z.o--z.a;
draw z.o--z.b;
draw z.o--z.c;
draw z.o--z.d;
draw z.o--z.e;

endfig;

beginfig(31)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(.5,1)*u;
z.c=z.a+(1.2,1.5)*u;
z.d=z.a+(2.5,1)*u;
z.e=z.a+(3,0)*u;

draw z.a--z.b--z.c--z.d--z.e penbold;
draw ddline(z.b, z.c)(.4, .4);
draw ddline(z.c, z.d)(.4, .4);
endfig;

beginfig(32)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(1,1.5)*u;
z.c=z.a+(1.7,0)*u;
z.d=z.a+(2.5,0)*u;
z.e=z.a+(3,1)*u;

draw z.a--z.a--z.b--z.c--z.d--z.e penbold;
endfig;

beginfig(33)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(-.5,.7)*u;
z.c=z.a+(1,2)*u;
z.d=z.a+(2.5,1.2)*u;
z.e=z.a+(2,0)*u;

z.m=z.a+(4,0)*u;
z.n=z.m+(-.5,1.5)*u;
z.p=z.m+(.5,1.2)*u;
z.q=z.m+(1,2)*u;
z.r=z.m+(2.5,1)*u;
z.s=z.m+(2,0)*u;

save p; path p[];
p1=z.a--z.b--z.c--z.d--z.e--cycle;
p2=z.m--z.n--z.p--z.q--z.r--z.s--cycle;

draw p1 penbold;
draw z.a--z.d;
draw z.b--z.e;

draw p2 penbold;
draw z.m--z.r;
hatchfill p2  withcolor (87, 1mm, -.5bp);
endfig;

beginfig(34)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(.5,2)*u;
z.c=z.a+(2.5,0)*u;

save p; path p[];
p1=z.a--z.b--z.c--cycle;

draw p1 penbold;
endfig;

beginfig(35)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(.7,2)*u;
z.c=z.a+(1.4,0)*u;

save p; path p[];
p1=z.a--z.b--z.c--cycle;

draw p1 penbold;
rimmark(z.a--z.b);
rimmark(z.c--z.b);
endfig;

beginfig(36)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(-1.15470053838,-2)*u;
z.c=z.a+(1.15470053838,-2)*u;

save p; path p[];
p1=z.a--z.b--z.c--cycle;

draw p1 penbold;
rimmark(z.a--z.b);
rimmark(z.a--z.c);
rimmark(z.c--z.b);
endfig;


beginfig(37)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(2,3)*u;
z.c=z.a+(2,0)*u;

save p; path p[];
p1=z.a--z.b--z.c--cycle;

draw p1 penbold;
endfig;

beginfig(38)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(2,3)*u;
z.c=z.a+(2,.5)*u;

save p; path p[];
p1=z.a--z.b--z.c--cycle;

draw p1 penbold;
endfig;

beginfig(39)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(.5,2)*u;
z.c=z.a+(4,0)*u;
z.f=bisector(z.a, z.b, z.c);
z.d=altitude(z.a, z.b, z.c);
z.e=.5[z.a, z.c];

z.a1=origin+(5.5,0)*u;
z.b1=z.a1+(3,2)*u;
z.c1=z.a1+(1.5,0)*u;
z.d1=altitude(z.a1, z.b1, z.c1);
z.e1=.5[z.a1, z.c1];


save p; path p[];
p0=z.a--z.b--z.c--cycle;
p1=z.a1--z.b1--z.c1--cycle;

draw p0 penbold;
draw z.b--z.f;
draw z.b--z.d;
draw z.b--z.e;

draw p1 penbold;
draw z.b1--z.d1;
draw z.b1--z.e1;
draw z.c1--z.d1;
endfig;


beginfig(40)
save u;
u:=1cm;

z.n=origin;
z.m=z.n+(0,3)*u;

z.a0=z.n+(-2,2)*u;
z.b0=z.n+(-1,2.5)*u;
z.c0=z.n+(-.5,.5)*u;
z.e0=.5[z.c0, z.b0];
z.d0=.3[z.c0, z.a0];
z.aa=altitude(z.m, z.a0, z.n);

z.a1=z.a0 reflectedabout (z.m,z.n);
z.b1=z.b0 reflectedabout (z.m,z.n);
z.c1=z.c0 reflectedabout (z.m,z.n);
z.e1=z.e0 reflectedabout (z.m,z.n);
z.d1=z.d0 reflectedabout (z.m,z.n);

save p; path p[];
p0=z.a0--z.b0--z.c0--cycle;
p1=z.a1--z.b1--z.c1--cycle;

draw p0 penbold;
draw p1 penbold;
draw z.a0--z.a1;
draw z.b0--z.b1;
draw z.c0--z.c1;
draw z.d0--z.d1;
draw z.e0--z.e1;
draw z.m--z.n dashed evenly scaled 2;

Dot z.a0,z.a1,z.b0,z.b1,z.c0,z.c1,z.d0,z.d1,z.e0,z.e1,z.aa;

endfig;


beginfig(41)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(0,3)*u;

z.x0=z.a+(-1,.5)*u;
z.x1=z.a+(-2,.5)*u;
z.x2=z.a+(-2,2.5)*u;
z.x3=z.a+(-1,2.5)*u;

save p; path p[];
p0= z.x0--z.x1--z.x2--z.x3--cycle;
p1=p0 reflectedabout (z.a,z.b);

draw p0 penbold;
draw p1 penbold;
draw z.a--z.b dashed evenly scaled 2;
draw z.x0...z.x2...z.x1...z.x3...cycle;
endfig;

beginfig(41);
save u;
u:=1cm;
z.a=origin+(1,-1.2)*u;
z.b=z.a+(0,2.4)*u;
draw z.a--z.b dashed evenly scaled 2;
save p; path p[];save q; path q[];
 for i = 0 upto 24:
 p[i]= fullcircle scaled ((1 - 1/12)**i * 1.5*u)
        yscaled 1.6 rotated (-110/11 * i);
 q[i]=p[i] reflectedabout (z.a,z.b);
 draw p[i]; 
 draw q[i]; 
  endfor;
endfig;

beginfig(44);
save u;
u:=1cm;
k:=.6;

z.d=origin;
z.b=z.d+(0,3)*u;
z.a=z.d-(1.3,0)*u;
z.c=z.d+(1.3,0)*u;
z.m0=k[z.b, z.a];
z.m1=k[z.b, z.c];

draw z.a--z.b;
draw z.c--z.b;
draw z.c--z.a;
draw z.d--z.b;
draw z.m0--z.m1;

arcs(z.c, z.a, z.b, 1.6*ar2);
arcs(z.c, z.d, z.b, 1.4*ar2);
arcs(z.b, z.d, z.a, 1.4*ar2);
arcs(z.b, z.c, z.d, 1.6*ar2);
arcs(z.a, z.b, z.c, 3*ar2);
endfig;

beginfig(45)
save u;
u:=1cm;
save w;
w:=3*u;

z.c=origin;
z.b=z.c+(2,0)*u;
z.a=z.c+(1.5,2)*u;

draw z.a--z.b--z.c--cycle;

z.a1=z.a shifted (w,0);
z.b1=z.b shifted (w,0);
z.c1=z.c shifted (w,0);

draw z.a--z.b--z.c--cycle;
draw z.a1--z.b1--z.c1--cycle;

rimmark(z.a--z.c);
rimmark(z.a1--z.c1);
rimmark2(z.a--z.b);
rimmark2(z.a1--z.b1);

arcs(z.c, z.a, z.b, ar2);
arcs(z.c1, z.a1, z.b1, ar2);
endfig;

beginfig(46)
save u;
u:=1cm;
save w;
w:=3*u;

z.c=origin;
z.b=z.c+(2,0)*u;
z.a=z.c+(1.5,2)*u;

draw z.a--z.b--z.c--cycle;

z.a1=z.a shifted (w,0);
z.b1=z.b shifted (w,0);
z.c1=z.c shifted (w,0);

draw z.a--z.b--z.c--cycle;
draw z.a1--z.b1--z.c1--cycle;

rimmark(z.b--z.c);
rimmark(z.b1--z.c1);

arcs(z.b, z.c, z.a, ar2);
arcs(z.b1, z.c1, z.a1, ar2);
arcs2(z.c, z.b, z.a, ar2);
arcs2(z.c1, z.b1, z.a1, ar2);
endfig;

beginfig(47)
save u;
u:=1cm;
save w;
w:=4*u;

z.c=origin;
z.b=z.c+(2.5,0)*u;
z.a=z.c+(1.5,2)*u;

draw z.a--z.b--z.c--cycle;

z.a1=z.a shifted (w,0);
z.b1=z.b shifted (w,0);
z.c1=z.c shifted (w,0);
z.a2=z.a1 reflectedabout (z.b1,z.c1);

draw z.a--z.b--z.c--cycle;
draw z.a1--z.b1--z.c1--cycle;
draw z.b1--z.a2--z.c1;
draw z.a1--z.a2;

rimmark2(z.a--z.c);
rimmark2(z.a1--z.c1);
rimmark2(z.a2--z.c1);
rimmark3(z.b--z.c);
rimmark3(z.b1--z.c1);
rimmark(z.b--z.a);
rimmark(z.b1--z.a1);
rimmark(z.b1--z.a2);

arcs(z.b1, z.a1, z.a2, 1.5ar2);
arcs2(z.c1, z.a1, z.a2, 3ar2);
arcs(z.b1, z.a2, z.a1, 1.5ar2);
arcs2(z.a1, z.a2, z.c1, 3ar2);
endfig;

beginfig(48)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(1.5,1.5)*u;
z.c=z.a+(2.5,0)*u;

draw ddline(z.a, z.c)(.4, .4);
draw ddline(z.a, z.b)(0, .4);
draw z.a--z.b--z.c--cycle penbold;
endfig;

beginfig(49)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(1,1.5)*u;
z.c=z.a+(2.5,0)*u;
z.e=.5[z.b,z.c];
z.f=2[z.a,z.e];

hatchfill z.a--z.e--z.b--cycle  withcolor (0, 1mm, -.5bp);
hatchfill z.c--z.e--z.f--cycle  withcolor (0, 1mm, -.5bp);

fill_angle(z.a, z.b, z.c, 1.1ar2)
fill_angle(z.b, z.c, z.f, 1.1ar2)
fill_angle(z.b, z.e, z.a, ar2);
fill_angle(z.c, z.e, z.f, ar2);
arcs2(z.a, z.b, z.c, ar2);
arcs2(z.b, z.c, z.f, ar2);
arcs(z.b, z.e, z.a, ar2);
arcs(z.c, z.e, z.f, ar2);

draw ddline(z.a, z.c)(0, .4);
draw ddline(z.b, z.c)(0, .4);
draw z.b--z.a--z.f--z.c;

label.bot(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c-(3,0));
label.top(btex $E$ etex, z.e+(2,0));
label.top(btex $F$ etex, z.f);
label.rt(btex $D$ etex, 1.4[z.a,z.c]);
label.bot(btex $H$ etex, 1.4[z.b,z.c]);
endfig;

beginfig(50)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(1.5,2)*u;
z.c=z.a+(1.5,0)*u;

draw ddline(z.a, z.c)(0, .4);
draw z.a--z.b--z.c--cycle penbold;

label.bot(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c-(3,0));
label.rt(btex $D$ etex, 1.4[z.a,z.c]);
endfig;

beginfig(51)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(2,2)*u;
z.c=z.a+(1.5,0)*u;

draw ddline(z.a, z.c)(0, .4);
draw z.a--z.b--z.c--cycle penbold;

label.bot(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c-(3,0));
label.rt(btex $D$ etex, 1.4[z.a,z.c]);
endfig;

beginfig(52)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(2.5,2)*u;
z.c=z.a+(3,0)*u;

z.f=bisector(z.a, z.b, z.c);
z.d=z.c reflectedabout (z.b,z.f);

draw z.a--z.b--z.c--cycle penbold;
draw z.c--z.d;

rimmark(z.b--z.d);
rimmark(z.b--z.c);
arcs(z.b, z.d, z.c, ar2);
arcs(z.d, z.c, z.b, ar2);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
endfig;

beginfig(53)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(1,2.5)*u;
z.c=z.a+(2,0)*u;

draw z.a--z.b--z.c--cycle penbold;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
endfig;

beginfig(54)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(1.5,2.5)*u;
z.c=z.a+(2,0)*u;

draw z.a--z.b--z.c--cycle penbold;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
endfig;

beginfig(55)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(1.5,1)*u;
z.c=z.a+(2,0)*u;
z.f=exbisector(z.a,z.b,z.c);
z.d=z.c reflectedabout(z.b,z.f);

draw z.a--z.b--z.c penbold;
draw z.b--z.d--z.c--z.a;

rimmark2(z.b--z.d);
rimmark2(z.b--z.c);
arcs(z.b, z.d, z.c, ar2);
arcs(z.d, z.c, z.b, ar2);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
endfig;

beginfig(56)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(.5,1)*u;
z.c=z.a+(1.7,1.2)*u;
z.d=z.a+(2.5,-1)*u;
z.e=z.a+(3.5,0)*u;

draw z.a--z.b--z.c--z.d--z.e penbold;
draw z.a--z.b;
draw z.a--z.c;
draw z.a--z.d;
draw z.a--z.e;


label.lft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.rt(btex $E$ etex, z.e);
endfig;

beginfig(57)
save u;
u:=1cm;
w:=5u;

z.a=origin;
z.b=z.a+(1.5,2.5)*u;
z.c=z.a+(3,0)*u;
z.d=.2[z.b,z.c];
z.b2=z.b reflectedabout(z.a,z.d);

z.a1=z.a+(w,0);
z.b1=z.b2+(w,0);
z.c1=z.c+(w,0);

draw z.a--z.b--z.c--cycle;
draw z.a1--z.b1--z.c1--cycle;
draw z.a--z.d--z.b2--cycle;
draw z.b2--z.c;

hatchfill z.a--z.b2--z.c--cycle  withcolor (0, 1mm, -.5bp);
hatchfill z.a1--z.b1--z.c1--cycle  withcolor (0, 1mm, -.5bp);


label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.rt(btex $B_2$ etex, z.b2);
label.lft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.rt(btex $C_1$ etex, z.c1);
endfig;

beginfig(58)
save u;
u:=.7cm;

z.c=origin;
z.b=z.c+(1,0)*u;
z.a=z.c+(1,3)*u;
z.m=-1[z.c,z.b];
z.n=3.2[z.c,z.b];

draw z.m--z.n;
draw z.c--z.a--z.b;

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
endfig;

beginfig(59)
save u;
u:=.7cm;


z.c=origin;
z.b=z.c+(1,0)*u;
z.a=z.c+(1,3)*u;
z.m=-1[z.c,z.b];
z.n=3.6[z.c,z.b];
z.d=2[z.c,z.b];
z.e=3[z.c,z.b];

draw z.m--z.n;
draw z.c--z.a--z.b;
draw z.e--z.a--z.d;

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
endfig;

beginfig(60)
save u;
u:=1cm;
w:=3.5u;

z.a=origin;
z.b=z.a+(2,2.5)*u;
z.c=z.a+(2,0)*u;

z.a1=z.a+(w,0);
z.b1=z.b+(w,0);
z.c1=z.c+(w,0);

z.c2=0.75[z.a1,z.c1];
z.c3=1.25[z.a1,z.c1];

draw z.a--z.b--z.c--cycle;
draw z.a1--z.b1--z.c1--cycle;
draw z.c2--z.b1--z.c3--z.c1;

arcs(z.c, z.a, z.b, ar2);
arcs(z.c1, z.a1, z.b1, ar2);
rimmark(z.a--z.b);
rimmark(z.a1--z.b1);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.lft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.bot(btex $C_1$ etex, z.c1);
label.bot(btex $C_2$ etex, z.c2);
label.bot(btex $C_3$ etex, z.c3);
endfig;

beginfig(61)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(2,2.5)*u;
z.c=z.a+(2,0)*u;

draw z.a--z.b--z.c--cycle;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
endfig;

beginfig(62)
save u;
u:=1cm;

z.a1=origin;
z.b1=z.a1+(2,2.5)*u;
z.c1=z.a1+(2,0)*u;
z.a2=1.25[z.c1,z.a1];
z.a3=.75[z.c1,z.a1];

draw z.a2--z.b1--z.c1--cycle;
draw z.a1--z.b1--z.a3;


label.bot(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.bot(btex $C_1$ etex, z.c1);
label.bot(btex $A_2$ etex, z.a2);
label.bot(btex $A_3$ etex, z.a3);
endfig;

beginfig(63)
save u;
u:=1cm;

z.m=origin;
z.n=z.m+(0,-3)*u;
z.k=.2[z.m,z.n];
z.a=z.m+(-1.5,-2.5)*u;
z.b=z.a reflectedabout(z.m,z.n);
z.o=altitude(z.n,z.a,z.m);

draw z.m--z.n;
draw z.a--z.b--z.k--cycle;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
label.urt(btex $O$ etex, z.o);
label.urt(btex $K$ etex, z.k);
endfig;

beginfig(64)
save u;
u:=1cm;

z.o=origin;
z.m=z.o+(0,-3)*u;
z.a=z.o+(-1.5,-3)*u;
z.k=0.75[z.o,z.m];
z.c=altitude(z.a,z.k,z.o);
z.d=z.c reflectedabout(z.o,z.m);
z.b=z.a reflectedabout(z.o,z.m);

draw z.c--z.k--z.d;
draw z.a--z.o--z.b;
draw z.o--z.m;

label.bot(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.bot(btex $M$ etex, z.m);
label.top(btex $O$ etex, z.o);
label.lrt(btex $K$ etex, z.k);
endfig;

beginfig(65)
save u;
u:=1cm;
w:=6.5u;

z.a=origin;
z.b=z.a+(.5,-2)*u;
z.c=z.a+(-2,-2)*u;
z.m=1.3[z.b,z.c];
z.n=1.3[z.c,z.b];

z.ac1=z.a rotatedabout(z.c,10);
z.ac2=z.a rotatedabout(z.c,-10);
draw arc(z.ac1,z.a,z.ac2);

z.ab1=z.a rotatedabout(z.b,10*abs(z.c-z.a)/abs(z.c-z.b));
z.ab2=z.a rotatedabout(z.b,-10*abs(z.c-z.a)/abs(z.c-z.b));
draw arc(z.ab1,z.a,z.ab2);

z.a1=z.a+(-w,-.5*u);
z.a2=z.a1+(abs(z.c-z.b),0);
z.b1=z.a1+(0,-.5*u);
z.b2=z.b1+(abs(z.c-z.a),0);
z.c1=z.b1+(0,-.5*u);
z.c2=z.c1+(abs(z.a-z.b),0);

draw z.a--z.b--z.c--cycle penbold;
draw z.m--z.n;
draw z.a1--z.a2 penbold;
draw z.b1--z.b2 penbold;
draw z.c1--z.c2 penbold;

kisDot(z.a1,z.a2);
kisDot(z.b1,z.b2);
kisDot(z.c1,z.c2);
kisDot(z.a2,z.a1);
kisDot(z.b2,z.b1);
kisDot(z.c2,z.c1);

label.top(btex $A$ etex, z.a+(2,0));
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
label.top(btex $a$ etex, .5[z.a1,z.a2]);
label.top(btex $b$ etex, .5[z.a1,z.a2]-(0,.5)*u);
label.top(btex $c$ etex, .5[z.a1,z.a2]-(0,.5)*u-(0,.5)*u);
label.bot(btex $a$ etex, .5[z.b,z.c]);
label.ulft(btex $b$ etex, .5[z.c,z.a]);
label.urt(btex $c$ etex, .5[z.a,z.b]);
endfig;

beginfig(66)
save u;
u:=1cm;
w:=5.5*u;
a:=55;
b:=15;

z.b=origin;
z.a=z.b+(3,0)*u;
z.c=z.a rotatedabout(z.b,a);
z.e=.75[z.b,z.a];
z.f=z.e rotatedabout(z.b,a);
z.fe=z.e rotatedabout(z.b,a-b);

draw z.a--z.b--z.c;
draw z.e--z.f;
draw arc(z.e,z.fe,z.f);

z.o=z.b+(w,0);
z.c1=z.c+(w,0);
z.n=z.a+(w,0);
z.m=1.2[z.n,z.o];
z.p=z.e+(w,0);
z.r=z.f+(w,0);
z.q=z.r rotatedabout(z.o,b);
z.aa=z.r rotatedabout(z.p,b);
z.bb=z.r rotatedabout(z.p,-b);

draw arc(z.aa,z.r,z.bb);
draw z.n--z.m;
draw z.r--z.p;
draw z.o--z.c1;
draw arc(z.p,z.r,z.q);

label.rt(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $E$ etex, z.e);
label.ulft(btex $F$ etex, z.f);

label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
label.bot(btex $O$ etex, z.o);
label.bot(btex $P$ etex, z.p);
label.lft(btex $Q$ etex, z.q);
label.top(btex $R$ etex, z.r+(-2,1));
label.lft(btex $a$ etex, z.aa);
label.rt(btex $b$ etex, z.bb);
endfig;

beginfig(67)
save u;
u:=1cm;
a:=26;
b:=10;

z.b=origin;
z.a=z.b+(3,0)*u;
z.c=z.a rotatedabout(z.b,2a);
z.d=.6[z.b,z.a];
z.e=.z.d rotatedabout(z.b,2a);
z.de=z.d rotatedabout(z.b,a);
z.f=1.5[z.b,z.de];

draw arc(z.d,z.de,z.e);

smallarc(z.d,z.f);
smallarc(z.e,z.f);

draw z.a--z.b--z.c penbold;
draw z.d--z.f--z.e;
draw ddline(z.b, z.f)(0, 0.2) penbold;

rimmark(z.e--z.b);
rimmark(z.d--z.b);
rimmark2(z.e--z.f);
rimmark2(z.d--z.f);
rimmarkS(z.b,z.f);

label.rt(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.top(btex $F$ etex, z.f+(5,1));

endfig;

beginfig(68)
save u;
u:=1cm;

z.c=origin;
z.e=z.c+(1,0)*u;
z.b=1.6[z.c,z.e];
z.d=z.e rotatedabout(z.c,180);
z.a=z.b rotatedabout(z.c,180);
z.f=z.b rotatedabout(z.c,90);

draw z.a--z.b;
draw ddline(z.c,z.f)(0,.3);
smallarc(z.c,z.e);
smallarc(z.c,z.d);
smallarc(z.d,z.f);
smallarc(z.e,z.f);

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.llft(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
label.rt(btex $F$ etex, z.f+(3,0));
endfig;

beginfig(69)
save u;
u:=1cm;

z.a=origin;
z.f=z.a+(0,-3)*u;
z.d=z.a+(-1,-2)*u;
z.e=z.d reflectedabout(z.a,z.f);
z.de=z.d rotatedabout(z.a,2);

z.b=1.3[z.e,z.d];
z.c=z.b reflectedabout(z.a,z.f);

draw ddarc(z.d, z.de, z.e)(10, 10);
draw z.b--z.c;
draw ddline(z.a,z.f)(0,.2);

smallarc(z.d,z.f);
smallarc(z.e,z.f);

dOt z.a;

label.top(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.rt(btex $F$ etex, z.f+(3,0));
endfig;

beginfig(70)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(3,0)*u;
z.c=.5[z.a,z.b]+(0,1)*u;
z.d=z.c reflectedabout(z.a,z.b);

draw ddline(z.c,z.d)(.2,.2);
draw z.a--z.b;

z.cda=z.c rotatedabout(z.a,-2);
draw ddarc(z.c, z.cda, z.d)(10, 10);

z.cdb=z.c rotatedabout(z.b,2);
draw ddarc(z.c, z.cdb, z.d)(10, 10);

kisDot(z.a,z.b);
kisDot(z.b,z.a);

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
endfig;

beginfig(71)
save u;
u:=1cm;
w:=4*u;

z.a=origin;
z.b=z.a+(1.5,1)*u;
z.c=z.a+(2,0)*u;
z.f=exbisector(z.a,z.b,z.c);
z.d=z.c reflectedabout(z.b,z.f);

z.u=altitude(z.c,z.b,z.d);
z.v=.5[z.u,z.b];
z.w=z.v reflectedabout(z.c,z.d);
z.e=z.b reflectedabout(z.c,z.d);

z.s=5*unitvector(z.d-z.a);
z.s1ad=z.a+ z.s zscaled (0,1);
z.s2ad=z.a+z.s zscaled (1,2);
z.s3ad=.5[z.a,z.d]+z.s zscaled (-1,3);
z.s4ad=.5[z.a,z.d]+z.s zscaled (0,4);
draw z.s1ad..z.s2ad..z.s3ad..z.s4ad penhair;

z.s7ad=z.d+ z.s zscaled (0,1);
z.s6ad=z.d+z.s zscaled (-1,2);
z.s5ad=.5[z.a,z.d]+z.s zscaled (1,3);
draw z.s4ad..z.s5ad..z.s6ad..z.s7ad penhair;


draw ddarc(z.v,z.v rotatedabout(z.c,-1),z.w)(10,10);
draw ddarc(z.v,z.v rotatedabout(z.d,1),z.w)(10,10);

draw z.a--z.b--z.c--cycle penbold;
draw z.b--z.d--z.c;
draw ddline(z.b,z.e)(.2,0);

labelarcs(z.b, z.a, z.c, ar2, btex $a$ etex);

z.a1=z.a+(-w,0);
z.c1=z.c+(-w,0);
z.b1=z.b+(-w,0);

z.a2=z.a1+(0,1*u);
z.c2=z.a2+(abs(z.a-z.c),0);

draw z.a2--z.c2 penbold;

z.a3=z.a2+(0,.5*u);
z.d3=z.a3+(abs(z.a-z.d),0);

draw z.a3--z.d3 penbold;

kisDot(z.a3,z.d3);
kisDot(z.d3,z.a3);
kisDot(z.a2,z.c2);
kisDot(z.c2,z.a2);

draw .5[z.a1,z.c1]--z.a1--.5[z.a1,z.b1] penbold;
labelarcs(z.b1, z.a1, z.c1, ar2, btex $a$ etex);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
label.ulft(btex $s$ etex, z.s4ad);
label.top(btex $s$ etex, .5[z.a3,z.d3]);
label.top(btex $b$ etex, .5[z.a2,z.c2]);
endfig;

beginfig(72)
save u;
u:=1cm;

z.m=(.3,0)*u;
z.b=(1,0)*u;
z.d=(2,0)*u;
z.n=(2.7,0)*u;
z.a=(1,1.5)*u;
z.c=(2,1.5)*u;
z.p=(1.5,3)*u;

draw z.m--z.n;
draw z.a--z.b;
draw z.c--z.d;
draw z.a{dir 90}..{dir 45}z.p dashed evenly;
draw z.c{dir 90}..{dir 135}z.p dashed evenly;

dOt z.p;

label.lft(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
label.top(btex $P$ etex, z.p);
endfig;

beginfig(73)
save u;
u:=1cm;

z.m=(2,3)*u;
z.n=(1,0)*u;
z.a=(0,2.5)*u;
z.b=(3,2)*u;
z.c=(0,1)*u;
z.d=(3,1)*u;

z.x=cross(z.m--z.n,z.a--z.b);
z.y=cross(z.m--z.n,z.c--z.d);

draw z.m--z.n;
draw z.a--z.b;
draw z.c--z.d;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);

labelarcsprof(z.a, z.x, z.m, 15, 2, btex \small{$1$} etex);
labelarcsprof(z.b, z.x, z.m, 15, 2, btex \small{$2$} etex);
labelarcsprof(z.b, z.x, z.n, 15, 2, btex \small{$3$} etex);
labelarcsprof(z.a, z.x, z.n, 15, 2, btex \small{$4$} etex);
labelarcsprof(z.c, z.y, z.m, 15, 2, btex \small{$5$} etex);
labelarcsprof(z.d, z.y, z.m, 15, 2, btex \small{$6$} etex);
labelarcsprof(z.d, z.y, z.n, 15, 2, btex \small{$7$} etex);
labelarcsprof(z.c, z.y, z.n, 15, 2, btex \small{$8$} etex);
endfig;

beginfig(74)
save u;
u:=1cm;

z.m=(2,3)*u;
z.n=(1,0)*u;
z.a=(0,2)*u;
z.b=(3,2)*u;
z.c=(0,1)*u;
z.d=(3,1)*u;
z.p=(4.5,1.5)*u;
z.p1=(-1.5,1.5)*u;

z.x=cross(z.m--z.n,z.a--z.b);
z.y=cross(z.m--z.n,z.c--z.d);

draw z.m--z.n;
draw z.a--z.b;
draw z.c--z.d;
draw z.a{dir 180}..{dir -135}z.p1 dashed evenly;
draw z.c{dir 180}..{dir 135}z.p1 dashed evenly;
draw z.b{dir 0}..{dir -45}z.p dashed evenly;
draw z.d{dir 0}..{dir 45}z.p dashed evenly;

dOt z.p, z.p1;

label.top(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
label.rt(btex $P$ etex, z.p);
label.lft(btex $P'$ etex, z.p1);

labelarcsprof(z.a, z.x, z.m, 15, 2, btex \small{$1$} etex);
labelarcsprof(z.b, z.x, z.m, 15, 2, btex \small{$2$} etex);
labelarcsprof(z.b, z.x, z.n, 15, 2, btex \small{$3$} etex);
labelarcsprof(z.a, z.x, z.n, 15, 2, btex \small{$4$} etex);
labelarcsprof(z.c, z.y, z.m, 15, 2, btex \small{$5$} etex);
labelarcsprof(z.d, z.y, z.m, 15, 2, btex \small{$6$} etex);
labelarcsprof(z.d, z.y, z.n, 15, 2, btex \small{$7$} etex);
labelarcsprof(z.c, z.y, z.n, 15, 2, btex \small{$8$} etex);
endfig;

beginfig(75)
save u;
u:=1cm;
a:=25;

z.e=origin;
z.c=z.e+(2.5,0)*u;
z.m=z.e rotatedabout(z.c,-a);
z.em=z.e rotatedabout(z.c,-.5*a);
z.f=z.c rotatedabout(z.m,a);
z.d=z.f rotatedabout(z.m,10);

z.a=1.3[z.c,z.e];
z.b=1.3[z.e,z.c];

draw z.a--z.b;
draw z.m--z.c;
draw z.m--z.e;
draw z.f--z.c;
draw ddline(z.m,z.f)(.3,.3);

draw ddarc(z.e, z.em, z.m)(0, 0);
draw ddarc(z.c,z.f,z.d)(0, 0);
smallarc(z.c,z.f);

dOt z.m;
labelarcsprof(z.m, z.c, z.e, 22, 12, btex \small{$1$} etex);
labelarcsprof(z.c, z.m, z.f, 22, 12, btex \small{$2$} etex);

label.bot(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.urt(btex $F$ etex, z.f);
label.top(btex $M$ etex, z.m);
endfig;

%??? 76 --- угольник

beginfig(77)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(3,0)*u;
z.c=z.a+(1.5,1.5)*u;
z.e=z.b+(0,1.5)*u;
z.f=2[z.e,z.c];
z.e1=z.e+(0,.5)*u;
z.f1=2[z.e1,z.c];

draw z.a--z.b;
draw z.e--z.f;
draw z.e1--z.f1;

dOt z.c;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.rt(btex $E$ etex, z.e);
label.rt(btex $E'$ etex, z.e1);
endfig;

beginfig(78)
save u;
u:=1cm;

z.c=origin;
z.c1=z.c+(2.5,0)*u;
z.b=z.c+(0,1.2)*u;
z.b1=z.b+(2.5,0)*u;
z.a=z.b+(0,1)*u;
z.a1=z.a+(2.5,0)*u;
z.m=.5[z.a1,z.b1]+(1.5,0)*u;

draw z.a--z.a1;
draw z.b--z.b1;
draw z.c--z.c1;
draw z.a1{dir 0}..{dir -45}z.m dashed evenly;
draw z.b1{dir 0}..{dir 45}z.m dashed evenly;

dOt z.m;

label.lft(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $M$ etex, z.m);
endfig;

beginfig(79)
save u;
u:=1cm;

z.c=origin;
z.d=z.c+(3,0)*u;
z.e=z.c+(1.5,1.5)*u;
z.b=z.d+(0,1.5)*u;
z.a=2[z.b,z.e];
z.b1=z.b+(0,.5)*u;
z.a1=2[z.b1,z.e];
z.f=z.c+(1,0)*u;
z.m=1.6[z.f,z.e];
z.n=1.6[z.e,z.f];

draw z.a--z.b;
draw z.c--z.d;
draw z.a1--z.b1;
draw z.n--z.m;

labelarcsprof(z.b, z.e, z.m, 20, 8, btex $a$ etex);
labelarcsprof(z.d, z.f, z.e, 20, 8, btex $b$ etex);


label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $A_1$ etex, z.a1);
label.rt(btex $B_1$ etex, z.b1);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.ulft(btex $F$ etex, z.f);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
endfig;

beginfig(80)
save u;
u:=1cm;

z.c=origin;
z.d=z.c+(3,0)*u;
z.e=z.c+(1.5,1.5)*u;
z.b=z.d+(0,1.5)*u;
z.a=2[z.b,z.e];
z.f=z.c+(1.5,0)*u;
z.m=1.6[z.f,z.e];
z.n=1.6[z.e,z.f];

draw z.a--z.b;
draw z.c--z.d;
draw z.n--z.m;

labelarcsprof(z.b, z.e, z.m, 15, 3, btex $a$ etex);
labelarcsprof(z.d, z.f, z.e, 15, 3, btex $b$ etex);


label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.ulft(btex $F$ etex, z.f);
label.top(btex $M$ etex, z.m);
endfig;

beginfig(81)
save u;
u:=1cm;
w:=3*u;

z.a=origin;
z.c=z.a+(1.5,0)*u;
z.b=z.a+(.7,1.5)*u;
z.d=z.c+(.3,1.5)*u;

z.a1=z.a+(w,0);
z.c1=z.c+(w,0);
z.b1=z.a1+(.3,1.5)*u;
z.d1=z.c1+(.7,1.5)*u;

draw ddline(z.a,z.c)(.4,.4);
draw ddline(z.a,z.b)(0,.4) dashed evenly;
draw ddline(z.c,z.d)(0,.4) dashed evenly;
draw ddline(z.a1,z.c1)(.4,.4);
draw ddline(z.a1,z.b1)(.4,0) dashed evenly;
draw ddline(z.c1,z.d1)(.4,0) dashed evenly;
draw z.a--z.b;
draw z.c--z.d;
draw z.a1--z.b1;
draw z.c1--z.d1;

labelarcsprof(z.b, z.a, z.c, 15, 1, btex $a$ etex);
labelarcsprof(z.a, z.c, z.d, 15, 1, btex $b$ etex);
labelarcsprof(z.b1, z.a1, z.c1, 15, 1, btex $a$ etex);
labelarcsprof(z.a1, z.c1, z.d1, 15, 1, btex $b$ etex);

label.bot(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.llft(btex $A$ etex, z.a1+(-3,0));
label.top(btex $B$ etex, z.b1);
label.lrt(btex $C$ etex, z.c1);
label.top(btex $D$ etex, z.d1);
endfig;

beginfig(82);
save u;
u:=1cm;

z.e=origin;
z.b=(1,0)*u;
z.d=2.3[z.e,z.b];
z.f=3.3[z.e,z.b];
z.a=z.b+(z.f zscaled(0,.6));
z.c=z.a+z.d-z.b+(-.4,0)*u;

draw z.e--z.f;
draw z.b--z.a;
draw z.d--z.c;

labelarcsprof(z.f, z.b, z.a, 15, 1, btex \small{$1$} etex);
labelarcsprof(z.e, z.d, z.c, 15, 1, btex \small{$2$} etex);

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.lft(btex $E$ etex, z.e);
label.rt(btex $F$ etex, z.f);
endfig;

beginfig(83);
save u;
u:=1cm;

z.f=origin;
z.g=z.f+(3,0)*u;
z.e=z.g+(-.5,1.5)*u;
z.c=z.g+(-.5,.7)*u;
z.a=z.f+(.5,1.5)*u;
z.d=altitude(z.f,z.c,z.g);
z.b=altitude(z.f,z.a,z.e);

draw z.e--z.f--z.g;
draw z.c--z.d;
draw z.a--2[z.a,z.b];

label.ulft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b+(2,1));
label.top(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);
label.lft(btex $F$ etex, z.f);
label.rt(btex $G$ etex, z.g);

endfig;

beginfig(84);
save u;
u:=.6cm;

z.o=origin;
z.v=(.5,2)*u;
z.w=(2.5,0)*u;

labelarcsprof(z.v+z.w-z.v, z.o+z.w-z.v, z.w+z.w-z.v, 16, 1, btex \small{$1$} etex);
labelarcsprof(z.v, z.o, z.w, 16, 1, btex \small{$2$} etex);
labelarcsprof(z.v+z.w, z.o+z.w, z.w+z.w, 16, 1, btex \small{$3$} etex);
labelarcsprof(-z.v, z.o, -z.w, 16, 1, btex \small{$4$} etex);
labelarcsprof(z.v, z.o, -z.w, 14, 1, btex \small{$5$} etex);
labelarcsprof(-z.v, z.o, z.w, 14, 1, btex \small{$6$} etex);

draw z.o-z.v--z.o+z.v;
draw -.7*z.w--2*z.w;
draw z.w-z.v--z.w+z.v;
draw z.w-z.v--2*z.w-z.v;

drawarrow (z.o+.5z.v+.1z.w)--(z.o+.9z.v+.1z.w);
drawarrow (z.w-z.v+z.o+.5z.v+.1z.w)--(z.w-z.v+z.o+.9z.v+.1z.w);
%drawarrow (z.o-.5z.v-.1z.w)--(z.o-.9z.v-.1z.w);
drawarrow (z.w-z.v+z.o+.5z.v+.1z.w)--(z.w-z.v+z.o+.9z.v+.1z.w);
drawarrow (z.o+.4z.w+.1z.v)--(z.o+.8z.w+.1z.v);
%drawarrow (z.o-.4z.w-.1z.v)--(z.o-.6z.w-.1z.v);
drawarrow (z.w-z.v+z.o+.4z.w+.1z.v)--(z.w-z.v+z.o+.8z.w+.1z.v);
endfig;

beginfig(85);
save u;
u:=1cm;

z.w=(.6,.8);

z.b=origin;
z.c=z.b+(2,0)*u;
z.a=z.c zscaled(z.w);
z.d=.8(z.c zscaled(0,-1));
z.e=z.d zscaled(z.w);

z.x=z.b+(3,1)*u;
z.y1=z.x+(0,-1.2)*u;
z.y2=z.x+((z.y1-z.x) zscaled(z.w));
z.y3=2*z.x-z.y1;
z.y4=2*z.x-z.y2;

draw z.a--z.b--z.c;
draw z.d--z.b--z.e;
draw z.y1--z.y3;
draw z.y2--z.y4;

labelarcsprof(z.c, z.b, z.a, 16, 3, btex \small{$1$} etex);
labelarcsprof(z.y1, z.x, z.y2, 16, 3, btex \small{$2$} etex);
labelarcsprof(z.y1, z.x, z.y4, 14, 1, btex \small{$3$} etex);
labelarcsprof(z.y4, z.x, z.y3, 16, 3, btex \small{$4$} etex);
labelarcsprof(z.y3, z.x, z.y2, 14, 1, btex \small{$5$} etex);
labelarcsprof(z.e, z.b, z.d, 16, 3, btex \small{$6$} etex);

mark_angle(z.d, z.b, z.c, 25);
mark_angle(z.e, z.b, z.a, 29);

label.urt(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);

endfig;

beginfig(86);
save u;
u:=1cm;

z.a=origin;
z.b=(1.5,2)*u;
z.c=(2,0)*u;
z.e=z.b+z.c;
z.d=2*z.c;

draw z.a--z.b--z.c--cycle penbold;
draw z.e--z.c--z.d;

arcs(z.b, z.a, z.c, 10);
arcs2(z.c, z.b, z.a, 10);
arcs3(z.a, z.c, z.b, 10);
arcs(z.e, z.c, z.d, 10);
arcs2(z.e, z.c, z.b, 10);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);

endfig;

beginfig(87);
save u;
u:=1.4cm;

z.d=origin;
z.c=(2,0)*u;
z.b=z.c rotatedabout(z.d,60);

z.a=.5[z.d,z.c];

draw z.d--z.b--z.c--cycle;
draw z.a--z.b;

labelarcsprof(z.b, z.d, z.c, 9, 9, btex \small{$60\degree$} etex);
labelarcsprof(z.d, z.c, z.b, 9, 9, btex \small{$60\degree$} etex);
labelarcsprof(z.a, z.b, z.c, 9, 18, btex \small{$30\degree$} etex);
labelarcsprof(z.a, z.b, z.d, 9, 18, btex \small{$30\degree$} etex);

label.bot(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);

endfig;

beginfig(88);
save u;
u:=1cm;

z.o=origin;
z1=(1.5,-.4)*u;
z2=(1.3,1)*u;
z3=(-.3,1.2)*u;
z4=(-1,-.2)*u;
z5=(-.3,-1)*u;
z6=(1,-1)*u;

draw z1--z2--z3--z4--z5--z6--cycle;
draw z.o--z1;
draw z.o--z2;
draw z.o--z3;
draw z.o--z4;
draw z.o--z5;
draw z.o--z6;

label.ulft(btex $O$ etex, z.o+(0,-2));

endfig;

beginfig(89);
save u;
u:=1cm;

z.o=origin;
z1=(1.5,-.4)*u;
z2=(1.3,1)*u;
z3=(-.3,1.2)*u;
z4=(-1,-.2)*u;
z5=(-.3,-1)*u;
z6=(1,-1)*u;

draw z1--z2--z3--z4--z5--z6--cycle;
draw z5--z1;
draw z5--z2;
draw z5--z3;
draw z5--z4;
draw z5--z6;

endfig;

beginfig(90);
save u;
u:=1cm;

z1=(0,0)*u;
z2=(0,1.5)*u;
z3=(1,2)*u;
z4=(2,1.5)*u;
z5=(1.5,0)*u;

z12=1.5[z1,z2];
z23=1.5[z2,z3];
z34=1.5[z3,z4];
z45=1.5[z4,z5];
z51=1.5[z5,z1];

draw z1--z2--z3--z4--z5--cycle penbold;
draw z1--z51 dashed evenly;
draw z2--z12 dashed evenly;
draw z3--z23 dashed evenly;
draw z4--z34 dashed evenly;
draw z5--z45 dashed evenly;

arcs(z51, z1, z2, 10);
arcs(z12, z2, z3, 10);
arcs(z23, z3, z4, 10);
arcs(z34, z4, z5, 10);
arcs(z45, z5, z1, 10);
endfig;

beginfig(91);

draw dashpattern(on 3 off 2 on 0 off 2) dashed evenly;
picture p;
p=currentpicture;
currentpicture:=nullpicture;

save u;
u:=.6cm;

z.o=origin;
z.a=(1.5,1.5)*u;
z.a1=-z.a;

draw z.a--z.a1 dashed p;
dOt z.a,z.a1,z.o;

label.top(btex $A$ etex, z.a);
label.bot(btex $A'$ etex, z.a1);
label.rt(btex $O$ etex, z.o);
endfig;

beginfig(92);

draw dashpattern(on 3 off 2 on 0 off 2) dashed evenly;
picture p;
p=currentpicture;
currentpicture:=nullpicture;

save u;
u:=1.2cm;

z.o=origin;
z.a=(-.8,1)*u;
z.b=(1.2,1)*u;
z.d=.4[z.b,z.a];
z.a1=-z.a;
z.b1=-z.b;
z.d1=-z.d;

draw z.a--z.b;
draw z.a1--z.b1;
draw z.a--z.a1 dashed p;
draw z.b--z.b1 dashed p;
draw z.d--z.d1 dashed p;

dOt z.a,z.a1,z.b,z.b1,z.d,z.d1,z.o;

labelarcsprof(z.o, z.a, z.b, 16, 3, btex \small{$1$} etex);
labelarcsprof(z.o, z.a1, z.b1, 16, 3, btex \small{$2$} etex);
labelarcsprof(z.a, z.o, z.d, 16, 3, btex \small{$3$} etex);
labelarcsprof(z.a1, z.o, z.d1, 16, 3, btex \small{$4$} etex);

label.top(btex $A$ etex, z.a);
label.bot(btex $A'$ etex, z.a1);
label.top(btex $B$ etex, z.b);
label.bot(btex $B'$ etex, z.b1);
label.top(btex $D$ etex, z.d);
label.bot(btex $D'$ etex, z.d1);
label.rt(btex $O$ etex, z.o);
endfig;

beginfig(93);

draw dashpattern(on 3 off 2 on 0 off 2) dashed evenly;
picture p;
p=currentpicture;
currentpicture:=nullpicture;

save u;
u:=1cm;

z.o=origin;
z.a=(1,.3)*u;
z.b=(2,-1.5)*u;
z.c=(1.5,1.5)*u;
z.a1=-z.a;
z.b1=-z.b;
z.c1=-z.c;

draw z.a--z.b--z.c--cycle penbold;
draw z.a1--z.b1--z.c1--cycle penbold;
draw z.a--z.a1 dashed p;
draw z.b--z.b1 dashed p;
draw z.c--z.c1 dashed p;

labelarcsprof(z.a, z.o, z.b, 16, 3, btex \small{$1$} etex);
labelarcsprof(z.a1, z.o, z.b1, 16, 3, btex \small{$2$} etex);
labelarcsprof2(z.c, z.o, z.a, 20, 9, btex \small{$4$} etex);
labelarcsprof2(z.c1, z.o, z.a1, 20, 9, btex \small{$3$} etex);

dOt z.o;

label.llft(btex $A$ etex, z.a+(2,-1));
label.urt(btex $A'$ etex, z.a1+(-2,1));
label.bot(btex $B$ etex, z.b);
label.top(btex $B'$ etex, z.b1);
label.top(btex $C$ etex, z.c);
label.bot(btex $C'$ etex, z.c1);
label.top(btex $O$ etex, z.o);
endfig;

beginfig(96);
save u;
u:=1cm;
k:=1.4;

z.a=origin;
z.b=(.5,1.5)*u;
z.d=(2,0)*u;
z.c=z.b+z.d;

z.k=k[z.b,z.a];
z.m=k[z.d,z.c];
z.l=k[z.a,z.b];
z.n=k[z.c,z.d];
z.r=k[z.d,z.a];
z.q=k[z.b,z.c];
z.p=k[z.c,z.b];
z.s=k[z.a,z.d];

draw z.k--z.l;
draw z.m--z.n;
draw z.p--z.q;
draw z.r--z.s;

label.ulft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c+(2,0));
label.urt(btex $D$ etex, z.d+(2,0));
label.lft(btex $P$ etex, z.p);
label.rt(btex $Q$ etex, z.q);
label.lft(btex $R$ etex, z.r);
label.rt(btex $S$ etex, z.s);
label.bot(btex $K$ etex, z.k);
label.top(btex $L$ etex, z.l);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
endfig;

beginfig(97);
save u;
u:=1cm;
k:=1.4;

z.a=origin;
z.b=(.5,1.5)*u;
z.d=(2,0)*u;
z.c=z.b+z.d;

draw z.a--z.b--z.c--z.d--cycle;
draw z.b--z.d;

labelarcsprof(z.a, z.d, z.b, 18, 4, btex \small{$3$} etex);
labelarcsprof(z.c, z.b, z.d, 18, 4, btex \small{$2$} etex);
labelarcsprof2(z.a, z.b, z.d, 18, 3, btex \small{$1$} etex);
labelarcsprof2(z.c, z.d, z.b, 18, 3, btex \small{$4$} etex);

rimmarkS(z.b,z.d);

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c+(2,0));
label.lrt(btex $D$ etex, z.d+(2,0));

endfig;

beginfig(98);
save u;
u:=1cm;
k:=.2;

z.a=origin;
z.b=(3,0)*u;
z.d=(0,1.5)*u;
z.c=z.b+z.d;

z.q=k[z.b,z.a];
z.m=k[z.d,z.c];
z.p=k[z.a,z.b];
z.n=k[z.c,z.d];


draw z.m--z.p;
draw z.n--z.q;
draw z.a--z.b;
draw z.c--z.d;

dOt z.m,z.n,z.p,z.q;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c+(2,0));
label.lft(btex $D$ etex, z.d+(2,0));
label.bot(btex $P$ etex, z.p);
label.bot(btex $Q$ etex, z.q);
label.top(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);
endfig;

beginfig(99);
save u;
u:=1cm;
k:=1.4;

z.a=origin;
z.b=(.5,1.5)*u;
z.d=(2,0)*u;
z.c=z.b+z.d;

draw z.a--z.b--z.c--z.d--cycle;
draw z.b--z.d;

labelarcsprof(z.a, z.d, z.b, 18, 4, btex \small{$3$} etex);
labelarcsprof(z.c, z.b, z.d, 18, 4, btex \small{$2$} etex);
labelarcsprof2(z.a, z.b, z.d, 18, 3, btex \small{$1$} etex);
labelarcsprof2(z.c, z.d, z.b, 18, 3, btex \small{$4$} etex);

rimmarkS(z.b,z.d);
rimmark(z.a--z.b);
rimmark(z.d--z.c);
rimmark2(z.a--z.d);
rimmark2(z.b--z.c);

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c+(2,0));
label.lrt(btex $D$ etex, z.d+(2,0));

endfig;

beginfig(100);
save u;
u:=1.4cm;
k:=1.4;

z.a=origin;
z.b=(.5,1.5)*u;
z.d=(2,0)*u;
z.c=z.b+z.d;
z.o=.5[z.a,z.c];
z.p=.6[z.b,z.c];
z.q=2*z.o-z.p;


hatchfill z.a--z.c--z.b--z.d--cycle  withcolor (87, 1mm, -.5bp);

fill_angle(z.a, z.d, z.b, 17);
fill_angle(z.d, z.b, z.c, 17);
fill_angle(z.d, z.a, z.b, 20);
fill_angle(z.b, z.c, z.a, 20);

labelarcsprof(z.a, z.d, z.b, 18, 5, btex \small{$2$} etex);
labelarcsprof(z.c, z.b, z.d, 18, 5, btex \small{$1$} etex);
labelarcsprof2(z.b, z.c, z.a, 20, 7, btex \small{$3$} etex);
labelarcsprof2(z.c, z.a, z.d, 20, 7, btex \small{$4$} etex);

draw z.a--z.b--z.c--z.d--cycle;
draw z.a--z.c;
draw z.b--z.d;
draw z.p--z.q;

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.top(btex $P$ etex, z.p);
label.bot(btex $Q$ etex, z.q);
label.lft(btex $O$ etex, z.o+(-2,0));
endfig;

beginfig(101);
save u;
u:=1cm;

z.a=origin;
z.b=(0,1.5)*u;
z.d=(2,0)*u;
z.c=z.b+z.d;

hatchfill z.a--z.c--z.d--cycle  withcolor (60, 1mm, -.5bp);
hatchfill z.a--z.b--z.d--cycle  withcolor (120, 1mm, -.5bp);


draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.a--z.c;
draw z.b--z.d;

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);

endfig;

beginfig(102);
draw dashpattern(on 3 off 2 on 0 off 2) dashed evenly;
picture p;
p=currentpicture;
currentpicture:=nullpicture;

save u;
u:=1cm;

z.a=origin;
z.b=(0,1.5)*u;
z.d=(2,0)*u;
z.c=z.b+z.d;

z.p=(-.2)[.5[z.a,z.b],.5[z.d,z.c]];
z.q=(1.2)[.5[z.a,z.b],.5[z.d,z.c]];
z.n=(-.2)[.5[z.a,z.d],.5[z.b,z.c]];
z.m=(1.2)[.5[z.a,z.d],.5[z.b,z.c]];

draw z.a--z.b--z.c--z.d--cycle;
draw z.a--z.c;
draw z.b--z.d;
draw z.m--z.n dashed p;
draw z.p--z.q dashed p;

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
label.lft(btex $P$ etex, z.p);
label.rt(btex $Q$ etex, z.q);

endfig;

end




