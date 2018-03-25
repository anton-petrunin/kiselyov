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

mark_angle(z.b, z.c, z.m, ar2);
mark_angle(z.n, z.c, z.b, 1.1*ar2);

arcs(z.b, z.d, z.m, ar2);
arcs(z.n, z.d, z.b, 1.1*ar2);
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

end










