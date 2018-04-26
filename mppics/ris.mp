input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../book}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;

%outputformat := "svg";

vardef next expr pa = 
    numeric s, k; s = 10; k=2+.5*normaldeviate;
    point 0 of pa shifted ((k+.5*normaldeviate)*(unitvector(direction arctime(0) of pa of pa) rotated 90))
    for a = s step s until arclength(pa):
        .. point arctime(a) of pa of pa 
           shifted ((k+.2*normaldeviate+sind(a))*(unitvector(direction arctime(a) of pa of pa) rotated 90))
    endfor
enddef;

vardef woody =
picture wood;
 wood:=image(  for i=0 upto 10:
        p:= next p;
            draw p withpen pencircle xscaled (.2+.1*normaldeviate) yscaled (.2+.1*normaldeviate) rotated (5*normaldeviate);
    endfor)
enddef;

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
label.urt(btex $C$ etex, z.c);
label.llft(btex $D$ etex, z.d);
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

hatchfill z.b--z.o--z.a..(1.05[z.o, 0.5[z.a, z.b]])..cycle  withcolor (127, 2mm, -.5bp);

draw z.a--z.o--z.b penbold;

label.llft(btex $O$ etex, z.o);
label.bot(btex $A$ etex, z.b);
label.top(btex $B$ etex, z.a);

z.v=(9, 0)*u;
z.o1=z.o+z.v;
z.a1=z.a+z.v;
z.b1=z.b+z.v;

draw z.a1--z.o1--z.b1 penbold;

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

z.o1=(4,0)*u;
z.a1=z.o1+z.a;
z.b1=z.o1+z.b;
z.x1=z.a1 rotatedaround (z.o1, 8);
z.y1=z.a1 rotatedaround (z.o1, -8);

draw z.a--z.o--z.b penbold;
draw z.a1--z.o1--z.b1 penbold;
draw z.o1--z.x1;
draw z.o1--z.y1;

label.urt(btex $A$ etex, z.a);
label.urt(btex $A_1$ etex, z.a1);
label.rt(btex $B$ etex, z.b);
label.rt(btex $B_1$ etex, z.b1);
label.llft(btex $O$ etex, z.o);
label.llft(btex $O_1$ etex, z.o1);
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

arcs(z.m, z.n, z.p, ar2);
arcs2(z.q, z.n, z.p, ar2);
arcs(z.a, z.o, z.b, ar2);
arcs2(z.a1, z.o1, z.b1, ar2);

draw z.a--z.o--z.b;
draw z.a1--z.o1--z.b1;
draw z.m--z.n--z.p; draw z.n--z.q;

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

label(btex биссектриса etex rotated angle(z.b), .5[z.o,z.b]+(unitvector(z.b) zscaled (0,5)));
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

label.rt(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);
label.bot(btex $O$ etex, z.o);
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

draw z.b--z.o--z.a;
draw z.o--z.c;
draw z.o--z.d;
draw z.o--z.e;

label.rt(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.llft(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.lrt(btex $O$ etex, z.o);

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

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.top(btex $O$ etex, z.o);
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

label.top(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.llft(btex $O$ etex, z.o);
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
z.c=(2.5/3)*z.7;

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

label.urt(btex $A$ etex, 1.13*z.7);
label.rt(btex $B$ etex, 1.13*z.d);
label.ulft(btex $C$ etex, z.c);
label.bot(btex $D$ etex, (2.5/3)*z.d);
label.llft(btex $O$ etex, z.o);
endfig;

beginfig(20)
save u;
u:=.8cm;

z.o=origin;
z.o1=z.o+(3.6,0)*u;
z.o2=z.o+(7.2,0)*u;

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

draw 1.13[z.o,z.y0]--z.o--1.13[z.o,z.x0] penbold;
draw 1.13[z.o1,z.w1]--z.o1--1.13[z.o1,z.x1] penbold;
draw 1.13[z.o2,z.w2]--z.o2--1.13[z.o2,z.x2] penbold;
draw ddline(z.o, z.x)(0, 0);
draw ddline(z.o1, z.y1)(0, 0.13);
draw ddline(z.o2, z.y2)(0, 0.13);

label.lrt(btex прямой etex, z.o);
label.lrt(btex острый etex, z.o1);
label.lrt(btex тупой etex, z.o2);
label.urt(btex $90\degree$ etex, z.o);

endfig;

beginfig(21)
save u;
u:=.7cm;

z.o=origin;
z.a=z.o-(2,0)*u;
z.b=z.o+(1.5,1.5)*u;
z.c=z.o+(2,0)*u;

arcs(z.c, z.o, z.b, ar2);
arcs2(z.b, z.o, z.a, ar2);

draw z.a--z.c;
draw z.o--z.b;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(22)
save u;
u:=.8cm;

z.o=origin;
z.a=z.o+(2,0)*u;
z.b=z.o+(1.4,1.4)*u;
z.c=-.67*z.a;
z.d=-.67*z.b;

draw z.c--z.o--z.d;
draw z.o--z.a penbold;
draw z.o--z.b penbold;

label.rt(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.llft(btex $D$ etex, z.d);
label.bot(btex $O$ etex, z.o+(2,0));
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

label.rt(btex $A$ etex, 1.13*z.a);
label.top(btex $B$ etex, 1.13*z.b);
label.lft(btex $C$ etex, -1.13*z.a);
label.bot(btex $D$ etex, -1.13*z.b);
label.lrt(btex $O$ etex, z.o);

label.urt(btex $90\degree$ etex, z.o+(8,8));
label.lrt(btex $90\degree$ etex, z.o+(8,-8));
label.ulft(btex $90\degree$ etex, z.o+(-8,8));
label.llft(btex $90\degree$ etex, z.o+(-8,-8));

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

label.lft(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $O$ etex, z.o);
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

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(26)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(3,0)*u;
z.c=.5[z.a,z.b];
z.d=.4[z.a,z.c];
z.m= z.b rotatedaround (z.c, 90);
z.n= z.m reflectedabout (z.a,z.b);

arcs(z.b, z.d, z.m, 8);
arcs(z.n, z.d, z.b, 10);

draw z.a--z.b;
draw z.m--z.n;
draw z.m--z.d--z.n;

mark_angle(z.b, z.c, z.m, 8);
mark_angle(z.n, z.c, z.b, 10);

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
endfig;

%27 > ../geogebra/ugolnik.png

beginfig(27)
save u,k;
u:=1.4cm;
k:=.4;

z.c=origin;
z.cb=(1,0)*u;
z.e=2*(z.c rotatedabout(z.cb,-60))-z.cb;
z.ce=bisector(z.c,z.cb,z.e);
z.i=bisector(z.ce,z.c,z.cb);
z.c1=k[z.i,z.c];
z.cb1=k[z.i,z.cb];
z.e1=k[z.i,z.e];
z.a=-1.2*z.cb;
z.b=-z.a;
z.a1=z.a+(0,-(1-k)*y.i);
z.b1=z.b+(0,y.a1);
z.d=.7[z.c,z.e];

Dot z.d;
fill z.c--z.c1--z.e1--z.e--cycle withcolor white;

path p;
p:=z.a--2[z.a,z.b];
woody;
clip wood to z.c--z.cb--z.cb1--z.c1--cycle; 
draw wood;

p:=2[z.b1,z.a1]--2[z.a1,z.b1];
woody;
clip wood to z.a--z.b--z.b1--z.a1--cycle; 
draw wood;

p:=2[z.c,z.e]--2[z.e,z.c];
woody;
clip wood to z.c--z.c1--z.e1--z.e--cycle; 
draw wood;

p:=2[z.e,z.cb]--2[z.cb,z.e];
woody;
clip wood to z.e--z.e1--z.cb1--z.cb--cycle; 
draw wood;

draw z.a--z.a1--z.b1--z.b penhair;
draw z.c1--z.cb1--z.e1--cycle penhair;
draw z.e--z.cb--z.c penhair;
draw z.e--z.c ;
draw ddline(z.a,z.c)(.2,0) ;
draw ddline(z.cb,z.b)(0,.7) ;



label.ulft(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
endfig;

beginfig(28)
save u;
u:=1cm;

z.o=origin;
z.a=(-1.8,.9)*u;
z.b=-z.a;
z.c=(-1.5,-1)*u;
z.d=-z.c;

draw z.a--z.b;
draw z.c--z.d;

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
label.top(btex $O$ etex, z.o);
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

label.lft(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
label.rt(btex $E$ etex, z.e);
label.bot(btex $O$ etex, z.o);
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

label.lft(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.bot(btex $O$ etex, z.o+(-1,-1));
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

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
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

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.llft(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);
endfig;

beginfig(33)
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(-.5,.7)*u;
z.c=z.a+(1,2)*u;
z.d=z.a+(2.5,1.2)*u;
z.e=z.a+(2,0)*u;

z.m=z.a+(5,0)*u;
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

label.llft(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
label.llft(btex $M$ etex, z.m);
label.ulft(btex $N$ etex, z.n);
label.top(btex $P$ etex, z.p+(-1,1));
label.top(btex $Q$ etex, z.q);
label.rt(btex $R$ etex, z.r);
label.lrt(btex $S$ etex, z.s);
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
z.b=(2,3)*u;
z.c=(2,0)*u;

save p; path p[];
p1=z.a--z.b--z.c--cycle;

draw p1 penbold;

label.bot(btex катет etex, .5[z.a,z.c]);
label.rt(btex катет etex rotated 90, .5[z.c,z.b]);
label(btex гипотенуза etex rotated angle(z.b), .5[z.a,z.b]+unitvector(z.b-z.a) zscaled(0,4));
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

label.llft(btex а etex, (2.5,1.5)*u);
label.lft(btex б etex, (6.5,1.5)*u);

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.bot(btex $F$ etex, z.f);

label.llft(btex $A$ etex, z.a1);
label.top(btex $B$ etex, z.b1);
label.lrt(btex $C$ etex, z.c1);
label.bot(btex $D$ etex, z.d1);
label.bot(btex $E$ etex, z.e1);

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

label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
label.urt(btex $a$ etex, z.aa);
label.lft(btex $A$ etex, z.a0);
label.top(btex $B$ etex, z.b0);
label.llft(btex $C$ etex, z.c0);
label.llft(btex $D$ etex, z.d0);
label.lft(btex $E$ etex, z.e0);
label.rt(btex $A'$ etex, z.a1);
label.top(btex $B'$ etex, z.b1);
label.lrt(btex $C'$ etex, z.c1);
label.lrt(btex $D'$ etex, z.d1);
label.rt(btex $E'$ etex, z.e1);
endfig;

beginfig(41)
save u;
u:=1cm;
for a=0 upto 3:
draw (-1,0)*u{dir 45}..{dir 60a}(-1,2)*u penbold;
draw (1,0)*u{dir 135}..{dir 60a}(1,2)*u penbold;
endfor
z.b=(0,-.2);
z.a=(0,2.2)*u;
draw z.a--z.b dashed evenly scaled 2;

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
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
z.k=.5[z.m0,z.m1];

labelarcsprof(z.a, z.b, z.d, 21, 9, btex \small{$1$} etex);
labelarcsprof(z.c, z.b, z.d, 21, 9, btex \small{$2$} etex);
labelarcsprof(z.b, z.d, z.c, 14, 1, btex \small{$3$} etex);
labelarcsprof(z.b, z.d, z.a, 14, 1, btex \small{$4$} etex);
labelarcsprof(z.d, z.a, z.b, 17, 3, btex \small{$5$} etex);
labelarcsprof(z.d, z.c, z.b, 17, 3, btex \small{$6$} etex);

draw z.a--z.b;
draw z.c--z.b;
draw z.c--z.a;
draw z.d--z.b;
draw z.m0--z.m1;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);

label.ulft(btex $M$ etex, z.m0);
label.urt(btex $M'$ etex, z.m1);
label.lrt(btex $K$ etex, z.k);
endfig;

beginfig(45)
save u;
u:=.8cm;
save w;
w:=3*u;

z.c=origin;
z.b=z.c+(2,0)*u;
z.a=z.c+(1.5,2)*u;

z.a1=z.a shifted (w,0);
z.b1=z.b shifted (w,0);
z.c1=z.c shifted (w,0);

arcs(z.c, z.a, z.b, ar2);
arcs(z.c1, z.a1, z.b1, ar2);

draw z.a--z.b--z.c--cycle;
draw z.a1--z.b1--z.c1--cycle;

rimmark(z.a--z.c);
rimmark(z.a1--z.c1);
rimmark2(z.a--z.b);
rimmark2(z.a1--z.b1);

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.top(btex $A_1$ etex, z.a1);
label.bot(btex $B_1$ etex, z.b1);
label.bot(btex $C_1$ etex, z.c1);

endfig;

beginfig(46)
save u;
u:=.8cm;
save w;
w:=3*u;

z.c=origin;
z.b=z.c+(2,0)*u;
z.a=z.c+(1.5,2)*u;

z.a1=z.a shifted (w,0);
z.b1=z.b shifted (w,0);
z.c1=z.c shifted (w,0);

arcs(z.b, z.c, z.a, ar2);
arcs(z.b1, z.c1, z.a1, ar2);
arcs2(z.c, z.b, z.a, ar2);
arcs2(z.c1, z.b1, z.a1, ar2);

draw z.a--z.b--z.c--cycle;
draw z.a1--z.b1--z.c1--cycle;

rimmark(z.b--z.c);
rimmark(z.b1--z.c1);

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.top(btex $A_1$ etex, z.a1);
label.bot(btex $B_1$ etex, z.b1);
label.bot(btex $C_1$ etex, z.c1);

endfig;

beginfig(47)
save u;
u:=1cm;

z.w=(0,-3*u);

z.a=origin;
z.c=z.a+(2.5,0)*u;
z.b=z.a+(1.5,2)*u;

z.b1=z.b shifted z.w;
z.c1=z.c shifted z.w;
z.a1=z.a shifted z.w;
z.b2=z.b1 reflectedabout (z.c1,z.a1);

labelarcsprof(z.c1, z.b1, z.b2, 20, 7, btex \small{$1$} etex);
labelarcsprof2(z.a1, z.b1, z.b2, 20, 5, btex \small{$2$} etex);
labelarcsprof2(z.a1, z.b2, z.b1, 20, 5, btex \small{$3$} etex);
labelarcsprof(z.c1, z.b2, z.b1, 20, 7, btex \small{$4$} etex);

draw z.b--z.c--z.a--cycle;
draw z.b1--z.c1--z.a1--cycle;
draw z.c1--z.b2--z.a1;
draw z.b1--z.b2;

rimmark2(z.b--z.a);
rimmark2(z.b1--z.a1);
rimmark2(z.b2--z.a1);
rimmark3(z.c--z.a);
rimmark3(z.c1--z.a1);
rimmark(z.c--z.b);
rimmark(z.c1--z.b1);
rimmark(z.c1--z.b2);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.lft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.rt(btex $C_1$ etex, z.c1);
label.bot(btex $B_2$ etex, z.b2);

endfig;

beginfig(471)
save u;
u:=1cm;

z.w=(0,-3*u);

z.a=origin;
z.c=z.a+(1.5,0)*u;
z.b=z.a+(2,2)*u;

z.b1=z.b shifted z.w;
z.c1=z.c shifted z.w;
z.a1=z.a shifted z.w;
z.b2=z.b1 reflectedabout (z.c1,z.a1);

labelarcsprof(z.c1, z.b1, z.b2, 23, 7, btex  etex);
labelarcsprof(z.c1, z.b2, z.b1, 23, 7, btex  etex);
labelarcsprof2(z.a1, z.b1, z.b2, 17, 5, btex  etex);
labelarcsprof2(z.a1, z.b2, z.b1, 17, 5, btex  etex);



draw z.b1--z.c1--z.a1--cycle;
draw z.c1--z.b2--z.a1;
draw z.b1--z.b2;


rimmark2(z.b1--z.a1);
rimmark2(z.b2--z.a1);
rimmark(z.c1--z.b1);
rimmark(z.c1--z.b2);


label.lft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.ulft(btex $C_1$ etex, z.c1);
label.bot(btex $B_2$ etex, z.b2);

endfig;

beginfig(472)
save u;
u:=1cm;

z.w=(0,-3*u);

z.a=origin;
z.c=z.a+(2,0)*u;
z.b=z.a+(2,2)*u;

z.b1=z.b shifted z.w;
z.c1=z.c shifted z.w;
z.a1=z.a shifted z.w;
z.b2=z.b1 reflectedabout (z.c1,z.a1);

labelarcsprof2(z.a1, z.b1, z.b2, 17, 5, btex etex);
labelarcsprof2(z.a1, z.b2, z.b1, 17, 5, btex  etex);

draw z.b1--z.c1--z.a1--cycle;
draw z.c1--z.b2--z.a1;
draw z.b1--z.b2;

rimmark2(z.b1--z.a1);
rimmark2(z.b2--z.a1);

label.lft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.rt(btex $C_1$ etex, z.c1);
label.bot(btex $B_2$ etex, z.b2);
endfig;

beginfig(48)
save u;
u:=.8cm;

z.a=origin;
z.b=z.a+(1.5,1.5)*u;
z.c=z.a+(2.5,0)*u;

draw ddline(z.a, z.c)(.4, .4);
draw ddline(z.a, z.b)(0, .4);
draw z.a--z.b--z.c--cycle penbold;

label.ulft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, 1.4[z.a,z.c]);
label.urt(btex $E$ etex, 1.4[z.a,z.b]);
label.lft(btex $F$ etex, (-.4)[z.a,z.c]);
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
u:=.8cm;

z.a=origin;
z.b=z.a+(2.5,2)*u;
z.c=z.a+(3,0)*u;

z.f=bisector(z.a, z.b, z.c);
z.d=z.c reflectedabout (z.b,z.f);

arcs(z.b, z.d, z.c, ar2);
arcs(z.d, z.c, z.b, ar2);

draw z.a--z.b--z.c--cycle penbold;
draw z.c--z.d;

rimmark(z.b--z.d);
rimmark(z.b--z.c);


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

arcs(z.b, z.d, z.c, ar2);
arcs(z.d, z.c, z.b, ar2);

draw z.a--z.b--z.c penbold;
draw z.b--z.d--z.c--z.a;

rimmark2(z.b--z.d);
rimmark2(z.b--z.c);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
endfig;

beginfig(56)
save u;
u:=.7cm;

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
z.n=2.2[z.c,z.b];

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

arcs(z.c, z.a, z.b, ar2);
arcs(z.c1, z.a1, z.b1, ar2);

draw z.a--z.b--z.c--cycle;
draw z.a1--z.b1--z.c1--cycle;
draw z.c2--z.b1--z.c3--z.c1;

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

beginfig(631)
save u;
u:=1cm;

z.m=origin;
z.n=z.m+(0,-3)*u;
z.k=z.m+(-.5,-1)*u;
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
label.top(btex $K$ etex, z.k);
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

beginfig(641)
save u;
u:=1cm;

z.o=origin;
z.m=z.o+(0,-3)*u;
z.a=z.o+(-1.5,-3)*u;
z.k=0.75[z.o,z.m]+(-.5,0)*u;
z.c=altitude(z.a,z.k,z.o);
z.b=z.a reflectedabout(z.o,z.m);
z.d=altitude(z.b,z.k,z.o);

draw z.c--z.k--z.d;
draw z.a--z.o--z.b;
draw z.o--z.m;

label.bot(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.bot(btex $M$ etex, z.m);
label.top(btex $O$ etex, z.o);
label.bot(btex $K$ etex, z.k);
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
u:=.8cm;

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

z.s4ad=.5[z.a,z.d]+z.s zscaled (0,3);


labelarcs(z.b, z.a, z.c, ar2, btex $\alpha$ etex);

draw z.a..z.s4ad..z.d dashed evenly;

draw ddarc(z.v,z.v rotatedabout(z.c,-1),z.w)(10,10);
draw ddarc(z.v,z.v rotatedabout(z.d,1),z.w)(10,10);

draw z.a--z.b--z.c--cycle penbold;
draw z.b--z.d--z.c;
draw ddline(z.b,z.e)(.2,0);

z.a1=z.a+(-w,0);
z.c1=z.c+(-w,0);
z.b1=z.b+(-w,0);

z.a2=z.a1+(0,1*u);
z.c2=z.a2+(abs(z.a-z.c),0);

z.a3=z.a2+(0,.5*u);
z.d3=z.a3+(abs(z.a-z.d),0);

labelarcs(z.b1, z.a1, z.c1, ar2, btex $\alpha$ etex);

draw z.a2--z.c2 penbold;
draw z.a3--z.d3 penbold;

kisDot(z.a3,z.d3);
kisDot(z.d3,z.a3);
kisDot(z.a2,z.c2);
kisDot(z.c2,z.a2);

draw .5[z.a1,z.c1]--z.a1--.5[z.a1,z.b1] penbold;


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

labelarcsprof(z.a, z.x, z.m, 15, 2, btex \small{$1$} etex);
labelarcsprof(z.b, z.x, z.m, 15, 2, btex \small{$2$} etex);
labelarcsprof(z.b, z.x, z.n, 15, 2, btex \small{$3$} etex);
labelarcsprof(z.a, z.x, z.n, 15, 2, btex \small{$4$} etex);
labelarcsprof(z.c, z.y, z.m, 15, 2, btex \small{$5$} etex);
labelarcsprof(z.d, z.y, z.m, 15, 2, btex \small{$6$} etex);
labelarcsprof(z.d, z.y, z.n, 15, 2, btex \small{$7$} etex);
labelarcsprof(z.c, z.y, z.n, 15, 2, btex \small{$8$} etex);

draw z.m--z.n;
draw z.a--z.b;
draw z.c--z.d;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
endfig;

beginfig(74)
save u;
u:=1.2cm;

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

labelarcsprof(z.a, z.x, z.m, 15, 2, btex \small{$1$} etex);
labelarcsprof(z.b, z.x, z.m, 15, 2, btex \small{$2$} etex);
labelarcsprof(z.b, z.x, z.n, 15, 2, btex \small{$3$} etex);
labelarcsprof(z.a, z.x, z.n, 15, 2, btex \small{$4$} etex);
labelarcsprof(z.c, z.y, z.m, 15, 2, btex \small{$5$} etex);
labelarcsprof(z.d, z.y, z.m, 15, 2, btex \small{$6$} etex);
labelarcsprof(z.d, z.y, z.n, 15, 2, btex \small{$7$} etex);
labelarcsprof(z.c, z.y, z.n, 15, 2, btex \small{$8$} etex);

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

labelarcsprof(z.m, z.c, z.e, 22, 12, btex \small{$1$} etex);
labelarcsprof(z.c, z.m, z.f, 22, 12, btex \small{$2$} etex);

draw z.a--z.b;
draw z.m--z.c;
draw z.m--z.e;
draw z.f--z.c;
draw ddline(z.m,z.f)(.3,.3);

draw ddarc(z.e, z.em, z.m)(0, 0);
draw ddarc(z.c,z.f,z.d)(0, 0);
smallarc(z.c,z.f);

dOt z.m;

label.bot(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.urt(btex $F$ etex, z.f);
label.top(btex $M$ etex, z.m);
endfig;

%??? 76 --- угольник

beginfig(76)
save u,k;
u:=1.4cm;
k=.4;

z.x=origin;
z.y=(2,0)*u;
z.z=(.5*z.y) rotated -60;
z.xy=bisector(z.x,z.z,z.y);
z.i=bisector(z.xy,z.x,z.z);

z.x1=k[z.i,z.x];
z.y1=k[z.i,z.y];
z.z1=k[z.i,z.z];

z.s=.6*(z.y-z.z);
z.xs=z.x+z.s;
z.ys=z.y+z.s;
z.zs=z.z+z.s;
z.x1s=z.x1+z.s;
z.y1s=z.y1+z.s;
z.z1s=z.z1+z.s;

z.m=.6[z.ys,z.xs];

z.u=2[z.z,z.y];
z.v=(-.3)[z.z,z.y];
z.u1=z.u-y.x1*(unitvector(z.u-z.v) rotated -90);
z.v1=z.u1+z.v-z.u;

path p;
p:=2[z.v,z.u]--2[z.u,z.v];
woody;
clip wood to z.u--z.v--z.v1--z.u1--cycle; 
draw wood;

p:=2[z.u,z.v]--2[z.v,z.u];
woody;
clip wood to z.y--z.y1--z.z1--z.z--cycle; 
draw wood;

p:=2[z.z,z.x]--2[z.x,z.z];
woody;
clip wood to z.z--z.z1--z.x1--z.x--cycle; 
draw wood;

p:=2[z.x,z.y]--2[z.y,z.x];
woody;
clip wood to z.y--z.y1--z.x1--z.x--cycle; 
draw wood;

labelarcsprof(z.x, z.y, z.z, 20, 8, btex \small{$1$} etex);
labelarcsprof(z.xs, z.ys, z.zs, 20, 8, btex \small{$2$} etex);

draw z.x1--z.y1--z.z1--cycle penhair;
draw z.z--z.x--z.y penhair;
draw z.x1s--z.y1s--z.z1s--cycle dashed evenly;
draw z.zs--z.xs--z.ys penhair dashed evenly;
draw z.u--z.u1--z.v1--z.v--cycle penhair;

z.a=1.2[z.y,z.x];
draw z.y--z.a;
z.b=1.6[z.x,z.y];
draw cross(z.x--z.y,z.u1--z.v1)--z.b;

dOt z.m;
label.top(btex $M$ etex, z.m);
label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
endfig;

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
u:=.8cm;

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

labelarcsprof(z.b, z.e, z.m, 20, 7, btex $\alpha$ etex);
labelarcsprof(z.d, z.f, z.e, 20, 5, btex $\beta$ etex);

draw z.a--z.b;
draw z.c--z.d;
draw z.a1--z.b1;
draw z.n--z.m;


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

labelarcsprof(z.b, z.e, z.m, 15, 1, btex $\alpha$ etex);
labelarcsprof(z.d, z.f, z.e, 15, 1, btex $\beta$ etex);

draw z.a--z.b;
draw z.c--z.d;
draw z.n--z.m;


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
u:=.8cm;
w:=3.2*u;

z.a=origin;
z.c=z.a+(1.5,0)*u;
z.b=z.a+(.7,1.5)*u;
z.d=z.c+(.3,1.5)*u;

z.a1=z.a+(w,0);
z.c1=z.c+(w,0);
z.b1=z.a1+(.3,1.5)*u;
z.d1=z.c1+(.7,1.5)*u;

labelarcsprof(z.b, z.a, z.c, 15, 1, btex $a$ etex);
labelarcsprof(z.a, z.c, z.d, 15, 1, btex $b$ etex);
labelarcsprof(z.b1, z.a1, z.c1, 15, 1, btex $a$ etex);
labelarcsprof(z.a1, z.c1, z.d1, 15, 1, btex $b$ etex);

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

labelarcsprof(z.f, z.b, z.a, 15, 1, btex \small{$1$} etex);
labelarcsprof(z.e, z.d, z.c, 15, 1, btex \small{$2$} etex);

draw z.e--z.f;
draw z.b--z.a;
draw z.d--z.c;


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
u:=.75cm;

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

labelarcsprof(z.c, z.b, z.a, 16, 3, btex \small{$1$} etex);
labelarcsprof(z.y1, z.x, z.y2, 16, 3, btex \small{$2$} etex);
labelarcsprof(z.y1, z.x, z.y4, 14, 1, btex \small{$3$} etex);
labelarcsprof(z.y4, z.x, z.y3, 16, 3, btex \small{$4$} etex);
labelarcsprof(z.y3, z.x, z.y2, 14, 1, btex \small{$5$} etex);
labelarcsprof(z.e, z.b, z.d, 16, 3, btex \small{$6$} etex);

draw z.a--z.b--z.c;
draw z.d--z.b--z.e;
draw z.y1--z.y3;
draw z.y2--z.y4;

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
u:=.8cm;

z.a=origin;
z.b=(1.5,2)*u;
z.c=(2,0)*u;
z.e=z.b+z.c;
z.d=2*z.c;

arcs(z.b, z.a, z.c, 10);
arcs2(z.c, z.b, z.a, 10);
arcs3(z.a, z.c, z.b, 10);
arcs(z.e, z.c, z.d, 10);
arcs2(z.e, z.c, z.b, 10);

draw z.a--z.b--z.c--cycle penbold;
draw z.e--z.c--z.d;

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

labelarcsprof(z.b, z.d, z.c, 9, 9, btex \small{$60\degree$} etex);
labelarcsprof(z.d, z.c, z.b, 9, 9, btex \small{$60\degree$} etex);
labelarcsprof(z.a, z.b, z.c, 9, 18, btex \small{$30\degree$} etex);
labelarcsprof(z.a, z.b, z.d, 9, 18, btex \small{$30\degree$} etex);

draw z.d--z.b--z.c--cycle;
draw z.a--z.b;

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

arcs(z51, z1, z2, 10);
arcs(z12, z2, z3, 10);
arcs(z23, z3, z4, 10);
arcs(z34, z4, z5, 10);
arcs(z45, z5, z1, 10);

draw z1--z2--z3--z4--z5--cycle penbold;
draw z1--z51 dashed evenly;
draw z2--z12 dashed evenly;
draw z3--z23 dashed evenly;
draw z4--z34 dashed evenly;
draw z5--z45 dashed evenly;

endfig;

beginfig(91);
save u;
u:=.6cm;

z.o=origin;
z.a=(1.5,1.5)*u;
z.a1=-z.a;

draw z.a--z.a1 dashed linedot;
dOt z.a,z.a1,z.o;

label.top(btex $A$ etex, z.a);
label.bot(btex $A'$ etex, z.a1);
label.rt(btex $O$ etex, z.o);
endfig;

beginfig(92);
save u;
u:=1.2cm;

z.o=origin;
z.a=(-.8,1)*u;
z.b=(1.2,1)*u;
z.d=.4[z.b,z.a];
z.a1=-z.a;
z.b1=-z.b;
z.d1=-z.d;

labelarcsprof(z.o, z.a, z.b, 16, 3, btex \small{$1$} etex);
labelarcsprof(z.o, z.a1, z.b1, 16, 3, btex \small{$2$} etex);
labelarcsprof(z.a, z.o, z.d, 16, 3, btex \small{$3$} etex);
labelarcsprof(z.a1, z.o, z.d1, 16, 3, btex \small{$4$} etex);

draw z.a--z.b;
draw z.a1--z.b1;
draw z.a--z.a1 dashed linedot;
draw z.b--z.b1 dashed linedot;
draw z.d--z.d1 dashed linedot;

dOt z.a,z.a1,z.b,z.b1,z.d,z.d1,z.o;


label.top(btex $A$ etex, z.a);
label.bot(btex $A'$ etex, z.a1);
label.top(btex $B$ etex, z.b);
label.bot(btex $B'$ etex, z.b1);
label.top(btex $D$ etex, z.d);
label.bot(btex $D'$ etex, z.d1);
label.rt(btex $O$ etex, z.o);
endfig;

beginfig(93);
save u;
u:=1cm;

z.o=origin;
z.a=(1,.3)*u;
z.b=(2,-1.5)*u;
z.c=(1.5,1.5)*u;
z.a1=-z.a;
z.b1=-z.b;
z.c1=-z.c;

labelarcsprof(z.a, z.o, z.b, 16, 3, btex \small{$1$} etex);
labelarcsprof(z.a1, z.o, z.b1, 16, 3, btex \small{$2$} etex);
labelarcsprof2(z.c, z.o, z.a, 20, 9, btex \small{$4$} etex);
labelarcsprof2(z.c1, z.o, z.a1, 20, 9, btex \small{$3$} etex);

draw z.a--z.b--z.c--cycle penbold;
draw z.a1--z.b1--z.c1--cycle penbold;
draw z.a--z.a1 dashed linedot;
draw z.b--z.b1 dashed linedot;
draw z.c--z.c1 dashed linedot;

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

labelarcsprof(z.a, z.d, z.b, 18, 4, btex \small{$3$} etex);
labelarcsprof(z.c, z.b, z.d, 18, 4, btex \small{$2$} etex);
labelarcsprof2(z.a, z.b, z.d, 18, 3, btex \small{$1$} etex);
labelarcsprof2(z.c, z.d, z.b, 18, 3, btex \small{$4$} etex);

draw z.a--z.b--z.c--z.d--cycle;
draw z.b--z.d;

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

labelarcsprof(z.a, z.d, z.b, 18, 4, btex \small{$3$} etex);
labelarcsprof(z.c, z.b, z.d, 18, 4, btex \small{$2$} etex);
labelarcsprof2(z.a, z.b, z.d, 18, 3, btex \small{$1$} etex);
labelarcsprof2(z.c, z.d, z.b, 18, 3, btex \small{$4$} etex);

draw z.a--z.b--z.c--z.d--cycle;
draw z.b--z.d;


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
draw z.m--z.n dashed linedot;
draw z.p--z.q dashed linedot;

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
label.lft(btex $P$ etex, z.p);
label.rt(btex $Q$ etex, z.q);

endfig;

beginfig(103);
save u;
u:=.9cm;
a:=70;

z.a=origin;
z.d=(2,0)*u;
z.b=z.d rotatedabout(z.a,a);
z.o=.5[z.d,z.b];
z.c=2[z.a,z.o];

hatchfill z.a--z.o--z.b--cycle  withcolor (a, 1.3mm, -.5bp);
hatchfill z.c--z.o--z.b--cycle  withcolor (0, 1.3mm, -.5bp);

labelarcsprof(z.b, z.o, z.c, 12, .2, btex \small{$2$} etex);
labelarcsprof(z.a, z.o, z.b, 12, .2, btex \small{$1$} etex);
labelarcsprof(z.a, z.b, z.o, 15, 2, btex \small{$3$} etex);
labelarcsprof(z.c, z.b, z.o, 15, 2, btex \small{$4$} etex);

draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.a--z.c;
draw z.b--z.d;

rimmark(z.a--z.o);
rimmark(z.c--z.o);
rimmark2(z.a--z.b);
rimmark2(z.c--z.b);

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.bot(btex $O$ etex, z.o+(-2,0));
endfig;

beginfig(104);
save u;
u:=1cm;

z.o=origin;
z.a=(-1,0)*u;
z.b=(0,1.5)*u;
z.c=-z.a;
z.d=-z.b;

draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.a--z.c dashed linedot;
draw z.b--z.d dashed linedot;

dOt z.o;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.llft(btex $O$ etex, z.o+(-2,0));
endfig;

beginfig(105);
save u;
u:=1cm;

z.o=origin;
z.a=(-1,1)*u;
z.b=(1,1)*u;
z.c=-z.a;
z.d=-z.b;

draw z.a--z.b--z.c--z.d--cycle penbold;
draw ddline(z.a,z.c)(.2,.2) dashed linedot;
draw ddline(z.b,z.d)(.2,.2) dashed linedot;
draw ddline(.5[z.a,z.b],.5[z.c,z.d])(.2,.2) dashed linedot;
draw ddline(.5[z.a,z.d],.5[z.c,z.b])(.2,.2) dashed linedot;

dOt z.o;

endfig;

beginfig(106);
save u;
u:=.9cm;
k:=1;

z.b=origin;
z.m=(2,0)*u;
z.d=(1.4,-1.1)*u;
z.n=(1+k)*z.m;
z.p=(1+2k)*z.m;
z.a=(1.6+2k)*z.m;
z.e=(1+k)*z.d;
z.f=(1+2k)*z.d;
z.c=(1.6+2k)*z.d;
z.k=z.d+k*z.m;
z.l=z.e+k*z.m;

hatchfill z.d--z.k--z.e--cycle withcolor (87, 1mm, -.5bp);
hatchfill z.e--z.l--z.f--cycle withcolor (87, 1mm, -.5bp);

arcs(z.k,z.d,z.e,10);
arcs(z.l,z.e,z.f,10);
arcs2(z.k,z.e,z.d,10);
arcs2(z.l,z.f,z.e,10);

draw z.a--z.b--z.c;
draw z.m--z.d;
draw z.n--z.e;
draw z.p--z.f;
draw z.d--z.k;
draw z.e--z.l;

label.rt(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.top(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);
label.top(btex $P$ etex, z.p);
label.llft(btex $D$ etex, z.d);
label.llft(btex $E$ etex, z.e);
label.llft(btex $F$ etex, z.f);
label.rt(btex $K$ etex, z.k);
label.rt(btex $L$ etex, z.l);
endfig;

beginfig(107);
save u;
u:=.8cm;

z.a=origin;
z.b=(2,2)*u;
z.c=(2.5,0)*u;

z.d=.5[z.a,z.b];
z.e=.5[z.b,z.c];
z.f=.5[z.a,z.c];

draw z.a--z.b--z.c--cycle penbold;
draw z.d--z.e--z.f;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);
label.bot(btex $F$ etex, z.f);
endfig;

beginfig(108);
save u;
u:=1cm;

z.a=origin;
z.b=(.5,2)*u;
z.d=(3,0)*u;
z.c=z.b+.7z.d;

draw z.a--z.b--z.c--z.d--cycle penbold;


label.lft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.top(btex основание etex,  .5[z.a,z.d]);
label.top(btex основание etex, .5[z.b,z.c]);
label.top(btex бок etex rotated angle (z.b-z.a),  .5[z.a,z.b]+(-5,-8));
label.top(btex бок etex rotated (180+angle (z.c-z.d)), .5[z.c,z.d]+(5,-8));
endfig;

beginfig(109);
save u;
u:=1cm;

z.a=origin;
z.b=(1,2)*u;
z.d=(2.5,0)*u;
z.c=z.b+.6z.d;

z.e=.5[z.a,z.b];
z.f=.5[z.c,z.d];
z.g=2*z.f-z.b;

hatchfill z.b--z.c--z.d--z.g--cycle withcolor (87, 1mm, -.5bp);

arcs(z.b,z.f,z.c,10);
arcs(z.d,z.f,z.g,10);
arcs2(z.b,z.c,z.f,10);
arcs2(z.f,z.d,z.g,10);

draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.e--z.f;
draw z.b--z.g--z.d;

label.lft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.urt(btex $F$ etex, z.f);
label.rt(btex $G$ etex, z.g);
endfig;

beginfig(110);
save u;
u:=1cm;

z.a=origin;
z.m=(1,0)*u;
z.d=(.8,-.4)*u;

z.n=2*z.m;
z.b=3*z.m;
z.e=2*z.d;
z.f=3*z.d;
z.c=3.6*z.d;

draw z.c--z.a--z.b--z.f;
draw z.e--z.n;
draw z.d--z.m;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.llft(btex $D$ etex, z.d);
label.llft(btex $E$ etex, z.e);
label.llft(btex $F$ etex, z.f);
label.top(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);
endfig;

beginfig(111);
save u;
u:=1cm;

z.a=origin;
z.b=(2.2,.5)*u;
z.c=(2.5,-2)*u;
z.d=(-1,-2)*u;
z.e=.5[z.a,z.b];
z.f=.5[z.c,z.d];
z.d1=z.d+z.e-z.a;
z.c1=z.c+z.e-z.b;

draw z.a--z.b--z.c--z.d--cycle;
draw z.d--z.d1--z.c1--z.c;
draw z.d1--z.e--z.c1;
draw z.e--z.f;

rimmark(z.d--z.f);
rimmark(z.c--z.f);
rimmark2(z.a--z.e);
rimmark2(z.e--z.b);
rimmark2(z.d--z.d1);
rimmark2(z.c--z.c1);

label.ulft(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.llft(btex $D$ etex, z.d);
label.bot(btex $C'$ etex, z.c1);
label.ulft(btex $D'$ etex, z.d1+(3,0));
label.top(btex $E$ etex, z.e);
label.bot(btex $F$ etex, z.f);
endfig;

beginfig(112);
save u;
u:=1cm;

z.a=origin;
z.b=(3,0)*u;
z.m=(.8,1.5)*u;
z.n=(2.2,2)*u;

z.m1=z.m reflectedabout(z.a,z.b);
z.x=cross(z.m1--z.n,z.a--z.b);
z.x1=.25[z.x,z.b];

draw z.a--z.b;
draw z.n--z.m1;
draw z.m--z.x;
draw z.m--z.x1--z.n;
draw z.x1--z.m1--z.m;

dOt z.m,z.n,z.m1;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);
label.bot(btex $M'$ etex, z.m1);
label.llft(btex $x$ etex, z.x+(-2,0));
label.lrt(btex $x_1$ etex, z.x1);

endfig;

beginfig(113);
save u;
u:=.7cm;

z.a=origin;
z.o1=(.3,1)*u;
z.o2=(.4,-1)*u;
z.o3=(-1.4,0)*u;
z.o4=(-1.6,-1)*u;

draw circle(z.o1,z.o1) penbold;
draw circle(z.o2,z.o2) penbold;
draw circle(z.o3,z.o3) penbold;
draw circle(z.o4,z.o4) penbold;

dOt z.a;

label.urt(btex $A$ etex, z.a+(0,1));
endfig;

beginfig(114);
save u;
u:=.7cm;

z.m=origin;
z.n=z.m+(0,4.7)*u;
z.a=(-1,2)*u;
z.o1=z.m+(0,1.5)*u;
z.o2=z.m+(0,2.5)*u;
z.o3=z.m+(0,3)*u;

z.b=z.a reflectedabout(z.m,z.n);

draw circle(z.o1,z.o1-z.a) penbold;
draw circle(z.o2,z.o2-z.a) penbold;
draw circle(z.o3,z.o3-z.a) penbold;

draw z.m--z.n dashed linedot;

dOt z.a, z.b;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);

endfig;

beginfig(115);
save u;
u:=1.4cm;
k:=1.2;
l:=-.4;

z.a=origin;
z.b=(1,-1)*u;
z.c=(2.5,0)*u;
z.o= circumcenter(z.a, z.b, z.c);

z.m=z.o+k*abs(z.a-z.o)*unitvector(.5[z.a,z.b]-z.o);
z.n=z.o+l*abs(z.a-z.o)*unitvector(.5[z.a,z.b]-z.o);
z.p=z.o+k*abs(z.a-z.o)*unitvector(.5[z.b,z.c]-z.o);
z.q=z.o+l*abs(z.a-z.o)*unitvector(.5[z.b,z.c]-z.o);
z.r=z.o+.4*k*abs(z.a-z.o)*unitvector(.5[z.a,z.c]-z.o);
z.s=z.o+l*abs(z.a-z.o)*unitvector(.5[z.a,z.c]-z.o);

draw ddarc(z.a, z.b, z.c)(30, 30) penbold;
draw z.a--z.b--z.c--cycle;
draw z.a--z.o;
draw z.b--z.o;
draw z.c--z.o;
draw z.m--z.n;
draw z.p--z.q;
draw z.r--z.s;

dOt z.a,z.b,z.c,z.o;

label.lft(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.lft(btex $O$ etex, z.o+(-1,3));

label.llft(btex $M$ etex, z.m);
label.urt(btex $N$ etex, z.n);
label.lrt(btex $P$ etex, z.p);
label.ulft(btex $Q$ etex, z.q);
label.bot(btex $R$ etex, z.r);
label.top(btex $S$ etex, z.s);
endfig;

beginfig(116);
save u;
u:=1cm;

z.o=origin;
z.d=(1,-.8)*u;
z.a=(0,abs(z.o-z.d));
z.b=-z.a;
z.c=z.d reflectedabout(z.a,z.o);
z.k=altitude(z.a,z.d,z.o);

draw circle(z.o,z.d-z.o) penbold;
draw z.c--z.d;
draw z.a--z.b;

dOt z.o;

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.llft(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.urt(btex $K$ etex, z.k);
label.lft(btex $O$ etex, z.o);

endfig;

beginfig(117);
save u;
u:=1cm;

z.o=origin;
z.b=(1,-.8)*u;
z.d=z.b rotatedabout(z.o,80);
z.f=(0,abs(z.o-z.b));
z.e=-z.f;
z.a=z.b reflectedabout(z.f,z.o);
z.c=z.d reflectedabout(z.f,z.o);




draw circle(z.o,z.b-z.o) penbold;
draw z.c--z.d;
draw z.a--z.b;
draw z.f--z.e;

dOt z.o;

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.rt(btex $O$ etex, z.o);
label.bot(btex $E$ etex, z.e);
label.top(btex $F$ etex, z.f);

endfig;

beginfig(118);
save u;
u:=1cm;

z.o=origin;
z.b=(1,-.8)*u;
z.d=z.b rotatedabout(z.o,80);
z.f=(0,abs(z.o-z.b));
z.e=-z.f;
z.a=z.b reflectedabout(z.f,z.o);
z.c=z.d reflectedabout(z.f,z.o);

draw ddarc(z.a, z.e, z.b)(30, 30) penbold;
draw ddline(z.e,z.o)(.3,0);
draw z.a--z.b;

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);

endfig;

beginfig(119);
save u;
u:=1cm;
a:=45;

z.o=origin;
z.b=(1,-.8)*u;
z.c=z.b rotatedabout(z.o,2*a);
z.q=z.b rotatedabout(z.o,a);
z.p=(-.3)[z.o,z.q];
z.m=(0,-abs(z.o-z.b));
z.n=(-.3)[z.o,z.m];
z.a=z.b reflectedabout(z.m,z.o);

draw circle(z.o,z.b-z.o) penbold;
draw z.n--z.m;
draw z.p--z.q;
draw z.a--z.b--z.c;

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.bot(btex $M$ etex, z.m);
label.rt(btex $Q$ etex, z.q);
label.top(btex $N$ etex, z.n);
label.lft(btex $P$ etex, z.p);
label.lrt(btex $O$ etex, z.o);

endfig;

beginfig(120);
save u;
u:=1cm;
a:=50;
b:=135;

z.o=origin;
z.a=(-1.5,0)*u;
z.ab=z.a rotatedabout(z.o,a);
z.b=z.a rotatedabout(z.o,2*a);
z.d=z.a rotatedabout(z.o,-b);
z.cd=z.d rotatedabout(z.o,a);
z.c=z.d rotatedabout(z.o,2*a);

z.f=altitude(z.c,z.o,z.d);
z.e=altitude(z.a,z.o,z.b);

z.p=z.a zscaled(.9,-.1);
z.q=z.c zscaled(.9,.1);
z.pq=z.p rotatedabout(z.o,-1);


draw circle(z.o,z.a-z.o);
draw z.a--z.b--z.o--z.c--z.d--z.o--cycle;
draw z.e--z.o--z.f;
drawarrow z.p..z.pq..z.q;

rimmark2(z.a..z.ab..z.b);
rimmark2(z.c..z.cd..z.d);

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.lrt(btex $O$ etex, z.o);
label.llft(btex $E$ etex, z.e+(2,0));
label.top(btex $F$ etex, z.f);

endfig;

beginfig(121);
save u;
u:=1cm;
a:=50;
b:=135;

z.o=origin;
z.a=(-1.5,0)*u;
z.ab=z.a rotatedabout(z.o,a);
z.b=z.a rotatedabout(z.o,2*a);
z.k=z.a rotatedabout(z.o,-b);
z.cd=z.k rotatedabout(z.o,a);
z.c=z.k rotatedabout(z.o,2*a);
z.d=z.k rotatedabout(z.o,-30);

z.l=altitude(z.c,z.o,z.k);
z.e=altitude(z.a,z.o,z.b);
z.f=altitude(z.c,z.o,z.d);
z.m=cross(z.c--z.d,z.o--z.l);

hatchfill z.f--z.o--z.m--cycle withcolor (10, .7mm, -.5bp);

draw circle(z.o,z.a-z.o);
draw z.a--z.b;
draw z.o--z.c--z.k--z.o;
draw z.e--z.o--z.l;
draw z.c--z.d--z.o--z.f;

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.urt(btex $K$ etex, z.k);
label.lrt(btex $O$ etex, z.o);
label.top(btex $L$ etex, z.l);
label.llft(btex $M$ etex, z.m);
label.llft(btex $E$ etex, z.e+(2,0));
label.urt(btex $F$ etex, z.f);
endfig;

beginfig(122);
save u;
u:=1cm;

z.o=origin;
z.a=(-1.5,0)*u;
z.b=z.a rotatedabout(z.o,100);
z.c=z.a rotatedabout(z.o,-30);
z.d=-z.c;

draw circle(z.o,z.c-z.o);
draw z.c--z.d;
draw z.a--z.o--z.b--cycle;

label.lft(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.urt(btex $O$ etex, z.o);
endfig;

beginfig(302)
save u;
u:=.5cm;

z.a=(-.5,.5)*u;
z.b=(2.5,-.5)*u;

path p;
p=circle(origin,2*u);

z.x=cross.rt(p,z.a--z.b);
z.y=point .1 of p;
z.z=point 3.2 of p;

draw p penbold;
draw z.a--z.b penhair;
draw z.a..z.y..z.b penhair;
draw z.a..z.z..z.b penhair;

\dOt z.a,z.b,z.x,z.y,z.z;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.llft(btex $X$ etex, z.x);
label.urt(btex $Y$ etex, z.y);
label.top(btex $Z$ etex, z.z);

endfig;

beginfig(123);
save u,v,h;
u:=1cm;

v:=1.5*u;
h:=2.5*u;

z.o=origin;
z.a=(-.5*h,v);
z.b=(.5*h,v);
z.c=altitude(z.a,z.o,z.b);
z.c1=.5[z.c,z.b];
z.c2=.3[z.c,z.a];

draw circle(z.o,1*u);
draw z.a--z.b;
draw z.o--z.c;
draw z.c1--z.o--z.c2;

dOt z.o;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(124);
save u,v,h;
u:=1cm;

v:=.8*u;
h:=2.5*u;

z.o=origin;
z.a=(-.5*h,v);
z.b=(.5*h,v);
z.c=altitude(z.a,z.o,z.b);
z.c1=.5[z.c,z.b];
z.c2=.3[z.c,z.a];

z.d=.8[z.c,z.a];
z.e=.8[z.c,z.b];

draw circle(z.o,1*u);
draw z.a--z.b;
draw z.o--z.c;

dOt z.o, z.d,z.e;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.llft(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(125);
save u,v,h;
u:=1cm;

v:=1*u;
h:=2.5*u;

z.o=origin;
z.a=(-.5*h,v);
z.b=(.5*h,v);
z.c=altitude(z.a,z.o,z.b);
z.c1=.5[z.c,z.b];
z.c2=.3[z.c,z.a];

draw circle(z.o,1*u);
draw z.a--z.b;
draw z.o--z.c;

dOt z.o;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(301)
save u, k;
u:=1cm;
k:=2.6;

z.a=(-2,-.5)*u;
z.am=(-1,.5)*u;
z.m=origin;
z.b=(1,1)*u;

path p;
p=z.a..z.am..{dir 0}z.m..{dir 90}z.b;

draw p;
draw  ddline((x.a,0),(x.b,0))(.2,.2) penbold;
draw ddline(z.m, point k of p)(1.3,1) penhair;
draw ddline(z.m, point 2.1 of p)(16,8) penhair;
dOt z.m, point 2.6 of p;

label.ulft(btex $P$ etex, point k of p);
label.bot(btex $M$ etex, z.m);
label.bot(btex $T$ etex, 1.2[(x.a,0),(x.b,0)]);
endfig;


beginfig(126);
save u;
u:=1cm;

z.o=origin;
z.a=(0,1)*u;
z.a0=z.a rotatedabout(z.o,-90);
z.a1=z.a rotatedabout(z.o,90);
z.m=z.a-(z.a zscaled (0,-1.2));
z.n=2*z.a-z.m;
z.b=.3[z.a,z.n];
z.c=.6[z.a,z.n];

draw ddarc(z.a0,z.a,z.a1)(0,0);
draw z.m--z.n;
draw z.o--z.a;
draw z.b--z.o--z.c;

dOt z.o,z.a,z.b,z.c;

label.top(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.bot(btex $O$ etex, z.o);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
endfig;

beginfig(127);
save u;
u:=.9cm;

z.o=origin;
z.m=(0,-1)*u;
z.a= z.m zscaled (1,-1.2);
z.b=2*z.m-z.a;
z.c=z.m rotatedabout(z.o,-55);
z.d=z.c reflectedabout(z.o,z.m);
z.e=-z.m;

draw circle(z.o,z.m);
draw z.a--z.b;
draw z.e--z.m;
draw z.c--z.d;

dOt z.o;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.rt(btex $O$ etex, z.o);
label.bot(btex $M$ etex, z.m);

endfig;

beginfig(128);
save u;
u:=.9cm;

z.o=origin;
z.d=(1,0)*u;
z.c=1.7[z.o,z.d];
z.e=z.d zscaled(1,1.2);
z.f=2*z.d-z.e;
z.a=z.e+z.c-z.d;
z.b=2[z.a,z.c];

draw circle(z.o,z.d);
draw z.o--z.c;
draw z.e--z.f;
draw z.a--z.b;

dOt z.o;

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.bot(btex $F$ etex, z.f);
label.lft(btex $O$ etex, z.o);
endfig;

beginfig(129);
save u;
u:=1cm;

z.o=origin;
z.c=(.8,.6)*u;
z.b=z.c rotatedabout(z.o,95);
z.bc=z.c rotatedabout(z.o,1);
z.a=z.b zscaled(1,1.4);

draw z.a--z.b--z.o;
draw ddarc(z.b,z.bc,z.c)(0,0);

dOt z.b,z.o;

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.lrt(btex $O$ etex, z.o);

endfig;

beginfig(130);
save u;
u:=1cm;

z.o=origin;
z.a=(-1.6,1.2)*u;
z.ab=z.a rotatedabout(z.o,-1);
z.b=z.a rotatedabout(z.o,-70);
z.o1=.4*z.b;
z.bc=z.b rotatedabout(z.o1,-1);
z.c=z.b rotatedabout(z.o1,-80);
z.d=z.b zscaled(1,.8);
z.e=z.b zscaled(1,-.6);

draw ddarc(z.a,z.ab,z.b)(0,0);
draw ddarc(z.b,z.bc,z.c)(0,0);
draw z.d--z.e;
draw z.o--z.b;

dOt z.o,z.o1,z.b;

label.llft(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
label.bot(btex $O$ etex, z.o);
label.lrt(btex $O_1$ etex, z.o1);
endfig;

beginfig(131);
save u,w;
u:=.8cm;
w:=7*u;

z.a=(0,1)*u;
z.a1=-z.a;
z.l=z.a zscaled(0,3);
z.r=z.a zscaled(0,-2);

z.a10=z.a+(w,0);
z.a11=z.a1+(w,0);
z.l1=z.l+(w,0);
z.r1=z.a zscaled(0,-.6)+(w,0);

z.o = circumcenter(z.a,z.a1,z.l);
z.o1= circumcenter(z.a,z.a1,z.r);
z.o10 = circumcenter(z.a10,z.a11,z.l1);
z.o11= circumcenter(z.a10,z.a11,z.r1);

draw ddline(z.l,z.r)(.1,.1) dashed linedot;
draw circle(z.o,z.a-z.o) penbold;
draw circle(z.o1,z.a-z.o1) penbold;

draw ddline(z.l1,z.r1)(.1,.1) dashed linedot;
draw circle(z.o10,z.a10-z.o10) penbold;
draw circle(z.o11,z.a10-z.o11) penbold;
draw z.a--z.a1;
draw z.a10--z.a11;

dOt z.a,z.a1,z.o,z.o1,z.a10,z.a11,z.o10,z.o11;

label.top(btex $A$ etex, z.a+(0,2));
label.bot(btex $A_1$ etex, z.a1+(0,-2));
label.bot(btex $O$ etex, z.o);
label.bot(btex $O_1$ etex, z.o1+(2,0));
label.urt(btex $A$ etex, z.a10);
label.lrt(btex $A_1$ etex, z.a11);
label.bot(btex $O$ etex, z.o10);
label.bot(btex $O_1$ etex, z.o11+(2,0));
endfig;

beginfig(132);
save u;
u:=.8cm;

z.a=origin;
z.o=(-1.5,0)*u;
z.l=2*z.o;
z.o1=(1,0)*u;
z.r=2*z.o1;
z.m=z.o zscaled(0,-1.1);
z.n=-z.m;

draw ddline(z.l,z.r)(.1,.1) dashed linedot;
draw circle(z.o,z.o) penbold;
draw circle(z.o1,z.o1) penbold;
draw z.m--z.n;

dOt z.a,z.o,z.o1;

label.ulft(btex $A$ etex, z.a);
label.bot(btex $O$ etex, z.o);
label.bot(btex $O_1$ etex, z.o1+(2,0));
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
endfig;

beginfig(133);
save u;
u:=.8cm;

z.a=origin;
z.o=(1.5,0)*u;
z.l=2*z.o;
z.o1=(1,0)*u;
z.r=2*z.o1;
z.m=z.o zscaled(0,1.1);
z.n=-z.m;

draw ddline(z.a,z.l)(.1,.1) dashed linedot;
draw circle(z.o,z.o) penbold;
draw circle(z.o1,z.o1) penbold;
draw z.m--z.n;

dOt z.a,z.o,z.o1;

label.ulft(btex $A$ etex, z.a);
label.bot(btex $O$ etex, z.o);
label.bot(btex $O_1$ etex, z.o1+(2,0));
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
endfig;

beginfig(134);
save u;
u:=.9cm;

z.o=origin;
z.l=(1.3,0)*u;
z.r=(2.2,0)*u;
z.o1=(3,0)*u;
z.d=.5[z.l,z.r]+(0,.3)*u;

draw circle(z.o,z.l) penbold;
draw circle(z.o1,z.r-z.o1) penbold;
draw z.o--z.o1;
draw z.o..z.d..z.o1 dashed evenly;

dOt z.o,z.o1;

label.lft(btex $O$ etex, z.o);
label.rt(btex $O_1$ etex, z.o1+(2,0));
label.bot(btex $R$ etex, .5[z.o,z.l]);
label.bot(btex $R_1$ etex, .5[z.o1,z.r]);
label.top(btex $d$ etex, z.d);
endfig;

beginfig(135);
save u;
u:=.9cm;

z.o=origin;
z.l=(1.3,0)*u;
z.r=z.l;
z.o1=(2.1,0)*u;
z.d=.7[z.o,z.l]+(0,.3)*u;

draw circle(z.o,z.l) penbold;
draw circle(z.o1,z.r-z.o1) penbold;
draw z.o--z.o1;
draw z.o..z.d..z.o1 dashed evenly;

dOt z.o,z.o1;

label.lft(btex $O$ etex, z.o);
label.rt(btex $O_1$ etex, z.o1+(2,0));
label.top(btex $d$ etex, z.d);
endfig;

beginfig(136);
save u,w;
u:=.7cm;
w:=3.4*u;

z.o=origin;
z.x=(1.5,0)*u;
z.o1=.3[z.o,z.x];

draw circle(z.o,z.x) penbold;
draw circle(z.o1,.9*u) penbold;
draw (-z.x)--z.x dashed linedot;

z.o2=z.o+(w,0);

draw circle(z.o2,z.x) penbold;
draw circle(z.o2,.8*u) penbold;

dOt z.o,z.o1, z.o2;

label.top(btex $O$ etex, z.o);
label.bot(btex $O_1$ etex, z.o1+(2,0));

endfig;

beginfig(137);
save u;
u:=1cm;

z.o=origin;
z.b=(0,1)*u;
z.c=-z.b;
z.a=z.b rotatedabout(z.o,110);

arcs(z.o,z.a,z.b,10);
arcs(z.o,z.b,z.a,10);
arcs2(z.a,z.o,z.c,10);

draw circle(z.o,z.a-z.o) penbold;
draw z.a--z.b--z.c penbold;
draw z.a--z.o;


dOt z.o;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.rt(btex $O$ etex, z.o);
endfig;

beginfig(138);
save u;
u:=1cm;

z.o=origin;
z.b=(0,1)*u;
z.d=-z.b;
z.a=z.b rotatedabout(z.o,110);
z.c=z.b rotatedabout(z.o,-140);


draw circle(z.o,z.a-z.o) penbold;
draw z.a--z.b--z.c penbold;
draw z.b--z.d;


dOt z.o;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.lft(btex $O$ etex, z.o);
endfig;

beginfig(139);
save u;
u:=1cm;

z.o=origin;
z.b=(0,1)*u;
z.d=-z.b;
z.a=z.b rotatedabout(z.o,70);
z.c=z.b rotatedabout(z.o,140);


draw circle(z.o,z.a-z.o) penbold;
draw z.a--z.b--z.c penbold;
draw z.b--z.d;


dOt z.o;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.llft(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.rt(btex $O$ etex, z.o);
endfig;

beginfig(140);
save u;
u:=1.3cm;

z.o=origin;
z.m=(0,1)*u;
z.a=z.m rotatedabout(z.o,110);
z.b=z.m rotatedabout(z.o,-110);
z.m1=z.m rotatedabout(z.o,-50);
z.m2=z.m rotatedabout(z.o,-10);
z.m3=z.m rotatedabout(z.o,20);
z.m4=z.m rotatedabout(z.o,60);

hatchfill z.a--z.b..z.m..cycle  withcolor (35, 1.5mm, -.5bp);

labelarcsprof(z.a, z.m2, z.b, 12, 1, btex $a$ etex);


draw circle(z.o,z.a-z.o) penbold;
draw z.b--z.a penbold;
draw z.a--z.m1--z.b--z.m2--z.a--z.m3--z.b--z.m4--z.a penbold;

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.top(btex $m$ etex, z.m);
endfig;

beginfig(141);
save u;
u:=1.3cm;

z.o=origin;
z.m=(0,1)*u;
z.a=z.m rotatedabout(z.o,90);
z.b=z.m rotatedabout(z.o,-90);
z.c=z.m rotatedabout(z.o,40);
z.m2=z.m rotatedabout(z.o,-10);
z.m3=z.m rotatedabout(z.o,-50);


draw circle(z.o,z.a-z.o) penbold;
draw z.b--z.a penbold;
draw z.a--z.c--z.b--z.m2--z.a--z.m3--z.b penbold;

dOt z.o;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(142);
save u;
u:=1.1cm;

z.w=(-.3,1.5)*u;

z.a=(-1,0)*u;
z.b=-z.a;
z.c=z.b rotatedabout(origin,60);
z.m=(-.2)[z.a,z.b];
z.n=(1.2)[z.a,z.b];

z.b1=z.a+z.w;
z.b2=z.b1+(abs(z.a-z.c),0);
z.a1=z.b1+(0,.5)*u;
z.a2=z.a1+(abs(z.a-z.b),0);

draw z.m--z.n;
draw z.a--z.b--z.c--cycle;
draw z.a..z.c..z.b;
draw z.a1--z.a2 penbold;
draw z.b1--z.b2 penbold;
%smallarc(z.a,z.c);

kisDot(z.a1,z.a2);
kisDot(z.a2,z.a1);
kisDot(z.b1,z.b2);
kisDot(z.b2,z.b1);

label.bot(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
label.top(btex $a$ etex, .5[z.a1,z.a2]);
label.top(btex $b$ etex, .5[z.b1,z.b2]);
label.bot(btex $a$ etex, .5[z.a,z.b]);
label.ulft(btex $b$ etex, .5[z.a,z.c]);
endfig;

beginfig(143);
save u;
u:=1.2cm;

z.a=origin;
z.c=(1.6,0)*u;
z.d=(0,1.2)*u;
z.b=1.5*z.c;
z.e=1.4*z.d;
z.o=.5[z.c,z.d];

draw circle(z.o,z.c-z.o);
draw z.b--z.a--z.e penbold;
draw z.c--z.d;

dOt z.o;

label.llft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.urt(btex $O$ etex, z.o);
endfig;

beginfig(144);
save u;
u:=1.3cm;

z.o=origin;
z.c=(0,1)*u;
z.a=z.c zscaled(1,1.1);
z.b=2*z.c-z.a;

draw circle(z.o,z.c);
draw z.a--z.b;
draw z.o--z.c;

dOt z.o;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(145);
save u;
u:=1.2cm;

z.o=origin;
z.x=(-.5,1)*u;
z.a=(2,0)*u;
z.o1=.5[z.o,z.a];
z.b=altitude(z.a,z.o,z.x);
z.b1=z.b reflectedabout(z.o,z.a);
z.x1=z.x reflectedabout(z.o,z.a);

draw circle(z.o,z.b-z.o);
draw circle(z.o1,z.b-z.o1) dashed evenly;
draw z.x--z.a--z.x1;
draw z.b--z.o--z.b1;
draw ddline(z.a,z.o)(0,.5)  dashed evenly;

dOt z.o1;

label.rt(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $B_1$ etex, z.b1);
label.ulft(btex $O$ etex, z.o);
label.top(btex $O_1$ etex, z.o1);
endfig;

beginfig(146);
save u;
u:=1.1cm;

z.a=origin;
z.b=(2.5,0)*u;
z.c=z.b zscaled (0,-.2);
z.o=z.b zscaled (0,-.4);
z.o1=z.b+z.c-z.a;
z.a1= z.a reflectedabout(z.o,z.o1);
z.b1= z.b reflectedabout(z.o,z.o1);

draw ddline(z.a,z.b)(.2,.2);
draw ddline(z.a1,z.b1)(.2,.15);
draw z.a--z.o--z.o1--z.b dashed evenly;
draw ddline(z.c,z.o1)(.3,0) dashed evenly;
draw circle(z.o,z.o-z.a);
draw circle(z.o,z.o-z.c) dashed evenly;
draw circle (z.o1,z.b-z.o1);

dOt z.o,z.o1;

label.top(btex $A$ etex, z.a);
label.lrt(btex $A_1$ etex, z.a1);
label.top(btex $B$ etex, z.b);
label.lrt(btex $B_1$ etex, z.b1);
label.ulft(btex $C$ etex, z.c);
label.llft(btex $O$ etex, z.o);
label.rt(btex $O_1$ etex, z.o1);

endfig;

beginfig(147);
save u;
u:=1cm;

z.o=origin;
z.o1=(2.5,0)*u;
z.o2=.5[z.o,z.o1];
z.c= z.o1 rotatedabout(z.o2,110);
z.a=.6[z.o,z.c];

z.b=z.o1+z.a-z.c;
z.b1=z.b reflectedabout(z.o,z.o1);
z.a1=z.a reflectedabout(z.o,z.o1);

draw ddline(z.a,z.b)(.2,.2);
draw ddline(z.a1,z.b1)(.2,.15);
draw z.c--z.o dashed evenly;
draw z.o1--z.b dashed evenly;
draw ddline(z.c,z.o1)(.3,0) dashed evenly;
draw circle(z.o,z.o-z.a);
draw circle(z.o,z.o-z.c) dashed evenly;
draw circle (z.o1,z.b-z.o1);

dOt z.o,z.o1;

label.top(btex $A$ etex, z.a+(-1,2));
label.bot(btex $A_1$ etex, z.a1);
label.llft(btex $B$ etex, z.b);
label.ulft(btex $B_1$ etex, z.b1);
label.urt(btex $C$ etex, z.c);
label.lft(btex $O$ etex, z.o);
label.rt(btex $O_1$ etex, z.o1);

endfig;

beginfig(148);
save u;
u:=1cm;

z.o=origin;
z.b=(0,.5)*u;
z.a=(-1,-1)*u;
z.c=z.a rotatedabout(z.o,100);

z.e=secondpoint(z.a, z.b, z.o);
z.d=secondpoint(z.c, z.b, z.o);

arcs(z.a,z.b,z.c,10);
arcs2(z.a,z.d,z.b,10);
arcs3(z.b,z.a,z.d,10);

draw circle(z.o,z.a-z.o);
draw z.c--z.d--z.a--z.e;

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b+(0,2));
label.lrt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);
endfig;

beginfig(491);
save u, f;
u:=2cm;
f:=.5*(sqrt(5)-1);

z.c=origin;
z.a=(-2,0)*u;
z.b=(z.a rotated -36) scaled f; 
z.d=z.a scaled f*f;
z.e=z.b scaled f*f;
z.f=z.d scaled f*f;

arcs(z.c,z.a,z.b,10);
arcs(z.a,z.c,z.b,10);
arcs(z.d,z.b,z.c,10);
arcs2(z.a,z.b,z.d,10);
arcs2(z.a,z.d,z.b,10);

draw z.a--z.b--z.c--cycle;
draw z.b--z.d--z.e--z.f;

rimmark(z.a--z.b,z.a--z.d);
rimmark2(z.b--z.d,z.b--z.e);
rimmark3(z.d--z.e,z.d--z.f);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b+(0,2));
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);
label.bot(btex $F$ etex, z.f);
endfig;

beginfig(149);
save u;
u:=1cm;

z.o=origin;
z.b=(0,1.8)*u;
z.a=(-.8,-.8)*u;
z.c=z.a rotatedabout(z.o,100);

z.e=secondpoint(z.a, z.b, z.o);
z.d=secondpoint(z.c, z.b, z.o);

arcs(z.a,z.d,z.c,10);
arcs2(z.a,z.b,z.c,10);
arcs3(z.b,z.a,z.d,10);

draw circle(z.o,z.a-z.o);
draw z.d--z.a--z.b--z.c;

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b+(0,1));
label.lrt(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
endfig;

beginfig(150);
save u;
u:=1cm;

z.o=origin;
z.c=(0,-1)*u;
z.d=2*z.o-z.c;
z.m=z.c rotatedabout(z.o,-100);
z.n=z.m reflectedabout(z.o,z.c);
z.a=((z.c-z.o) zscaled(1,-1.1))+z.o;
z.b=2*z.c-z.a;

draw circle(z.o,z.c-z.o);
draw z.a--z.b;
draw z.c--z.d;

dOt z.o;

label.llft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
label.rt(btex $O$ etex, z.o);
label.ulft(btex $m$ etex, z.m);
label.urt(btex $n$ etex, z.n);
endfig;

beginfig(151);
save u;
u:=1cm;

z.o=origin;
z.c=(0,-1)*u;
z.e=2*z.o-z.c;
z.d=z.c rotatedabout(z.o,-100);
z.n=z.d reflectedabout(z.o,z.c);
z.a=((z.c-z.o) zscaled(1,-1.1))+z.o;
z.b=2*z.c-z.a;

draw circle(z.o,z.c-z.o);
draw z.a--z.b;
draw z.d--z.c--z.e;

dOt z.o;

label.llft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.rt(btex $O$ etex, z.o);
label.urt(btex $n$ etex, z.n);
endfig;

beginfig(152);
save u, a;
u:=1.4cm;
a:=50;

z.o=origin;
z.n=(0,-1)*u;
z.a= z.n rotatedabout(z.o,-a);
z.b= z.n rotatedabout(z.o,a);
z.e = z.a zscaled(1,1);
z.d= altitude(z.a,z.o,z.b);
z.c=z.n rotatedabout(z.o,185);
z.m=z.n rotatedabout(z.o,120);

labelarcsprof(z.e, z.a, z.b, 13, 1, btex $a$ etex);
labelarcsprof(z.a, z.c, z.b, 13, 1, btex $a$ etex);

draw circle(z.o,z.n-z.o);
draw z.a--z.b--z.c--cycle;
draw z.d--z.o--z.a--z.e;

dOt z.o;

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
label.top(btex $O$ etex, z.o);
label.bot(btex $n$ etex, z.n);
label.urt(btex $m$ etex, z.m);

endfig;

beginfig(153);
save u, a;
u:=1.1cm;

z.b=origin;
z.c=(2,0)*u;
z.a=(-.2,1)*u;
z.l=exbisector(z.b,z.a,z.c);
z.m=z.c reflectedabout(z.a,z.l);
z.o=circumcenter(z.b,z.c,z.m);
z.m1=z.m reflectedabout(z.o,z.b);
z.m1m=z.m1 rotatedabout(z.b,2);
z.h=.5[z.c,z.m];
z.h1=.5[z.c,z.m1];
z.a1=cross(z.b--z.m1,z.h1--(z.h1+((z.m1-z.h1) zscaled (0,2))));

arcs(z.b,z.a,z.c,10);

draw z.h--z.a--z.c--z.m--z.b--z.m1--z.c--z.a1--z.h1;
draw z.b--z.c;
draw circle(z.o,z.b-z.o);
draw ddarc(z.m1,z.m1m,z.m)(10,10);

label.lft(btex $A$ etex, z.a);
label.ulft(btex $A_1$ etex, z.a1);
label.llft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.ulft(btex $M$ etex, z.m);
label.rt(btex $M_1$ etex, z.m1);
label.top(btex $a$ etex, .5[z.b,z.c]);
label.ulft(btex $s$ etex, .5[z.b,z.m]);

endfig;

beginfig(154);
save u;
u:=1cm;

z.a=origin;
z.c=(1,0)*u;
z.d=2*z.c;
z.b=3*z.c;
z.j=z.d rotatedabout(z.c,-60);
z.djj=z.d rotatedabout(z.c,-70);
z.cjj=z.c rotatedabout(z.d,70);
z.e=z.a rotatedabout(z.c,-60);
z.ae=z.a rotatedabout(z.c,-30);
z.f=z.b rotatedabout(z.d,60);
z.fb=z.b rotatedabout(z.d,30);
z.ef= z.f rotatedabout(z.j,30);

draw z.a--z.b;
draw z.e--z.j--z.f;
draw z.a..z.ae..z.e;
draw z.e..z.ef..z.f;
draw z.f..z.fb..z.b;
draw z.c..z.j..z.cjj;
draw z.d..z.j..z.djj;

dOt z.j,z.d,z.c;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.urt(btex $F$ etex, z.f);
label.bot(btex $J$ etex, z.j);
endfig;

beginfig(155);
save u;
u:=.7cm;

z.o=origin;
z.y=(0,-2)*u;
z.a=z.y rotatedabout(z.o,-70);
z.b=z.a rotatedabout(z.o,-70);
z.c=z.a rotatedabout(z.o,-140);
z.d=z.a rotatedabout(z.o,140);
z.e=z.a rotatedabout(z.o, 60);

z.mn=z.y rotatedabout(z.o,-95);
z.np=z.mn rotatedabout(z.o,-85);
z.pq=z.mn rotatedabout(z.o,-170);
z.qm=z.y;

z.n = inversion(z.o, abs(z.a-z.o))(.5[z.mn,z.np]);
z.p = inversion(z.o, abs(z.a-z.o))(.5[z.np,z.pq]);
z.q = inversion(z.o, abs(z.a-z.o))(.5[z.pq,z.qm]);
z.m = inversion(z.o, abs(z.a-z.o))(.5[z.qm,z.mn]);

draw circle(z.o,z.a-z.o);
draw z.a--z.b--z.c--z.d--z.e--cycle;
draw z.m--z.n--z.p--z.q--cycle;

label.urt(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.llft(btex $C$ etex, z.c+(1,0));
label.lft(btex $D$ etex, z.d+(0,1));
label.top(btex $E$ etex, z.e+(1,0));
label.llft(btex $M$ etex, z.m);
label.ulft(btex $N$ etex, z.n);
label.urt(btex $P$ etex, z.p);
label.lrt(btex $Q$ etex, z.q);
endfig;

beginfig(156);
save u;
u:=1.5cm;

z.a=origin;
z.b=(1.9,1.5)*u;
z.c=(2,0)*u;
z.o=incenter(z.a,z.c,z.b);

z.m=bisector(z.c,z.a,z.b);
z.n=bisector(z.a,z.b,z.c);
z.k=bisector(z.b,z.c,z.a);

z.p=altitude(z.b,z.o,z.a);
z.q=altitude(z.a,z.o,z.c);
z.r=altitude(z.c,z.o,z.b);

arcs(z.o,z.a,z.b,9);
arcs(z.o,z.a,z.c,11);
arcs2(z.o,z.b,z.a,9);
arcs2(z.o,z.b,z.c,11);

draw z.a--z.b--z.c--cycle;
draw z.o--z.p;
draw z.o--z.q;
draw z.o--z.r;

draw ddline(z.a,z.m)(0,.2) dashed linedot;
draw ddline(z.b,z.n)(0,.2) dashed linedot;
draw ddline(z.c,z.k)(0,.2) dashed linedot;
draw circle(z.o,z.q-z.o);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
whitelabel.urt(btex $M$ etex, z.m);
whitelabel.llft(btex $N$ etex, z.n);
whitelabel.urt(btex $O$ etex, z.o);
label.top(btex $P$ etex, z.p);
label.bot(btex $Q$ etex, z.q);
label.rt(btex $R$ etex, z.r);

endfig;

beginfig(157);
save u;
u:=.5cm;


z.a=(0,0)*u;
z.b=(.7,3)*u;
z.c=(2,0)*u;

z.oa=excenter(z.a,z.c,z.b);
z.ob=excenter(z.b,z.a,z.c);
z.oc=excenter(z.c,z.b,z.a);

z.ab=altitude(z.b,z.oc,z.a);
z.bc=altitude(z.c,z.oa,z.b);
z.ca=altitude(z.a,z.ob,z.c);

z.abb=altitude(z.b,z.oa,z.a);
z.bcc=altitude(z.c,z.ob,z.b);
z.caa=altitude(z.a,z.oc,z.c);

z.aab=altitude(z.b,z.ob,z.a);
z.bbc=altitude(z.c,z.oc,z.b);
z.cca=altitude(z.a,z.oa,z.c);

arcs(z.aab,z.a,z.ob,9);
arcs(z.ob,z.a,z.ca,10);
arcs2(z.abb,z.b,z.oa,9);
arcs2(z.oa,z.b,z.bc,10);
arcs3(z.bcc,z.c,z.ob,9);
arcs3(z.ob,z.c,z.ca,10);

draw ddline(z.aab,z.abb)(.2,.2);
draw ddline(z.bbc,z.bcc)(.2,.2);
draw ddline(z.cca,z.caa)(.2,.2);

draw z.oa--z.bc;
draw z.ob--z.ca;
draw z.oc--z.ab;
draw z.oa--z.abb;
draw z.ob--z.bcc;
draw z.oc--z.caa;
draw z.oa--z.cca;
draw z.ob--z.aab;
draw z.oc--z.bbc;

draw ddarc(z.cca,z.bc,z.abb)(20,20);
draw circle(z.ob,z.ca-z.ob);
draw ddarc(z.caa,z.ab,z.bbc)(20,20);
draw z.oa--z.ob--z.oc--cycle dashed linedot;

draw z.a--z.b--z.c--cycle penbold;

dOt z.oa,z.ob,z.oc;

label.llft(btex $A$ etex, z.a+(-1,0));
whitelabel.ulft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c+(1,0));
label.urt(btex $O$ etex, z.oa);
label.bot(btex $O_2$ etex, z.ob);
label.ulft(btex $O_1$ etex, z.oc);
endfig;

beginfig(158);
save u;
u:=1cm;

z.o=(0,0)*u;
z.x=(0,-1)*u;
z.a=z.x rotatedabout(z.o,-70);
z.b=z.a rotatedabout(z.o,-110);
z.c=z.a rotatedabout(z.o,150);
z.d=z.a rotatedabout(z.o,70);

draw circle(z.o,z.a-z.o);
draw z.a--z.b--z.c--z.d--cycle;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
endfig;

beginfig(159);
save u;
u:=1.3cm;

z.o=(0,0)*u;
z.x=(1,0)*u;
z.m=z.x rotatedabout(z.o,170);
z.n=z.x rotatedabout(z.o,105);
z.p=z.x rotatedabout(z.o,10);
z.q=z.x rotatedabout(z.o,-90);

z.a=inversion(z.o,abs(z.o-z.m))(.5[z.q,z.m]);
z.b=inversion(z.o,abs(z.o-z.m))(.5[z.m,z.n]);
z.c=inversion(z.o,abs(z.o-z.m))(.5[z.n,z.p]);
z.d=inversion(z.o,abs(z.o-z.m))(.5[z.p,z.q]);

draw circle(z.o,z.m-z.o);
draw z.a--z.b--z.c--z.d--cycle;

rimmark(z.a--z.q);
rimmark(z.a--z.m);
rimmark2(z.b--z.m);
rimmark2(z.b--z.n);
rimmark3(z.c--z.n);
rimmark3(z.c--z.p);
rimmark10(z.d--z.p);
rimmark10(z.d--z.q);

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.lft(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);
label.rt(btex $P$ etex, z.p);
label.bot(btex $Q$ etex, z.q);
endfig;

beginfig(160);
save u;
u:=1.3cm;

z.a=(0,0)*u;
z.b=(1.6,1)*u;
z.c=(2,0)*u;

z.a1=z.b+z.c-z.a;
z.b1=z.c+z.a-z.b;
z.c1=z.a+z.b-z.c;

z.d=altitude(z.c,z.a,z.b);
z.e=altitude(z.a,z.b,z.c);
z.f=altitude(z.b,z.c,z.a);

draw z.a1--z.b1--z.c1--cycle;
draw z.a--z.b--z.c--cycle penbold;
draw z.a--z.d;
draw z.b--z.e;
draw z.c--z.f;

rimmark(z.c1--z.b, z.b--z.a1,z.a--z.c);

label.llft(btex $A$ etex, z.a);
label.rt(btex $A_1$ etex, z.a1);
label.top(btex $B$ etex, z.b);
label.bot(btex $B_1$ etex, z.b1);
label.lrt(btex $C$ etex, z.c);
label.lft(btex $C_1$ etex, z.c1);
label.rt(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
whitelabel.lft(btex $F$ etex, z.f+(0,1));
endfig;

beginfig(161);
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(2,3)*u;
z.c=(3,0)*u;
z.d=.5[z.c,z.a];
z.e=.5[z.b,z.c];
z.h=.5[z.a,z.b];
z.o=centroid(z.a,z.b,z.c);
z.g=.5[z.o,z.b];
z.f=.5[z.o,z.a];

arcs(z.d,z.g,z.f,8);
arcs(z.e,z.d,z.g,8);
arcs2(z.d,z.e,z.f,8);
arcs2(z.e,z.f,z.g,8);

draw z.a--z.b--z.c--cycle penbold;
draw z.a--z.e;
draw z.b--z.d;
draw z.c--z.h;
draw z.d--z.e--z.g--z.f--cycle;

rimmark(z.a--z.f, z.f--z.o);
rimmark2(z.b--z.g, z.g--z.o);

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.rt(btex $E$ etex, z.e);
label.ulft(btex $F$ etex, z.f+(2,0));
label.ulft(btex $G$ etex, z.g+(2,0));
label.ulft(btex $H$ etex, z.h);
whitelabel.ulft(btex $O$ etex, z.o);
endfig;

beginfig(162);
save u;
u:=1cm;

z.a=origin;
z.m=(.5,0)*u;
z.b=5*z.m;
z.c=z.a+(0,-1)*u;
z.d=z.c+3*z.m;

draw z.a--z.b penbold;
draw z.c--z.d penbold;

kisDot(z.a,z.m);
kisDot(z.m,z.a);
kisDot(2*z.m,z.a);
kisDot(3*z.m,z.a);
kisDot(4*z.m,z.a);
kisDot(z.b,z.a);

kisDot(z.c,z.c+z.m);
kisDot(z.c+z.m,z.c);
kisDot(z.c+2*z.m,z.c);
kisDot(z.d,z.c);

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.top(btex $M$ etex, z.m);
endfig;

beginfig(163);
save u;
u:=1.4cm;

z.s=(0,10);
z.S=(0,25);

z.a0=origin;
z.m=(.5,0)*u;
z.a1=3*z.m;
z.b0=z.a0-z.S;
z.b1=z.b0+z.m;

draw z.a0--z.a1 penbold;
draw z.b0--z.b1 penbold;

kisDot(z.a0,z.a1);
kisDot(z.m,z.a0);
kisDot(2*z.m,z.a0);
kisDot(z.a1,z.a0);

kisDot(z.b0,z.b1);
kisDot(z.b1,z.b0);

arrowmark(z.a0, z.a1, btex $A$ etex, 18);
arrowmark(z.b0, z.b1, btex $B$ etex, 18);
endfig;

beginfig(164);
save u;
u:=0.8cm;

z.s=(0,10);
z.S=(0,25);

z.a0=origin;
z.m=(.2,0)*u;
z.a1=17*z.m;
z.b0=z.a0-z.S;
z.b1=z.b0+5*z.m;

kisDotAngSize(z.a0,z.a1,90,7);
kisDot(z.m,z.a0);
kisDot(2*z.m,z.a0);
kisDot(3*z.m,z.a0);
kisDot(4*z.m,z.a0);
kisDot(5*z.m,z.a0);
kisDotAngSize(5*z.m,z.a0,90,7);
kisDot(6*z.m,z.a0);
kisDot(7*z.m,z.a0);
kisDot(8*z.m,z.a0);
kisDot(9*z.m,z.a0);
kisDotAngSize(10*z.m,z.a0,90,7);
kisDot(11*z.m,z.a0);
kisDot(12*z.m,z.a0);
kisDot(13*z.m,z.a0);
kisDot(14*z.m,z.a0);
kisDotAngSize(15*z.m,z.a0,90,7);
kisDot(16*z.m,z.a0);
kisDotAngSize(z.a1,z.a0,90,7);

draw z.a0--z.a1 penbold;

kisDotAngSize(z.b0,z.b1,90,7);
kisDot(z.b0+z.m,z.b0);
kisDot(z.b0+2*z.m,z.b0);
kisDot(z.b0+3*z.m,z.b0);
kisDot(z.b0+4*z.m,z.b0);
kisDot(z.b1,z.b0);
kisDotAngSize(z.b1,z.b0,90,7);

draw z.b0--z.b1 penbold;

kisDot(z.a0+15*z.m-z.s,z.a1-z.s);
kisDot(z.a1-z.s,z.a0+15*z.m-z.s);

arrowmark(z.a0, z.a1, btex $A$ etex, 18);
arrowmark(z.b0, z.b1, btex $B$ etex, 18);
arrowmark(z.a0+15*z.m, z.a1, btex $R$ etex, -18);

endfig;

beginfig(165);
save u;
u:=1.1cm;

z.s=(0,10);
z.S=(0,25);

z.a=origin;
z.m=(1,0)*u;
z.e=z.a+3*z.m;
z.b=z.e+(4/9)*z.m;
z.c=z.a-z.S;
z.d=z.c+z.m;
z.f=z.c+(8/9)*z.m;

draw z.a--z.b penbold;
draw z.c--z.d penbold;

kisDot(z.a,z.b);
kisDot(z.a+z.m,z.a);
kisDot(z.a+2*z.m,z.a);
kisDot(z.e,z.a);
kisDot(z.e+(1/9)*z.m,z.a);
kisDot(z.e+(2/9)*z.m,z.a);
kisDot(z.e+(3/9)*z.m,z.a);
kisDot(z.b,z.a);

kisDot(z.c,z.d);
kisDot(z.c+(4/9)*z.m,z.c);
kisDot(z.f,z.c);
kisDot(z.d,z.c);

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.top(btex $F$ etex, z.f);
endfig;

beginfig(166);
save u;
u:=1.7cm;

z.o=(0,0)*u;
z.a=(-1,0)*u;
z.b= z.a rotatedabout(z.o,-90);
z.c= z.a rotatedabout(z.o,180);
z.b1= z.a rotatedabout(z.o,90);

z.e=bisector(z.b,z.a,z.c);
z.d=altitude(z.a,z.e,z.c);

labelarcsprof2(z.a, z.c, z.b, 15, 2, btex \small{$1$} etex);
labelarcsprof2(z.d, z.e, z.c, 15, 2, btex \small{$2$} etex);
labelarcsprof(z.d, z.b, z.e, 20, 10, btex \small{$3$} etex);
labelarcsprof2(z.b, z.a, z.c, 15, 2, btex \small{$4$} etex);
labelarcsprof(z.b, z.d, z.e, 20, 10, btex \small{$5$} etex);

rimmark2(z.a--z.d,z.a--z.b);

draw z.a--z.b--z.c--z.b1--cycle;
draw z.a--z.c;
draw z.e--z.d;
draw z.d--z.b;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);
endfig;

beginfig(167);
save u;
u:=1cm;

z.s=(0,10);
z.S=(0,25);

z.m=(.5,0)*u;

z.a0=(0,0);
z.a1=z.a0+9*z.m;
z.b0=z.a0-z.S;
z.b1=z.b0+4*z.m;

draw z.a0--z.a1 penbold;
draw z.b0--z.b1 penbold;

kisDot(z.a0,z.a1);
kisDot(z.a0+1*z.m,z.a1);
kisDot(z.a0+2*z.m,z.a1);
kisDot(z.a0+3*z.m,z.a1);
kisDot(z.a0+4*z.m,z.a1);
kisDot(z.a0+5*z.m,z.a1);
kisDot(z.a0+6*z.m,z.a1);
kisDot(z.a0+7*z.m,z.a1);
kisDot(z.a0+8*z.m,z.a1);
kisDot(z.a1,z.a0);

kisDot(z.b0,z.b1);
kisDot(z.b0+1*z.m,z.b1);
kisDot(z.b0+2*z.m,z.b1);
kisDot(z.b0+3*z.m,z.b1);
kisDot(z.b1,z.b0);

arrowmark(z.a0, z.a1, btex $A$ etex, 18);
arrowmark(z.b0, z.b1, btex $B$ etex, 18);
endfig;

beginfig(168);
save u;
u:=.7cm;

z.s=(0,12);
z.S=(25,0);

z.m=(.5,0)*u;

z.a0=origin;
z.a1=z.a0+13*z.m;
z.a2=z.a0+14*z.m;
z.b0=z.a2+z.S;
z.b1=z.b0+10*z.m;

draw z.a0--z.a2 penbold;
kisDot(z.a0,z.a1);
kisDot(z.a0+1*z.m,z.a0);
kisDot(z.a0+2*z.m,z.a0);
kisDot(z.a0+3*z.m,z.a0);
kisDot(z.a0+4*z.m,z.a0);
kisDot(z.a0+5*z.m,z.a0);
kisDot(z.a0+6*z.m,z.a0);
kisDot(z.a0+7*z.m,z.a0);
kisDot(z.a0+8*z.m,z.a0);
kisDot(z.a0+9*z.m,z.a0);
kisDot(z.a0+10*z.m,z.a0);
kisDot(z.a0+11*z.m,z.a0);
kisDot(z.a0+12*z.m,z.a0);
kisDot(z.a0+13*z.m,z.a0);
kisDot(z.a2,z.a0);

draw z.b0--z.b1 penbold;
kisDot(z.b0,z.b1);
kisDot(z.b0+1*z.m,z.b0);
kisDot(z.b0+2*z.m,z.b0);
kisDot(z.b0+3*z.m,z.b0);
kisDot(z.b0+4*z.m,z.b0);
kisDot(z.b0+5*z.m,z.b0);
kisDot(z.b0+6*z.m,z.b0);
kisDot(z.b0+7*z.m,z.b0);
kisDot(z.b0+8*z.m,z.b0);
kisDot(z.b0+9*z.m,z.b0);
kisDot(z.b1,z.b0);

arrowmark(z.a0, z.a1+.4*z.m, btex $A$ etex, 18);
arrowmark(z.a0, z.a1, btex $A_1$ etex, -18);
arrowmark(z.a0, z.a2, btex $A_2$ etex, -36);
arrowmark(z.b0, z.b1, btex $B$ etex, 18);

endfig;

beginfig(169);
save u;
u:=.7cm;

z.s=(0,8);

z.m=(.2,.4)*u;
z.n=(.5,0)*u;
z.k=z.n-z.m;

z.a=origin;
z.b=z.a+11*z.m;
z.c=z.a+11*z.n;
z.d=z.b-7*z.m;
z.e=z.b+7*z.k;

z.ss=z.s rotated angle(z.b-z.a);

draw z.a--z.b--z.c--cycle penbold;
draw z.d--z.e penbold;

draw z.a+1*z.m--z.a+1*z.n;
draw z.a+2*z.m--z.a+2*z.n;
draw z.a+3*z.m--z.a+3*z.n;
draw z.a+4*z.m--z.a+4*z.n;
draw z.a+5*z.m--z.a+5*z.n;
draw z.a+6*z.m--z.a+6*z.n;
draw z.a+7*z.m--z.a+7*z.n;
draw z.a+8*z.m--z.a+8*z.n;
draw z.a+9*z.m--z.a+9*z.n;
draw z.a+10*z.m--z.a+10*z.n;

draw z.b-1*z.m--z.b+1*z.k;
draw z.b-2*z.m--z.b+2*z.k;
draw z.b-3*z.m--z.b+3*z.k;
draw z.b-4*z.m--z.b+4*z.k;
draw z.b-5*z.m--z.b+5*z.k;
draw z.b-6*z.m--z.b+6*z.k;
draw z.b-7*z.m--z.b+7*z.k;
draw z.b-8*z.m--z.b+8*z.k;
draw z.b-9*z.m--z.b+9*z.k;
draw z.b-10*z.m--z.b+10*z.k;

kisDot(z.a+3*z.ss,z.b+3*z.ss);
kisDot(z.b+3*z.ss,z.a+3*z.ss);
drawdblarrow z.a+3*z.ss--z.b+3*z.ss;
whitelabel(btex $n$ etex rotated  angle(z.b-z.a), .5[z.a+3*z.ss,z.b+3*z.ss]);

kisDot(z.d+2*z.ss,z.b+2*z.ss);
kisDot(z.b+2*z.ss,z.d+2*z.ss);
drawdblarrow z.d+2*z.ss--z.b+2*z.ss;
whitelabel(btex $m$ etex rotated  angle(z.b-z.d), .5[z.d+2*z.ss,z.b+2*z.ss]);

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d+(2,-2));
label.urt(btex $E$ etex, z.e);

endfig;

beginfig(170);
save u;
u:=.7cm;

z.s=(0,8);

z.m=(.2,.4)*u;
z.n=(.5,0)*u;
z.k=z.n-z.m;

z.a=origin;
z.b=z.a+10*z.m;
z.c=z.a+10*z.n;
z.d=z.b-6.6*z.m;
z.e=z.b+6.6*z.k;

z.ss=z.s rotated angle(z.b-z.a);

draw z.a--z.b--z.c--cycle penbold;
draw z.d--z.e penbold;

draw z.a+1*z.m--z.a+1*z.n;
draw z.a+2*z.m--z.a+2*z.n;
draw z.a+3*z.m--z.a+3*z.n;
draw z.a+4*z.m--z.a+4*z.n;
draw z.a+5*z.m--z.a+5*z.n;
draw z.a+6*z.m--z.a+6*z.n;
draw z.a+7*z.m--z.a+7*z.n;
draw z.a+8*z.m--z.a+8*z.n;
draw z.a+9*z.m--z.a+9*z.n;
draw z.a+10*z.m--z.a+10*z.n;

draw z.b-1*z.m--z.b+1*z.k;
draw z.b-2*z.m--z.b+2*z.k;
draw z.b-3*z.m--z.b+3*z.k;
draw z.b-4*z.m--z.b+4*z.k;
draw z.b-5*z.m--z.b+5*z.k;
draw z.b-6*z.m--z.b+6*z.k;
draw z.b-7*z.m--z.b+7*z.k;
draw z.b-8*z.m--z.b+8*z.k;
draw z.b-9*z.m--z.b+9*z.k;
draw z.b-10*z.m--z.b+10*z.k;

kisDot(z.a+3*z.m+3*z.ss,z.b+3*z.ss);
kisDot(z.b+3*z.ss,z.a+3*z.m+3*z.ss);
drawdblarrow z.a+3*z.m+3*z.ss--z.b+3*z.ss;
whitelabel(btex $m+1$ etex rotated  angle(z.b-z.a+3*z.m), .5[z.a+3*z.m+3*z.ss,z.b+3*z.ss]);

kisDot(z.a+4*z.m+2*z.ss,z.b+2*z.ss);
kisDot(z.b+2*z.ss,z.a+4*z.m+2*z.ss);
drawdblarrow z.a+4*z.m+2*z.ss--z.b+2*z.ss;
whitelabel(btex $m$ etex rotated  angle(z.b-z.a+4*z.m), .5[z.a+4*z.m+2*z.ss,z.b+2*z.ss]);

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d+(2,-2));
label.urt(btex $E$ etex, z.e);

endfig;

beginfig(171);
save u;
u:=1cm;

z.S=(2,0)*u;

z.a=origin;
z.b=(2,2)*u;
z.c=(2.5,0)*u;
z.d=.7[z.b,z.a];
z.e=.7[z.b,z.c];

z.a1=z.c+z.S;
z.b1=z.a1+z.b-z.d;
z.c1=z.a1+z.e-z.d;

arcs(z.c,z.a,z.b,10);
arcs(z.e,z.d,z.b,10);
arcs(z.c1,z.a1,z.b1,10);

arcs2(z.a,z.b,z.c,10);
arcs2(z.a1,z.b1,z.c1,10);

%mark_angle((z.b,z.c,z.a,10);
%mark_angle((z.b1,z.c1,z.a1,10);

draw z.a--z.b--z.c--cycle;
draw z.d--z.e;
draw z.a1--z.b1--z.c1--cycle;

rimmark3(z.a1--z.b1,z.d--z.b);

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);
label.rt(btex $E$ etex, z.e);

label.llft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.lrt(btex $C_1$ etex, z.c1);

endfig;

beginfig(172);
save u;
u:=1cm;

z.S=(2,0)*u;

z.a=origin;
z.b=(2,2)*u;
z.c=(2.5,0)*u;
z.d=.7[z.b,z.a];
z.e=.7[z.b,z.c];

z.a1=z.c+z.S;
z.b1=z.a1+z.b-z.d;
z.c1=z.a1+z.e-z.d;

arcs(z.c,z.a,z.b,10);
arcs(z.e,z.d,z.b,10);

arcs2(z.a,z.b,z.c,10);
arcs2(z.a1,z.b1,z.c1,10);

draw z.a--z.b--z.c--cycle;
draw z.d--z.e;
draw z.a1--z.b1--z.c1--cycle;

rimmark3(z.a1--z.b1,z.d--z.b);

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);
label.rt(btex $E$ etex, z.e);

label.llft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.lrt(btex $C_1$ etex, z.c1);

endfig;

beginfig(173);
save u;
u:=1cm;

z.S=(2,0)*u;

z.a=origin;
z.b=(2,2)*u;
z.c=(2.5,0)*u;
z.d=.7[z.b,z.a];
z.e=.7[z.b,z.c];

z.a1=z.c+z.S;
z.b1=z.a1+z.b-z.d;
z.c1=z.a1+z.e-z.d;

arcs(z.c,z.a,z.b,10);
arcs(z.e,z.d,z.b,10);

draw z.a--z.b--z.c--cycle;
draw z.d--z.e;
draw z.a1--z.b1--z.c1--cycle;

rimmark3(z.a1--z.b1,z.d--z.b);

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);
label.rt(btex $E$ etex, z.e);

label.llft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.lrt(btex $C_1$ etex, z.c1);

endfig;

beginfig(174);
save u;
u:=1cm;

z.a=origin;
z.b=z.a+(3,0)*u;
z.c=z.b+(0,2)*u;
z.d=.7[z.b,z.a];
z.e=.7[z.b,z.c];
z.a1=z.b+(2,0)*u;
z.b1=z.a1+z.b-z.d;
z.c1=z.a1+z.e-z.d;

draw z.a--z.b--z.c--cycle penbold;
draw z.a1--z.b1--z.c1--cycle penbold;
draw z.d--z.e;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.rt(btex $E$ etex, z.e);

label.lft(btex $A_1$ etex, z.a1);
label.rt(btex $B_1$ etex, z.b1);
label.top(btex $C_1$ etex, z.c1);

endfig;

beginfig(175);
save u;
u:=1cm;

z.a=origin;
z.c=z.a+(3,0)*u;
z.b=z.a+(2,2)*u;
z.d=altitude(z.a,z.b,z.c);
z.x=.7[z.c,z.a];
z.y=.7[z.c,z.b];
z.a1=z.c+(2,0)*u;
z.c1=z.a1+z.c-z.x;
z.b1=z.a1+z.y-z.x;
z.d1=altitude(z.a1,z.b1,z.c1);

arcs(z.a,z.d,z.b,10);
arcs(z.a1,z.d1,z.b1,10);
arcs2(z.d,z.a,z.b,10);
arcs2(z.d1,z.a1,z.b1,10);

draw z.a--z.c--z.b--cycle penbold;
draw z.a1--z.c1--z.b1--cycle penbold;
draw z.b--z.d;
draw z.b1--z.d1;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);

label.lft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.rt(btex $C_1$ etex, z.c1);
label.bot(btex $D_1$ etex, z.d1);

endfig;

%176--- делительный циркуль

beginfig(177);
save u;
u:=2cm;

y.H=1.5*u;


z.o=origin;
z.a=(-1,0)*u;
z.b=(4,0)*u;
z.ah=z.a+(0,y.H);
z.oh=z.o+(0,y.H);
z.bh=z.b+(0,y.H);

z.m=cross(z.o-.4(u,0)--z.oh-.5(u,0),z.a+.6(0,y.H)--z.b+.6(0,y.H));
z.n=cross(z.o+(3u,0)--z.oh+(3u,0),z.a+.6(0,y.H)--z.b+.6(0,y.H));

draw z.a--z.b--z.bh--z.ah--cycle;
draw z.o--z.oh penhair;
draw z.o+(u,0)--z.oh+(u,0) penhair;
draw z.o+(2u,0)--z.oh+(2u,0) penhair;
draw z.o+(3u,0)--z.oh+(3u,0) penhair;

draw z.o-.0(u,0)--z.oh-.1(u,0) penhair;
draw z.o-.1(u,0)--z.oh-.2(u,0) penhair;
draw z.o-.2(u,0)--z.oh-.3(u,0) penhair;
draw z.o-.3(u,0)--z.oh-.4(u,0) penhair;
draw z.o-.4(u,0)--z.oh-.5(u,0) penhair;
draw z.o-.5(u,0)--z.oh-.6(u,0) penhair;
draw z.o-.6(u,0)--z.oh-.7(u,0) penhair;
draw z.o-.7(u,0)--z.oh-.8(u,0) penhair;
draw z.o-.8(u,0)--z.oh-.9(u,0) penhair;
draw z.o-.9(u,0)--z.oh-1(u,0) penhair;

draw z.a+.1(0,y.H)--z.b+.1(0,y.H)  penhair;
draw z.a+.2(0,y.H)--z.b+.2(0,y.H)  penhair;
draw z.a+.3(0,y.H)--z.b+.3(0,y.H)  penhair;
draw z.a+.4(0,y.H)--z.b+.4(0,y.H)  penhair;
draw z.a+.5(0,y.H)--z.b+.5(0,y.H)  penhair;
draw z.a+.6(0,y.H)--z.b+.6(0,y.H)  penhair;
draw z.a+.7(0,y.H)--z.b+.7(0,y.H)  penhair;
draw z.a+.8(0,y.H)--z.b+.8(0,y.H)  penhair;
draw z.a+.9(0,y.H)--z.b+.9(0,y.H)  penhair;

label.bot(btex \scriptsize{$0$} etex, z.o);
label.bot(btex \scriptsize{$1$} etex, z.o-.1(u,0));
label.bot(btex \scriptsize{$2$} etex, z.o-.2(u,0));
label.bot(btex \scriptsize{$3$} etex, z.o-.3(u,0));
label.bot(btex \scriptsize{$4$} etex, z.o-.4(u,0));
label.bot(btex \scriptsize{$5$} etex, z.o-.5(u,0));
label.bot(btex \scriptsize{$6$} etex, z.o-.6(u,0));
label.bot(btex \scriptsize{$7$} etex, z.o-.7(u,0));
label.bot(btex \scriptsize{$8$} etex, z.o-.8(u,0));
label.bot(btex \scriptsize{$9$} etex, z.o-.9(u,0));

%label.lft(btex \scriptsize{$0$} etex, z.a);
%label.lft(btex \scriptsize{$1$} etex, z.a+.1(0,y.H));
label.lft(btex \scriptsize{$2$} etex, z.a+.2(0,y.H));
%label.lft(btex \scriptsize{$3$} etex, z.a+.3(0,y.H));
label.lft(btex \scriptsize{$4$} etex, z.a+.4(0,y.H));
%label.lft(btex \scriptsize{$5$} etex, z.a+.5(0,y.H));
label.lft(btex \scriptsize{$6$} etex, z.a+.6(0,y.H));
%label.lft(btex \scriptsize{$7$} etex, z.a+.7(0,y.H));
label.lft(btex \scriptsize{$8$} etex, z.a+.8(0,y.H));
%label.lft(btex \scriptsize{$9$} etex, z.a+.9(0,y.H));
label.lft(btex \scriptsize{$10$} etex, z.a+1(0,y.H));

label.bot(btex $1$ etex, z.o+(1u,0));
label.bot(btex $2$ etex, z.o+(2u,0));
label.bot(btex $3$ etex, z.o+(3u,0));
label.bot(btex $4$ etex, z.o+(4u,0));

Dot z.m,z.n,;

whitelabel.urt(btex $m$ etex, z.m);
whitelabel.urt(btex $n$ etex, z.n);

label.rt(btex $B$ etex, z.b);
label.lft(btex $A$ etex, z.a);
endfig;

beginfig(178);
save u;
u:=2cm;

x.H=.5*u;
y.H=1.5*u;
x.s=9;

z.b=origin;
z.a=z.b-(x.H,0);
z.c=z.b-(0,y.H);

draw .1[z.c,z.a]--.1[z.c,z.b]+(x.s,0);
draw .2[z.c,z.a]--.2[z.c,z.b]+(x.s,0);
draw .3[z.c,z.a]--.3[z.c,z.b]+(x.s,0);
draw .4[z.c,z.a]--.4[z.c,z.b]+(x.s,0);
draw .5[z.c,z.a]--.5[z.c,z.b]+(x.s,0);
draw .6[z.c,z.a]--.6[z.c,z.b]+(x.s,0);
draw .7[z.c,z.a]--.7[z.c,z.b]+(x.s,0);
draw .8[z.c,z.a]--.8[z.c,z.b]+(x.s,0);
draw .9[z.c,z.a]--.9[z.c,z.b]+(x.s,0);
draw 1[z.c,z.a]--1[z.c,z.b]+(x.s,0);

draw z.a--z.b--z.c--cycle;


label.top(btex \scriptsize{$a$} etex, z.a);
label.top(btex \scriptsize{$b$} etex, z.b);
label.bot(btex \scriptsize{$c$} etex, z.c);
label.lft(btex \scriptsize{$d$} etex, .1[z.c,z.a]);
label.urt(btex \scriptsize{$e$} etex, .1[z.c,z.b]);
label.lft(btex \scriptsize{$f$} etex, .2[z.c,z.a]);
label.urt(btex \scriptsize{$h$} etex, .2[z.c,z.b]);

%label.rt(btex \scriptsize{$0$} etex, z.c+(x.s,0));
%label.rt(btex \scriptsize{$1$} etex, z.c+.1(z.b-z.c)+(x.s,0));
label.rt(btex \scriptsize{$2$} etex, z.c+.2(z.b-z.c)+(x.s,0));
%label.rt(btex \scriptsize{$3$} etex, z.c+.3(z.b-z.c)+(x.s,0));
label.rt(btex \scriptsize{$4$} etex, z.c+.4(z.b-z.c)+(x.s,0));
%label.rt(btex \scriptsize{$5$} etex, z.c+.5(z.b-z.c)+(x.s,0));
label.rt(btex \scriptsize{$6$} etex, z.c+.6(z.b-z.c)+(x.s,0));
%label.rt(btex \scriptsize{$7$} etex, z.c+.7(z.b-z.c)+(x.s,0));
label.rt(btex \scriptsize{$8$} etex, z.c+.8(z.b-z.c)+(x.s,0));
%label.rt(btex \scriptsize{$9$} etex, z.c+.9(z.b-z.c)+(x.s,0));
label.rt(btex \scriptsize{$10$} etex, z.c+1(z.b-z.c)+(x.s,0));

endfig;

beginfig(179);
save u;
u:=1cm;

x.k=.7;
x.S=1cm;

z.a=origin;
z.b=(-1,2)*u;
z.c=(1,3)*u;
z.d=(2.5,1.5)*u;
z.e=(2,0)*u;

z.z=

z.b1=x.k[z.a,z.b];
z.c1=x.k[z.a,z.c];
z.d1=x.k[z.a,z.d];
z.e1=x.k[z.a,z.e];

z.a1=z.a-(x.S,0);
z.a0=z.a1-(abs(z.a-z.b1),0);

arcs(z.a,z.b,z.c,10);
arcs(z.a,z.b1,z.c1,10);
arcs2(z.a,z.e,z.d,10);
arcs2(z.a,z.e1,z.d1,10);

draw z.a--z.b--z.c--z.d--z.e--cycle;
draw z.a--z.b1--z.c1--z.d1--z.e1--cycle;
draw z.a--z.c;
draw z.a--z.d;

draw z.a0--z.a1 penbold;
kisDot(z.a0,z.a1);
kisDot(z.a1,z.a0);

label.top(btex $a$ etex, .5[z.a0,z.a1]);
label(btex $a$ etex rotated  angle(z.a-z.b), .5[z.a,z.b1]+(unitvector(z.a-z.b) zscaled (0,5)));

label.llft(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
label.lft(btex $B_1$ etex, z.b1);
label.ulft(btex $C_1$ etex, z.c1+(1,-1));
label.lrt(btex $D_1$ etex, z.d1-(1,-1));
label.bot(btex $E_1$ etex, z.e1);
endfig;

beginfig(180);
save u;
u:=1cm;

x.k=.7;
x.S=1cm;

z.a=(-16,0)*u;
z.b=z.a+(-1,2)*u;
z.c=z.a+(1,3)*u;
z.d=z.a+(2.5,1.5)*u;
z.e=z.a+(2,0)*u;
z.o=z.a+(1,1)*u;

z.a1=x.k*z.a;
z.b1=x.k*z.b;
z.c1=x.k*z.c;
z.d1=x.k*z.d;
z.e1=x.k*z.e;
z.o1=x.k*z.o;

hatchfill z.a--z.o--z.e--cycle  withcolor (43, 1mm, -.5bp);
hatchfill z.a1--z.o1--z.e1--cycle  withcolor (43, 1mm, -.5bp);

draw z.a--z.b--z.c--z.d--z.e--cycle;
draw z.a1--z.b1--z.c1--z.d1--z.e1--cycle;
draw z.o--z.a;
draw z.o--z.b;
draw z.o--z.c;
draw z.o--z.d;
draw z.o--z.e;
draw z.o1--z.a1;
draw z.o1--z.b1;
draw z.o1--z.c1;
draw z.o1--z.d1;
draw z.o1--z.e1;


label.llft(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
label.urt(btex $O$ etex, z.o+(0,1));

label.llft(btex $A_1$ etex, z.a1);
label.lft(btex $B_1$ etex, z.b1);
label.top(btex $C_1$ etex, z.c1+(1,-1));
label.rt(btex $D_1$ etex, z.d1-(1,-1));
label.lrt(btex $E_1$ etex, z.e1);
whitelabel.urt(btex $O_1$ etex, z.o1);
endfig;

beginfig(181);
save u;
u:=.5cm;

x.k=5/3;

z.a=(4,2)*u;
z.b=z.a+(1,-.5)*u;
z.c=z.a+(1.2,-1.5)*u;
z.d=z.a+(0,-2.5)*u;

z.a1=x.k*z.a;
z.b1=x.k*z.b;
z.c1=x.k*z.c;
z.d1=x.k*z.d;

draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.a1--z.b1--z.c1--z.d1--cycle penbold;
draw ddline(origin,z.a1)(0,.2);
draw origin--z.b1;
draw origin--z.c1;
draw ddline(origin,z.d1)(0,.2);

label.top(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);

label.lft(btex $O$ etex, origin);

label.top(btex $A_1$ etex, z.a1);
label.rt(btex $B_1$ etex, z.b1);
label.rt(btex $C_1$ etex, z.c1+(1,-1));
label.bot(btex $D_1$ etex, z.d1-(1,-1));

endfig;

beginfig(182);
save u;
u:=.4cm;

x.k=5/3;
x.k2=-5/3;

z.a=(4,2)*u;
z.b=z.a+(1,-.5)*u;
z.c=z.a+(1.2,-1.5)*u;
z.d=z.a+(0,-2.5)*u;

z.a1=x.k*z.a;
z.b1=x.k*z.b;
z.c1=x.k*z.c;
z.d1=x.k*z.d;

z.a2=x.k2*z.a;
z.b2=x.k2*z.b;
z.c2=x.k2*z.c;
z.d2=x.k2*z.d;

draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.a1--z.b1--z.c1--z.d1--cycle penbold;
draw z.a2--z.b2--z.c2--z.d2--cycle penbold;
draw z.a2--z.a1;
draw z.b2--z.b1;
draw z.c2--z.c1;
draw z.d2--z.d1;

label.top(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);

label.top(btex $O$ etex, origin);

label.top(btex $A_1$ etex, z.a1);
label.rt(btex $B_1$ etex, z.b1);
label.rt(btex $C_1$ etex, z.c1+(1,-1));
label.bot(btex $D_1$ etex, z.d1-(1,-1));

label.bot(btex $A'$ etex, z.a2);
label.lft(btex $B'$ etex, z.b2);
label.lft(btex $C'$ etex, z.c2+(1,-1));
label.top(btex $D'$ etex, z.d2-(1,-1));

endfig;

beginfig(183);
save u,a;
u:=.5cm;
a:=15;

x.k=5/3;
z.S=(5,0)*u;


z.a=(4,2)*u;
z.b=z.a+(1,-.5)*u;
z.c=z.a+(1.2,-1.5)*u;
z.d=z.a+(0,-2.5)*u;
z.e=z.a+(-.5,-1.3)*u;

z.a1=x.k*z.a;
z.b1=x.k*z.b;
z.c1=x.k*z.c;
z.d1=x.k*z.d;
z.e1=x.k*z.e;

z.a2= z.a1 rotatedabout(z.a1,a)+z.S;
z.b2= z.b1 rotatedabout(z.a1,a)+z.S;
z.c2= z.c1 rotatedabout(z.a1,a)+z.S;
z.d2= z.d1 rotatedabout(z.a1,a)+z.S;
z.e2= z.e1 rotatedabout(z.a1,a)+z.S;


draw z.a--z.b--z.c--z.d--z.e--cycle penbold;
draw z.a1--z.b1--z.c1--z.d1--z.e1--cycle penbold;
draw z.a2--z.b2--z.c2--z.d2--z.e2--cycle penbold;
draw ddline(origin,z.a1)(0,.2);
draw origin--z.b1;
draw origin--z.c1;
draw ddline(origin,z.d1)(0,.2);
draw ddline(origin,z.e1)(0,.2);

label.top(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
whitelabel.rt(btex $E$ etex, z.e);

label.lft(btex $O$ etex, origin);

label.top(btex $A'$ etex, z.a1);
label.rt(btex $B'$ etex, z.b1);
label.rt(btex $C'$ etex, z.c1+(1,-1));
label.bot(btex $D'$ etex, z.d1-(1,-1));
whitelabel.rt(btex $E'$ etex, z.e1);


label.top(btex $A_1$ etex, z.a2);
label.rt(btex $B_1$ etex, z.b2);
label.rt(btex $C_1$ etex, z.c2);
label.bot(btex $D_1$ etex, z.d2);
label.lft(btex $E_1$ etex, z.e2);
endfig;

beginfig(184);
save u;
u:=1cm;
x.k=2.2;

z.o=origin;
z.a=(1.7,.3)*u;
z.m=(1.5,0.5)*u;
z.n=(1,1)*u;
z.p=(2,1)*u;
z.q=(1.3,0)*u;

z.a1=x.k*z.a;
z.m1=x.k*z.m;
z.n1=x.k*z.n;
z.p1=x.k*z.p;
z.q1=x.k*z.q;


hatchfill z.m..z.n..z.p..z.q..cycle  withcolor (73, 1mm, -.5bp);
hatchfill z.m1..z.n1..z.p1..z.q1..cycle  withcolor (73, 1mm, -.5bp);
draw z.m..z.n..z.p..z.q..cycle;
draw z.m1..z.n1..z.p1..z.q1..cycle;

draw ddline(z.o,z.m1)(0,.2);
draw ddline(z.o,z.n1)(0,.2);
draw ddline(z.o,z.p1)(0,.2);
draw ddline(z.o,z.q1)(0,.2);
draw ddline(z.o,z.m)(0,.2);

dOt z.m,z.n,z.p,z.q,z.m1,z.n1,z.p1,z.q1;

whitelabel(btex $A$ etex, z.a);
whitelabel(btex $A_1$ etex, z.a1);

whitelabel.lft(btex $M$ etex, z.m);
label.lft(btex $N$ etex, z.n);
label.top(btex $P$ etex, z.p);
label.llft(btex $Q$ etex, z.q);

whitelabel.lft(btex $M_1$ etex, z.m1);
label.lft(btex $N_1$ etex, z.n1);
label.top(btex $P_1$ etex, z.p1);
label.llft(btex $Q_1$ etex, z.q1);

endfig;

beginfig(185);
save u;
u:=1.5cm;
x.k=.4;

z.s=origin;
z.o=(4,1)*u;
z.m=z.o+(-1,.5)*u;

z.o1=x.k*z.o;
z.m1=x.k*z.m;

draw circle(z.o,z.m-z.o);
draw circle(z.o1,z.m1-z.o1);
draw z.m--z.o--z.s--(1.2*z.m);
draw z.m1--z.o1;

label.ulft(btex $M$ etex, z.m);
label.ulft(btex $M_1$ etex, z.m1);

label.lrt(btex $O$ etex, z.o);
label.lrt(btex $O_1$ etex, z.o1);

label.lft(btex $S$ etex, z.s);

endfig;

beginfig(186);
save u;
u:=.8cm;
x.k=2.2;

z.e=origin;
z.o1=(4,0)*u;
z.a1=z.o1+(-.9,.4)*u;
z.m1=z.a1 rotatedabout(z.o1,70);

z.o2=x.k*z.o1;
z.a2=x.k*z.a1;
z.m2=2*z.o2 - x.k*z.m1;

z.i=(2*x.k/(1+x.k))*z.o1;

z.t=cross.top(circle(z.o2,z.a2-z.o2),circle(.5*z.o2,.5*z.o2));
z.t1=z.t reflectedabout(z.e,z.o1);

z.l1=cross.bot(circle(z.o1,z.a1-z.o1),circle(.5[z.i,z.o1],.5(z.i-z.o1)));
z.r1=z.l1 reflectedabout(z.e,z.o1);
z.l2=cross.top(circle(z.o2,z.a2-z.o2),circle(.5[z.i,z.o2],.5(z.i-z.o2)));
z.r2=z.l2 reflectedabout(z.e,z.o1);

draw circle(z.o1,z.a1-z.o1);
draw circle(z.o2,z.a2-z.o2);
draw z.e--z.a2--z.o2--cycle;
draw z.a1--z.o1;
draw z.m1--z.o1;
draw z.m2--z.o2;
draw z.m1--z.m2;
draw ddline(z.e,z.t)(0,.2);
draw ddline(z.e,z.t1)(0,.2);
draw ddline(z.r1,z.r2)(.2,.2);
draw ddline(z.l1,z.l2)(.2,.2);

dOt z.o1,z.o2,z.i,z.e,z.m1,z.m2,z.a1,z.a2;

whitelabel.top(btex $A_1$ etex, z.a1);
whitelabel.urt(btex $A_2$ etex, z.a2);
label.llft(btex $M_1$ etex, z.m1);
label.urt(btex $M_2$ etex, z.m2);
whitelabel.urt(btex $O_1$ etex, z.o1);
whitelabel.lrt(btex $O_2$ etex, z.o2);
label.bot(btex $I$ etex, z.i);
label.lft(btex $E$ etex, z.e);
endfig;

beginfig(187);
save u;
u:=1cm;
x.k=1.9;

z.a=origin;
z.b=(1,2)*u;
z.d=(3,0)*u;
z.b1=z.b rotated -30;
z.d1=z.d rotated -50;

z.c=z.b+z.d;
z.e=z.b+x.k*z.d;
z.f=(1/x.k)*z.e;

z.c1=z.b1+z.d1;
z.e1=z.b1+x.k*z.d1;
z.f1=(1/x.k)*z.e1;

z.f2=(3,.5)*u;
z.f3=(4,.5)*u;
z.f4=(4,1)*u;

z.e2=x.k*z.f2;
z.e3=x.k*z.f3;
z.e4=x.k*z.f4;

draw z.e--z.b--z.a--z.d--z.c;
draw z.e1--z.b1--z.a--z.d1--z.c1;
draw z.a--z.e dashed evenly;
draw z.a--z.e1 dashed evenly;

draw z.e..z.e4..z.e3..z.e2..z.e1 penbold;
draw z.f..z.f4..z.f3..z.f2..z.f1 penbold;

dOt z.a,z.b,z.c,z.d,z.e,z.f,z.b1,z.c1,z.d1,z.e1,z.f1;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.ulft(btex $F$ etex, z.f);

label.top(btex $B'$ etex, z.b1);
label.urt(btex $C'$ etex, z.c1);
label.bot(btex $D'$ etex, z.d1);
label.rt(btex $E'$ etex, z.e1);
label.top(btex $F'$ etex, z.f1);
endfig;

%188 пантограф

beginfig(189);
save u;
u:=1cm;
x.k=.7;

z.c=origin;
z.a=(-.7,-2)*u;
z.b=z.a+(2,0)*u;
z.d=altitude(z.a,z.c,z.b);

z.a1=x.k*z.a;
z.b1=x.k*z.b;
z.c1=x.k*z.c;
z.d1=x.k*z.d;

draw z.a--z.b--z.c--cycle penbold;
draw z.c--z.d;
draw z.a1--z.b1;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);

label.ulft(btex $A_1$ etex, z.a1);
label.urt(btex $B_1$ etex, z.b1);
label.urt(btex $D_1$ etex, z.d1);
endfig;

beginfig(190);
save u,v,w;
u:=1cm;
v:=15;
w=.5;

z.b=origin;
z.c=(6,0)*u;
z.d=z.c rotated v;
z.a=z.d rotated v;
z.o=.585*z.d;
z.n=altitude(z.a,z.o,z.b);
z.m=z.n rotatedabout(z.o,-60);
z.m1=secondpoint(z.m, z.b, z.o);
z.l=z.m reflectedabout(z.b,z.d);
z.o1=(abs(z.m)/abs(z.m1))*z.o;
z.lm=z.m rotatedabout(z.o1,1);

z.oo=w*z.o;
z.nn=w*z.n;
z.mm=w*z.m;
z.mm1=w*z.m1;

draw z.a--z.b--z.c;
draw z.b--z.m;
draw z.n--z.o--z.m--z.o1;
draw z.oo--z.nn;
draw z.oo--z.mm;
draw z.oo--z.mm1;
draw z.b--z.d dashed linedot; 
draw circle(z.o,z.o-z.n);
draw circle(z.oo,z.oo-z.nn);
draw ddarc(z.l,z.lm,z.m)(80,80);

dOt z.m,z.mm,z.mm1,z.o,z.o1,z.oo;

label.urt(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);

label.lrt(btex $O$ etex, z.o);
label.lrt(btex $O_1$ etex, z.o1);

whitelabel.urt(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);

label.lrt(btex $o$ etex, z.oo);
whitelabel.top(btex $m$ etex, z.mm);
whitelabel.ulft(btex $m_1$ etex, z.mm1);
label.top(btex $n$ etex, z.nn);
endfig;

beginfig(191);
save u,v,w;
u:=1cm;
v:=.45;
w:=.7;

z.a=origin;
z.b=(3,0)*u;
z.c=(1,2)*u;
z.xx=v[z.c,z.b];
z.yy=v[z.c,z.a];
z.zz=cross.rt(circle(z.yy,z.xx-z.yy),z.a--z.b);
z.uu=z.zz+z.xx-z.yy;

z.m=w*z.yy;
z.n=w*z.zz;
z.p=w*z.uu;
z.q=w*z.xx;

draw z.a--z.b--z.c--cycle;
draw z.n--z.m--z.q--z.p;
draw z.zz--z.yy--z.xx--z.uu;
draw z.a--z.xx;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);

label.ulft(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
label.bot(btex $P$ etex, z.p);
label.rt(btex $Q$ etex, z.q+(0,-2));

label.bot(btex $u$ etex, z.uu);
label.urt(btex $x$ etex, z.xx);
label.ulft(btex $y$ etex, z.yy);
label.bot(btex $z$ etex, z.zz);
endfig;

beginfig(192);
save u;
u:=1.4cm;

z.b=origin;
z.a=(5,0)*u;
z.c=(4,3)*u;
z.d1=.35*z.a;
z.d=.4*z.c;
z.e=1.7*z.d;
z.f=2.3*z.d;

z.e1=(abs(z.e)/abs(z.d))*z.d1;
z.f1=(abs(z.f)/abs(z.d))*z.d1;

z.m=z.d+z.e1-z.d1;
z.n=z.e+z.f1-z.e1;

hatchfill z.b--z.d1--z.d--cycle  withcolor (23, 1mm, -.5bp);
hatchfill z.d--z.m--z.e--cycle  withcolor (23, 1mm, -.5bp);
hatchfill z.e--z.n--z.f--cycle  withcolor (23, 1mm, -.5bp);

arcs(z.d,z.d1,z.b,10);
arcs(z.e,z.m,z.d,10);
arcs(z.f,z.n,z.e,10);
arcs2(z.d1,z.b,z.d,10);
arcs2(z.m,z.d,z.e,10);
arcs2(z.n,z.e,z.f,10);
arcs3(z.b,z.d,z.d1,10);
arcs3(z.d,z.e,z.m,10);
arcs3(z.e,z.f,z.n,10);

draw z.a--z.b--z.c;
draw z.d--z.d1;
draw z.e--z.e1;
draw z.f--z.f1;
draw z.d--z.m;
draw z.e--z.n;

label.rt(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.ulft(btex $F$ etex, z.f);
label.bot(btex $D_1$ etex, z.d1);
label.bot(btex $E_1$ etex, z.e1);
label.bot(btex $F_1$ etex, z.f1);
label.rt(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
endfig;

beginfig(193);
save u;
u:=1cm;

z.o=origin;
z.m1=(-3.3,-2)*u;
z.n1=(2*u,y.m1);
z.m=(x.m1,.5*y.m1);
z.n=(x.n1,y.m);

z.a1=(-2.5*u,y.m1);
z.b1=(-.8*u,y.m1);
z.c1=(0*u,y.m1);
z.d1=(1.4*u,y.m1);

z.a=(y.m/y.m1)*z.a1;
z.b=(y.m/y.m1)*z.b1;
z.c=(y.m/y.m1)*z.c1;
z.d=(y.m/y.m1)*z.d1;

draw z.m--z.n;
draw z.m1--z.n1;
draw ddline(z.o,z.a1)(0,.2);
draw ddline(z.o,z.b1)(0,.2);
draw ddline(z.o,z.c1)(0,.2);
draw ddline(z.o,z.d1)(0,.2);

label.top(btex $O$ etex, z.o);

label.ulft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);

label.ulft(btex $A_1$ etex, z.a1);
label.ulft(btex $B_1$ etex, z.b1);
label.urt(btex $C_1$ etex, z.c1);
label.urt(btex $D_1$ etex, z.d1);
label.lft(btex $M_1$ etex, z.m1);
label.rt(btex $N_1$ etex, z.n1);

endfig;

beginfig(194);
save u;
u:=1cm;

z.SHIFT=(-1,0)*u;
z.shift=(0,-.6)*u;

z.a=origin;
z.d=(1.4*u,y.a);
z.e=(2.5*u,y.a);
z.b=(4*u,y.a);

z.f=(3.5,-1.5)*u;
z.c=1.2*z.f;
z.g=(x.d/x.b)*z.f;
z.h=(x.e/x.b)*z.f;

z.m2=z.a+z.SHIFT;
z.m1=(x.m2-abs(z.a-z.g),y.m2);
z.n1=z.m1+z.shift;
z.n2=(x.n1+abs(z.g-z.h),y.n1);
z.p1=z.n1+z.shift;
z.p2=(x.p1+abs(z.f-z.h),y.p1);

draw z.b--z.a--z.c;
draw z.b--z.f;
draw z.e--z.h;
draw z.d--z.g;

draw z.m1--z.m2 penbold;
kisDot(z.m1,z.m2);
kisDot(z.m2,z.m1);

draw z.n1--z.n2 penbold;
kisDot(z.n1,z.n2);
kisDot(z.n2,z.n1);

draw z.p1--z.p2 penbold;
kisDot(z.p1,z.p2);
kisDot(z.p2,z.p1);

arrowmark(z.a, z.g, btex $m$ etex, -12);
arrowmark(z.g, z.h, btex $n$ etex, -12);
arrowmark(z.h, z.f, btex $p$ etex, -12);

label.top(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);
label.urt(btex $F$ etex, z.f);
label.urt(btex $G$ etex, z.g);
label.urt(btex $H$ etex, z.h);

label.top(btex $m$ etex, .5[z.n1,z.n2]-z.shift);
label.top(btex $n$ etex, .5[z.n1,z.n2]);
label.top(btex $p$ etex, .5[z.n1,z.n2]+z.shift);
endfig;

beginfig(195);
save u;
u:=1cm;

z.SHIFT=(-1,0)*u;
z.shift=(0,-.6)*u;

z.b=origin;
z.d=(2*u,y.b);
z.e=(3.4*u,y.b);
z.a=(4*u,y.b);

z.f=(1.8,-1)*u;
z.g=(x.e/x.d)*z.f;
z.c=1.2*z.g;

z.a2=z.b+z.SHIFT;
z.a1=(x.a2-abs(z.b-z.d),y.a2);
z.b1=z.a1+z.shift;
z.b2=(x.b1+abs(z.b-z.f),y.b1);
z.c1=z.b1+z.shift;
z.c2=(x.c1+abs(z.d-z.e),y.c1);

draw z.a--z.b--z.c;
draw z.d--z.f;
draw z.e--z.g;

draw z.a1--z.a2 penbold;
kisDot(z.a1,z.a2);
kisDot(z.a2,z.a1);

draw z.b1--z.b2 penbold;
kisDot(z.b1,z.b2);
kisDot(z.b2,z.b1);

draw z.c1--z.c2 penbold;
kisDot(z.c1,z.c2);
kisDot(z.c2,z.c1);

arrowmark(z.b, z.d, btex $a$ etex, 12);
arrowmark(z.d, z.e, btex $c$ etex, 12);
arrowmark(z.b, z.f, btex $b$ etex, -12);
arrowmark(z.f, z.g, btex $x$ etex, -12);

label.rt(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
label.urt(btex $F$ etex, z.f);
label.urt(btex $G$ etex, z.g);

label.top(btex $a$ etex, .5[z.a1,z.a2]);
label.top(btex $b$ etex, .5[z.a1,z.a2]+z.shift);
label.top(btex $c$ etex, .5[z.a1,z.a2]+2*z.shift);
endfig;

beginfig(196);
save u;
u:=.6cm;

z.a=origin;
z.b=(2,2)*u;
z.c=(3,0)*u;
z.d=bisector(z.a,z.b,z.c);
z.d1=exbisector(z.a,z.b,z.c);
z.e=z.c reflectedabout(z.b,z.d1);

arcs(z.a,z.b,z.d,10);
arcs(z.a,z.e,z.c,10);
arcs2(z.c,z.b,z.d,10);
arcs2(z.b,z.c,z.e,10);

draw z.a--z.b--z.c--cycle penbold;
draw z.c--z.e--z.b--z.d;

label.bot(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
endfig;

beginfig(197);
save u;
u:=.6cm;

z.a=origin;
z.b=(3.5,2)*u;
z.c=(3,0)*u;
z.d=exbisector(z.a,z.b,z.c);
z.d1=bisector(z.a,z.b,z.c);
z.e=z.c reflectedabout(z.b,z.d1);
z.f=1.4[z.a,z.b];

arcs2(z.f,z.b,z.d,10);
arcs2(z.f,z.e,z.c,10);
arcs(z.c,z.b,z.d,10);
arcs(z.b,z.c,z.e,10);

draw z.a--z.b--z.c--cycle penbold;
draw z.f--z.b--z.d--z.c--z.e;

label.bot(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.urt(btex $F$ etex, z.f);
endfig;

beginfig(198);
save u,w;
u:=.9cm;
w:=1.4;

z.d=origin;
z.a=(0,2)*u;
z.b=z.a zscaled(0,w);
z.c=z.a zscaled(0,-1/w);

labelarcsprof(z.b, z.a, z.d, 17, 5, btex \small{$1$} etex);
labelarcsprof(z.d, z.a, z.c, 17, 5, btex \small{$2$} etex);
labelarcsprof(z.c, z.b, z.a, 17, 5, btex \small{$3$} etex);
labelarcsprof(z.a, z.c, z.b, 17, 5, btex \small{$4$} etex);

draw z.a--z.b--z.c--cycle;
draw z.a--z.d;

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
endfig;

beginfig(199);
save u,w;
u:=.7cm;
w:=.8;

z.d=origin;
z.a=(0,2)*u;
z.b=z.a zscaled(0,w);
z.c=z.a zscaled(0,-1/w);

draw z.a--z.b--z.c--cycle;
draw z.a--z.d;
draw arc(z.b,z.a,z.c);

label.top(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
endfig;


beginfig(200);
save u,w;
u:=.9cm;
w:=.7;

z.b=origin;
z.a=(-2,0)*u;
z.c=(-w*w*x.a,0);
z.d=(0,-w*x.a);

draw z.a--z.c;
draw z.b--z.d;
draw arc(z.a,z.d,z.c);

arrowmark(z.a, z.b, btex $a$ etex, -18);
arrowmark(z.b, z.c, btex $b$ etex, -18);

label.lft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
endfig;

beginfig(201);
save u,w;
u:=.9cm;
w:=.7;

z.a=origin;
z.b=(2,0)*u;
z.c=(w*w*x.b,0);
z.d=(x.c,(sqrt(1/(w*w)-1))*x.c);

draw z.a--z.b;
draw z.a--z.d;
draw z.c--z.d;
draw arc(z.a,z.d,z.b);

arrowmark(z.a, z.b, btex $a$ etex, -36);
arrowmark(z.a, z.c, btex $b$ etex, -18);

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
%label.urt(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
endfig;

beginfig(202);
save u,w;
u:=.9cm;
w:=1.4;

z.d=origin;
z.a=(0,2)*u;
z.b=z.a zscaled(0,w);
z.c=z.a zscaled(0,-1/w);

draw z.a--z.b--z.c--cycle;
draw z.a--z.d;

arrowmark(z.b, z.d, btex $c'$ etex, -18);
arrowmark(z.d, z.c, btex $b'$ etex, -18);
arrowmark(z.b, z.c, btex $a$ etex, -36);

label.top(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);

label.urt(btex $b$ etex, .5[z.a,z.c]);
label.ulft(btex $c$ etex, .5[z.b,z.a]);
label.rt(btex $h$ etex, .5[z.d,z.a]);
endfig;

beginfig(203);
save u;
u:=1cm;

z.d=origin;
z.a=(-2,0)*u;
z.b=(0,2.3)*u;
z.c=(1,0)*u;

arcs(z.c,z.a,z.b,10);

draw z.a--z.b--z.c--cycle;
draw z.b--z.d;

arrowmark(z.a, z.d, btex $c'$ etex, -18);
arrowmark(z.d, z.c, btex $a'$ etex, -18);
arrowmark(z.a, z.c, btex $b$ etex, -36);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);

label.urt(btex $a$ etex, .5[z.b,z.c]);
label.ulft(btex $c$ etex, .5[z.b,z.a]);
label.rt(btex $h$ etex, .5[z.b,z.d]);
endfig;

beginfig(204);
save u;
u:=1cm;

z.a=(-2,0)*u;
z.b=(1,2.3)*u;
z.c=(0,0)*u;
z.d=altitude(z.c,z.b,z.a);

arcs(z.c,z.a,z.b,10);

draw z.a--z.b--z.d--cycle;
draw z.b--z.c;

arrowmark(z.a, z.d, btex $c'$ etex, -36);
arrowmark(z.c,z.d,  btex $a'$ etex, -18);
arrowmark(z.a, z.c, btex $b$ etex, -18);

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);

label.ulft(btex $a$ etex, .5[z.b,z.c]);
label.ulft(btex $c$ etex, .5[z.b,z.a]);
label.rt(btex $h$ etex, .5[z.b,z.d]);
endfig;

beginfig(205);
save u;
u:=1cm;

z.a=(2,0)*u;
z.b=(-1,2.3)*u;
z.c=(0,0)*u;
z.d=altitude(z.c,z.b,z.a);

arcs(z.a,z.c,z.b,10);

draw z.a--z.b--z.d--cycle;
draw z.b--z.c;

arrowmark( z.d,z.a, btex $c'$ etex, -36);
arrowmark(z.d,z.c,  btex $a'$ etex, -18);
arrowmark( z.c,z.a, btex $b$ etex, -18);

label.rt(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c+(-3,0));
label.lft(btex $D$ etex, z.d);

label.lft(btex $a$ etex, .5[z.b,z.c]);
label.urt(btex $c$ etex, .5[z.b,z.a]);
label.lft(btex $h$ etex, .5[z.b,z.d]);
endfig;

beginfig(206);
save u;
u:=1cm;

z.a=origin;
z.b=(1,2)*u;
z.d=(3,0)*u;
z.c=z.d+z.b;
z.h=.5*z.c;
z.f=altitude(z.a,z.c,z.d);
z.e=altitude(z.a,z.b,z.d);

hatchfill z.a--z.b--z.d--cycle  withcolor (43, 1mm, -.5bp);
hatchfill z.a--z.c--z.d--cycle  withcolor (0, 1mm, -.5bp);

arcs(z.d,z.a,z.b,10);
arcs(z.c,z.d,z.f,10);

draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.b--z.e--z.f--z.c;
draw z.b--z.d;
draw z.a--z.c;

label.llft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.lrt(btex $F$ etex, z.f);
label.top(btex $H$ etex, z.h+(2,0));

endfig;

beginfig(207);
save u;
u:=1cm;

z.d=origin;
z.b=(-1,0)*u;
z.a=(0,2.3)*u;
z.c=(2,0)*u;

arcs(z.c,z.b,z.a,10);

draw z.b--z.a--z.c--cycle;
draw z.a--z.d;

arrowmark(z.b, z.d, btex $c'$ etex, -18);
arrowmark(z.d, z.c, btex $b'$ etex, -18);
arrowmark(z.b, z.c, btex $a$ etex, -36);

label.top(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);

label.urt(btex $b$ etex, .5[z.a,z.c]);
label.ulft(btex $c$ etex, .5[z.a,z.b]);
label.rt(btex $h_a$ etex, .5[z.a,z.d]);
endfig;

beginfig(208);
save u;
u:=1cm;

z.b=(-2,0)*u;
z.a=(1,2.3)*u;
z.c=(0,0)*u;
z.d=altitude(z.c,z.a,z.b);

arcs(z.c,z.b,z.a,10);

draw z.b--z.a--z.d--cycle;
draw z.a--z.c;

arrowmark(z.b, z.d, btex $c'$ etex, -36);
arrowmark(z.c,z.d,  btex $b'$ etex, -18);
arrowmark(z.b, z.c, btex $a$ etex, -18);

label.top(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);

label.ulft(btex $b$ etex, .5[z.a,z.c]);
label.ulft(btex $c$ etex, .5[z.a,z.b]);
label.rt(btex $h_a$ etex, .5[z.a,z.d]);
endfig;

beginfig(209);
save u;
u:=.5cm;

z.o=origin;
z.m=(.5,.5)*u;
z.c=5*z.m;
z.d=-z.c;
z.a=z.c rotated 60;
z.e=z.a rotated 30;
z.k=z.e rotated 30;

z.b=secondpoint(z.a, z.m, z.o);
z.f=secondpoint(z.e, z.m, z.o);
z.l=secondpoint(z.k, z.m, z.o);

hatchfill z.a--z.b--z.d--z.c--cycle  withcolor (87, 1mm, -.5bp);

arcs(z.b,z.d,z.c,10);
arcs(z.b,z.a,z.c,10);
arcs2(z.a,z.c,z.d,10);
arcs2(z.a,z.b,z.d,10);

draw circle(z.o,z.c-z.o);
draw z.a--z.b--z.d--z.c--cycle penbold;
draw z.e--z.f;
draw z.k--z.l;

dOt z.o,z.m;

label.ulft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.llft(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.lrt(btex $F$ etex, z.f);
label.lft(btex $K$ etex, z.k);
label.rt(btex $L$ etex, z.l);
whitelabel.rt(btex $M$ etex, z.m+(1,0));
label.lft(btex $O$ etex, z.o);

endfig;

beginfig(210);
save u;
u:=1cm;

z.o=origin;
z.c=(x.o,2*u);
z.m=(-4*u,y.c);
z.a=z.c rotated -90;
z.d= -unitvector(z.m)*abs(z.c);
z.e=z.d rotated -50;

z.b=secondpoint(z.a, z.m, z.o);
z.f=secondpoint(z.e, z.m, z.o);
z.h=secondpoint(z.d, z.m, z.o);

hatchfill z.m--z.b--z.c--cycle  withcolor (100, 1mm, -.5bp);
hatchfill z.m--z.a--z.c--cycle  withcolor (30, 1mm, -.5bp);

draw circle(z.o,z.c) penbold;

arcs(z.b,z.a,z.c,10);
arcs(z.b,z.c,z.m,10);

draw circle(z.o,z.c) penhair;

draw z.m--z.c;
draw z.m--z.a;
draw z.m--z.d;
draw z.m--z.e;
draw z.b--z.c--z.a;

dOt z.a,z.b,z.c,z.d,z.e,z.f,z.h,z.m,z.o;

label.rt(btex $A$ etex, z.a);
whitelabel.lft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
%label.lft(btex $F$ etex, z.f);
%label.lft(btex $K$ etex, z.k);
%label.rt(btex $L$ etex, z.l);
label.lft(btex $M$ etex, z.m+(1,0));
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(211);
save u;
u:=1.1cm;

z.b=origin;
z.a=(3.5,0)*u;
z.c=z.a rotated 45;
z.m=unitvector(z.c)*u;
z.m1=1.6*z.m;
z.m2=2.7*z.m;
z.m11=unitvector(z.a)*3u;

z.n=altitude(z.b,z.m,z.a);
z.n1=altitude(z.b,z.m1,z.a);
z.n2=altitude(z.b,z.m2,z.a);
z.n11=altitude(z.b,z.m11,z.c);

labelarcsprof(z.a, z.b, z.c, 16, 3, btex $\alpha$ etex);

draw z.a--z.b--z.c;
draw z.m--z.n;
draw z.m1--z.n1;
draw z.m2--z.n2;
draw z.m11--z.n11;

label.rt(btex $A$ etex, z.a);
label.llft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);

label.ulft(btex $M$ etex, z.m);
label.ulft(btex $M'$ etex, z.m1);
label.ulft(btex $M''$ etex, z.m2);
label.bot(btex $M_1$ etex, z.m11);
label.bot(btex $N$ etex, z.n);
label.bot(btex $N'$ etex, z.n1);
label.bot(btex $N''$ etex, z.n2);
label.ulft(btex $N_1$ etex, z.n11);
endfig;

beginfig(212);
save u;
u:=1cm;

z.o=origin;
z.a=(-2,0)*u;
z.b=-z.a;
z.c=cross.top(circle(z.o,z.a),circle(z.b,1.5*z.b));

arcs(z.b,z.a,z.c,10);

draw arc(z.a,z.c,z.b);
draw z.a--z.b--z.c--cycle;
draw ddarc(.5*z.a,(.5*z.a) rotatedabout(z.b, -1),z.c)(0,10);

kisDot(.5*z.a,z.a);
kisDot(0*z.a,z.a);
kisDot(-.5*z.a,z.a);

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
endfig;

beginfig(213);
save u;
u:=1cm;

z.a=origin;
z.b=(-2,0)*u;
z.c=(0,3)*u;

labelarcsprof(z.a, z.b, z.c, 16, 3, btex $x$ etex);
draw z.a--z.b--z.c--cycle;

kisDot(.5*z.b,z.a);
kisDot((1/3)*z.c,z.a);
kisDot((2/3)*z.c,z.a);

label.rt(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
endfig;

beginfig(214);
save u,k;
u:=1cm;
k=1.3;

z.o=origin;
z.a=(2,0)*u;
z.m=z.a zscaled(0,1);
z.b=z.a rotated 25;
z.b1=z.a rotated 45;
z.b2=z.a rotated 65;

z.c=altitude(z.o,z.b,z.a);
z.c1=altitude(z.o,z.b1,z.a);
z.c2=altitude(z.o,z.b2,z.a);

labelarcsprof(z.a, z.o, z.b, 18, 8, btex $\alpha$ etex);

draw ddarc(z.a,z.b,z.m)(10,10);
draw z.a--z.o--z.m;
draw z.o--z.b--z.c;
draw z.o--z.b1--z.c1;
draw z.o--z.b2--z.c2;
drawarrow k*z.b..k*z.b1..k*z.b2;

label.rt(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.urt(btex $B'$ etex, z.b1);
label.bot(btex $C'$ etex, z.c1);
label.top(btex $B''$ etex, z.b2);
label.bot(btex $C''$ etex, z.c2);
label.top(btex $M$ etex, z.m);
label.llft(btex $O$ etex, z.o);
endfig;

beginfig(215);
save u,k;
u:=1cm;
k=1.3;

z.o=origin;
z.a=(2,0)*u;
z.m=z.a zscaled(0,1.7);
z.n=z.a+z.m;
z.b=(x.a,1*u);
z.b1=(x.a,1.8*u);
z.b2=(x.a,3*u);

labelarcsprof(z.a, z.o, z.b, 18, 8, btex $\alpha$ etex);

draw z.n--z.a--z.o--z.m;
draw z.o--z.b;
draw z.o--z.b1;
draw z.o--z.b2;

label.lrt(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.rt(btex $B'$ etex, z.b1);
label.rt(btex $B''$ etex, z.b2);
label.top(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);
label.llft(btex $O$ etex, z.o);

endfig;

beginfig(216);
save u;
u:=.8cm;

z.a=origin;
z.b=(-2,0)*u;
z.c=(0,3)*u;

labelarcsprof(z.a, z.b, z.c, 16, 3, btex etex);
draw z.a--z.b--z.c--cycle;

label.rt(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.rt(btex $b$ etex, .5[z.a,z.c]);
label.bot(btex $c$ etex, .5[z.b,z.a]);
label.ulft(btex $a$ etex, .5[z.c,z.b]);
endfig;

beginfig(217);
save u;
u:=1.8cm;

z.b=origin;
z.c=(-1,0)*u;
z.a=2*z.c;
z.d=z.c zscaled(0,-1);
z.e=z.d+abs(z.c)*unitvector(z.a-z.d);
z.g=z.a+(abs(z.a-z.e),0);

draw z.a--z.b--z.d--cycle;
kisDot(z.c,z.b);

draw ddarc(z.b,z.b rotatedabout(z.d,-1),z.e)(0,20);
draw ddarc(z.e,z.e rotatedabout(z.a,-1),z.g)(0,10);

label.bot(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
whitelabel.top(btex $E$ etex, z.e);
label.lrt(btex $G$ etex, z.g);
endfig;

beginfig(218);
save u,v;
u:=.9cm;

z.s1=(1,0)*u;
z.s2=(1,0)*u;
z.S1=(1.3,0)*u;
z.S2=(2,0)*u;
z.S3=(2,0)*u;

z.a=origin;
z.b=z.a+(z.S1 rotated 67.5);
z.c=z.b+(z.S1 rotated 22.5);
z.d=z.c+(z.S1 rotated -22.5);
z.e=z.d+(z.S1 rotated -67.5);

z.m=z.e+z.s1;
z.n=z.m+(z.S2 rotated 67.5);
z.p=z.n+(z.S2 rotated -67.5);
z.q=z.p+(z.S2 rotated 67.5);
z.r=z.q+(z.S2 rotated -67.5);

z.f=z.r+z.s2;
z.g=z.f+(z.S3 rotated 72);
z.h=z.g+(z.S3 rotated -72);
z.k=z.h+(z.S3 rotated 144);
z.l=z.k+z.S3;

arcs(z.a,z.b,z.c,10);
arcs(z.b,z.c,z.d,10);
arcs(z.c,z.d,z.e,10);
arcs(z.f,z.g,z.h,10);
arcs(z.g,z.h,z.k,10);
arcs(z.h,z.k,z.l,10);
arcs(z.m,z.n,z.p,10);
arcs(z.n,z.p,z.q,10);
arcs(z.p,z.q,z.r,10);

draw z.a--z.b--z.c--z.d--z.e penbold;
draw z.m--z.n--z.p--z.q--z.r penbold;
draw z.f--z.g--z.h--z.k--z.l penbold;

label.bot(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.bot(btex $F$ etex, z.f);
label.top(btex $G$ etex, z.g);
label.bot(btex $H$ etex, z.h);
label.lft(btex $K$ etex, z.k);
label.rt(btex $L$ etex, z.l);
label.bot(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);
label.bot(btex $P$ etex, z.p);
label.top(btex $Q$ etex, z.q);
label.bot(btex $R$ etex, z.r);
endfig;

beginfig(219);
save u,v;
u:=1cm;

z.shift=(-3,0)*u;
z.S=(2,0)*u;

z.f=origin;
z.g=z.f+(z.S rotated 72);
z.h=z.g+(z.S rotated -72);
z.k=z.h+(z.S rotated 144);
z.l=z.k+z.S;

z.a=z.f+z.shift;
z.b=z.k+z.shift;
z.c=z.g+z.shift;
z.d=z.l+z.shift;
z.e=z.h+z.shift;

draw z.a--z.b--z.c--z.d--z.e--cycle penbold;
draw z.f--z.g--z.h--z.k--z.l--cycle penbold;

label(btex \textit{б} etex, z.S zscaled (.6,.9));
label(btex \textit{а} etex, (z.S zscaled (.6,.9)) + z.shift);
endfig;

beginfig(220);
save u,v;
u:=.7cm;

z.o=origin;

z.p=(2,0)*u;
z.q=z.p rotated -60;
z.r=z.q rotated -60;
z.s=z.r rotated -60;
z.m=z.s rotated -60;
z.n=z.m rotated -60;

z.a=.5[z.s,z.m];
z.b=.5[z.n,z.m];
z.c=.5[z.n,z.p];
z.d=.5[z.q,z.p];
z.e=.5[z.q,z.r];
z.f=.5[z.s,z.r];

draw circle(z.o,z.a);
draw z.a--z.b--z.c--z.d--z.e--z.f--cycle;
draw z.m--z.n--z.p--z.q--z.r--z.s--cycle;
dOt z.o;

label.ulft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.llft(btex $F$ etex, z.f);
label.ulft(btex $M$ etex, z.m);
label.urt(btex $N$ etex, z.n);
label.lft(btex $O$ etex, z.o);
label.rt(btex $P$ etex, z.p);
label.lrt(btex $Q$ etex, z.q);
label.llft(btex $R$ etex, z.r);
label.lft(btex $S$ etex, z.s);
endfig;

beginfig(221);
save u,v;
u:=.7cm;

z.o=origin;

z.p=(2,0)*u;
z.q=z.p rotated -60;
z.r=z.q rotated -60;
z.s=z.r rotated -60;
z.m=z.s rotated -60;
z.n=z.m rotated -60;

z.a=.5[z.s,z.m];
z.b=.5[z.n,z.m];
z.c=.5[z.n,z.p];
z.d=.5[z.q,z.p];
z.e=.5[z.q,z.r];
z.f=.5[z.s,z.r];

z.a1=z.m rotated 30;
z.b1=z.n rotated 30;
z.c1=z.p rotated 30;
z.d1=z.q rotated 30;
z.e1=z.r rotated 30;
z.f1=z.s rotated 30;

z.m1=z.a rotated -30;
z.n1=z.b rotated -30;
z.p1=z.c rotated -30;
z.q1=z.d rotated -30;
z.r1=z.e rotated -30;
z.s1=z.f rotated -30;

draw circle(z.o,z.a);
draw z.a--z.b--z.c--z.d--z.e--z.f--cycle;
draw z.a1--z.b1--z.c1--z.d1--z.e1--z.f1--cycle;
draw z.a1--z.d1;
draw z.b1--z.e1;
draw z.c1--z.f1;
draw z.m1--z.q1;
draw z.n1--z.r1;
draw z.p1--z.s1;

dOt z.o;

whitelabel.lrt(btex $A$ etex, z.a);
whitelabel.bot(btex $B$ etex, z.b+(0,-1));
whitelabel.llft(btex $C$ etex, z.c);
whitelabel.ulft(btex $D$ etex, z.d);
whitelabel.top(btex $E$ etex, z.e);
whitelabel.urt(btex $F$ etex, z.f);

label.ulft(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.urt(btex $C_1$ etex, z.c1);
label.lrt(btex $D_1$ etex, z.d1);
label.bot(btex $E_1$ etex, z.e1);
label.llft(btex $F_1$ etex, z.f1);

label.ulft(btex $M$ etex, z.m1);
label.urt(btex $N$ etex, z.n1);
label.rt(btex $P$ etex, z.p1);
label.lrt(btex $Q$ etex, z.q1);
label.llft(btex $R$ etex, z.r1);
label.lft(btex $S$ etex, z.s1);

whitelabel.ulft(btex $O$ etex, z.o);
endfig;

beginfig(222);
save u,v;
u:=.7cm;

z.o=origin;

z.e=(0,2)*u;
z.a=z.e rotated 72;
z.b=z.a rotated 72;
z.c=z.b rotated 72;
z.d=z.c rotated 72;

z.k=.5[z.b,z.c];
z.m=.5[z.a,z.e];
z.n=.5[z.d,z.e];

draw circle(z.o,z.a);
draw circle(z.o,z.m);

draw z.a--z.b--z.c--z.d--z.e--cycle;
draw z.a--z.o--z.n;
draw z.d--z.o--z.m;
draw z.o--z.k;

label.lft(btex $A$ etex, z.a);
label.llft(btex $B$ etex, z.b+(0,-1));
label.lrt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);

whitelabel.bot(btex $K$ etex, z.k);
whitelabel.ulft(btex $M$ etex, z.m);
whitelabel.urt(btex $N$ etex, z.n);

label.bot(btex $O$ etex, z.o);
endfig;

beginfig(223);
save u,k;
u:=.7cm;
k:=.7;

z.S=(5.5,0)*u;

z.o=origin;

z.f=(-2,0)*u;
z.a=z.f rotated 60;
z.b=z.a rotated 60;
z.c=z.b rotated 60;
z.d=z.c rotated 60;
z.e=z.d rotated 60;
z.m=.5[z.a,z.b];

z.a1=k*z.a+z.S;
z.b1=k*z.b+z.S;
z.c1=k*z.c+z.S;
z.d1=k*z.d+z.S;
z.e1=k*z.e+z.S;
z.f1=k*z.f+z.S;
z.m1=k*z.m+z.S;
z.o1=k*z.o+z.S;

draw z.a--z.b--z.c--z.d--z.e--z.f--cycle;
draw z.a--z.o--z.b;
draw z.o--z.m;

draw z.a1--z.b1--z.c1--z.d1--z.e1--z.f1--cycle;
draw z.a1--z.o1--z.b1;
draw z.o1--z.m1;

dOt z.o,z.o1;

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b+(0,-1));
label.rt(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.lft(btex $F$ etex, z.f);
label.bot(btex $M$ etex, z.m);
label.top(btex $O$ etex, z.o);

label.llft(btex $A_1$ etex, z.a1);
label.lrt(btex $B_1$ etex, z.b1);
label.rt(btex $C_1$ etex, z.c1);
label.urt(btex $D_1$ etex, z.d1);
label.ulft(btex $E_1$ etex, z.e1);
label.llft(btex $F_1$ etex, z.f1);
label.bot(btex $M_1$ etex, z.m1);
label.top(btex $O_1$ etex, z.o1);
endfig;

beginfig(224);
save u,k;
u:=.7cm;

z.o=origin;
z.d=(0,-2)*u;
z.a=z.d rotated -90;
z.b=z.a rotated -90;
z.c=z.b rotated -90;

draw circle(z.o,z.d);
draw z.a--z.b--z.c--z.d--cycle;
draw z.a--z.c;
draw z.b--z.d;

dOt z.o;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.urt(btex $O$ etex, z.o);
endfig;

beginfig(225);
save u,k;
u:=.7cm;

z.o=origin;
z.f=(-2,0)*u;
z.a=z.f rotated 60;
z.b=z.a rotated 60;
z.c=z.b rotated 60;
z.d=z.c rotated 60;
z.e=z.d rotated 60;

draw circle(z.o,z.f);

draw z.o--z.a--z.b--cycle;;

kisDotAng(z.c, z.o, 0);
kisDotAng(z.d, z.o, 0);
kisDotAng(z.e, z.o, 0);
kisDotAng(z.f, z.o, 0);

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.top(btex $O$ etex, z.o);
label.bot(btex $60\degree$ etex, z.o+(0,-9));
endfig;

beginfig(226);
save u,k;
u:=.7cm;

z.o=origin;
z.d=(0,-2)*u;
z.a=z.d rotated -60;
z.b=z.a rotated -120;
z.c=z.b rotated -120;
z.ab=z.a rotated -60;
z.bc=z.b rotated -60;

draw circle(z.o,z.d);

draw z.c--z.a--z.b--cycle;
draw z.b--z.d--z.a;

kisDotAng(z.ab, z.o, 0);
kisDotAng(z.bc, z.o, 0);

dOt z.o;

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.rt(btex $O$ etex, z.o);
endfig;

beginfig(227);
save u,k;
u:=1cm;

z.o=origin;
z.t=(0,2)*u;
z.a=z.t rotated 18;
z.b=z.t rotated -18;
z.c=(sqrt(5)-1)*.5*z.b;

arcs(z.b,z.o,z.a,9);
arcs(z.o,z.a,z.c,9);
arcs(z.b,z.a,z.c,7);
arcs2(z.c,z.b,z.a,8);
arcs2(z.b,z.c,z.a,8);

draw circle(z.o,z.a);
draw z.o--z.a--z.b--cycle;
draw z.a--z.c;

label.ulft(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(228);
save u;
u:=1cm;

z.o=origin;
z.a=(-2,0)*u;
z.a1=z.a rotated (1*36);
z.a2=z.a rotated (2*36);
z.a3=z.a rotated (3*36);
z.a4=z.a rotated (4*36);
z.a5=z.a rotated (5*36);
z.a6=z.a rotated (6*36);
z.a7=z.a rotated (7*36);
z.a8=z.a rotated (8*36);
z.a9=z.a rotated (9*36);

z.k=z.a zscaled (0,-.5);
z.ak=z.a+abs(z.a1-z.a)*unitvector(z.k-z.a);

draw circle(z.o,z.a);
draw circle(z.k,z.ak-z.k);
draw z.a9..z.ak..z.a1;
draw z.a--z.a1--z.a2--z.a3--z.a4--z.a5--z.a6--z.a7--z.a8--z.a9--cycle;
draw z.a--z.a5;
draw (z.a rotated 90)--(z.a rotated -90);

dOt z.o;

label.lft(btex $A$ etex, z.a);
label.lrt(btex $O$ etex, z.o);
endfig;

beginfig(229);
save u;
u:=.7cm;

z.o=origin;
z.a=(0,2)*u;
z.a1=z.a rotated (1*36);
z.a2=z.a rotated (2*36);
z.a3=z.a rotated (3*36);
z.a4=z.a rotated (4*36);
z.a5=z.a rotated (5*36);
z.a6=z.a rotated (6*36);
z.a7=z.a rotated (7*36);
z.a8=z.a rotated (8*36);
z.a9=z.a rotated (9*36);


draw circle(z.o,z.a);
draw z.a--z.a4--z.a8--z.a2--z.a6--cycle penbold;

kisDotAng(z.a1, z.o, 0);
kisDotAng(z.a3, z.o, 0);
kisDotAng(z.a5, z.o, 0);
kisDotAng(z.a7, z.o, 0);
kisDotAng(z.a9, z.o, 0);
endfig;

beginfig(230);
save u;
u:=1cm;

z.o=origin;
z.c=(0,2)*u;
z.a=z.c rotated 36;
z.b=z.a reflectedabout(z.o,z.c);
z.d=altitude(z.o,z.a,z.c);

draw ddarc(z.a,z.c,z.b)(50,50);
draw z.b--z.a--z.c--z.o--z.a;

dOt z.o;

label.ulft(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.rt(btex $O$ etex, z.o);
endfig;

beginfig(231);
save u;
u:=1cm;

z.a=origin;
z.e=(.5,2)*u;
z.f=(2,1.5)*u;
z.g=(3,2)*u;
z.d=(3.5,0)*u;

z.h=.6[z.e,z.f];
z.k=.5[z.g,z.d];
z.b=.6[z.a,z.h];
z.c=.7[z.b,z.k];

draw z.a--z.e--z.f--z.g--z.d--cycle;
draw z.a--z.h;
draw z.b--z.k;
draw z.c--z.d;

dOt z.a,z.d;

label.lft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.ulft(btex $E$ etex, z.e);
label.top(btex $F$ etex, z.f);
label.top(btex $G$ etex, z.g);
label.urt(btex $H$ etex, z.h);
label.rt(btex $K$ etex, z.k);

endfig;

beginfig(232);
save u;
u:=1cm;

z.a=origin;
z.e=(.5,2)*u;
z.f=(2,1.5)*u;
z.g=(3,2)*u;
z.d=(3.5,0)*u;

z.b1=(1,1.5)*u;
z.b2=(1.5,.5)*u;
z.b3=(1.6,1.5)*u;
z.b4=(2,.5)*u;
z.b5=(2.5,1.5)*u;

draw z.a--z.e--z.f--z.g--z.d--cycle;
draw z.a--z.b1--z.b2--z.b3--z.b4--z.b5--z.d;

dOt z.a,z.d;

endfig;

beginfig(233);
save u;
u:=.8cm;

z.l=origin;
z.m=(0,2)*u;
z.n=(1,2.5)*u;
z.p=(2,2.3)*u;
z.q=(3,3)*u;
z.r=(2.5,0)*u;

z.s=.4[z.l,z.r];
z.t=.7[z.l,z.m];
z.a=.3[z.t,z.s];
z.d=.7[z.t,z.s];
z.b=(1.2,1.7)*u;
z.c=(2.3,1.4)*u;

draw z.l--z.m--z.n--z.p--z.q--z.r--cycle;
draw z.t--z.s;
draw z.a--z.b--z.c--z.d;

label.llft(btex $A$ etex, z.a+(2,1));
label.top(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.llft(btex $D$ etex, z.d);

label.llft(btex $L$ etex, z.l);
label.ulft(btex $M$ etex, z.m);
label.top(btex $N$ etex, z.n);
label.top(btex $P$ etex, z.p);
label.rt(btex $Q$ etex, z.q);
label.lrt(btex $R$ etex, z.r);

label.bot(btex $S$ etex, z.s);
label.lft(btex $T$ etex, z.t);
endfig;

beginfig(234);
save u;
u:=.65cm;

z.o=origin;
z.a=(-2,0)*u;
z.a1=z.a rotated 60;
z.a2=z.a1 rotated 60;
z.a3=z.a2 rotated 60;
z.a4=z.a3 rotated 60;
z.a5=z.a4 rotated 60;

z.b1=z.a1 rotated -30;
z.b2=z.a2 rotated -30;
z.b3=z.a3 rotated -30;
z.b4=z.a4 rotated -30;
z.b5=z.a5 rotated -30;
z.b6=z.a rotated -30;

draw circle(z.o,z.a);

draw z.a--z.a1--z.a2--z.a3--z.a4--z.a5--cycle;
draw z.a--z.b1--z.a1--z.b2--z.a2--z.b3--z.a3--z.b4--z.a4--z.b5--z.a5--z.b6--cycle penhair;
%draw z.a--z.a3;
%draw z.a1--z.a4;
%draw z.a2--z.a5;
endfig;

beginfig(235);
save u;
u:=.65cm;

z.o=origin;
z.a=(2,0)*u;
z.a6=z.a rotated 60;
z.a12=z.a rotated 30;
z.a24=z.a rotated 15;

z.p1=z.o+(6*abs(z.a-z.a6),0);
z.p2=z.o+(12*abs(z.a-z.a12),0);
z.p3=z.o+(24*abs(z.a-z.a24),0);
z.x=2*3.1415926535*z.a;

z.m=(-.1)[z.o,z.x];
z.n=(1.1)[z.o,z.x];

draw z.m--z.n;
kisDot(z.o,z.p1);
kisDot(z.p1,z.o);
kisDot(z.p2,z.o);
%kisDot(z.p3,z.o);
kisDot(z.x,z.o);

label.bot(btex $P_1$ etex, z.p1+(-3,0));
label.bot(btex $P_2$ etex, z.p2+(-1,0));
%label.bot(btex $P_3$ etex, z.p3);
label.top(btex $x$ etex, z.x+(2,0));

label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(236);
save u,k;
u:=1cm;
k:=55;

z.o=origin;
z.c=(0,2)*u;

z.a=z.c rotated k;
z.d=z.c rotated (.5*k);
z.e=z.c rotated (-.5*k);
z.b=z.c rotated (-k);

draw arc(z.a,z.c,z.b);
draw z.a--z.d--z.c--z.e--z.b penhair;
draw z.a--z.c--z.b--cycle;

dOt z.a,z.b;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);
endfig;

beginfig(237);
save u,k;
u:=1cm;
k:=55;

z.o=origin;
z.r=(0,2)*u;

z.a=z.r rotated k;
z.b=z.r rotated (-k);
z.m=z.r rotated (k/5);
z.n=z.r rotated (-k/3);

z.c1=.5[z.a,z.m];
z.c=(abs(z.r)**2/(abs(z.c1)**2))*z.c1;

z.d1=.5[z.n,z.m];
z.d=(abs(z.r)**2/(abs(z.d1)**2))*z.d1;

z.e1=.5[z.n,z.b];
z.e=(abs(z.r)**2/(abs(z.e1)**2))*z.e1;

draw arc(z.a,z.r,z.b);
draw z.a--z.c--z.d--z.e--z.b;

dOt z.a,z.b;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.ulft(btex $C$ etex, z.c);
label.top(btex $D$ etex, z.d);
label.urt(btex $E$ etex, z.e);
endfig;

beginfig(238);
save u,k;
u:=1cm;
k:=55;

z.o=origin;
z.r=(0,2)*u;

z.a=z.r rotated k;
z.b=z.r rotated (-k);

z.c1=.5[z.a,z.b];
z.c=(abs(z.r)**2/(abs(z.c1)**2))*z.c1;

z.m=.3[z.c,z.a];
z.n=.3[z.c,z.b];

draw arc(z.a,z.r,z.b);
draw z.a--z.c--z.b;
draw z.m--z.n;

dOt z.a,z.b;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.ulft(btex $m$ etex, z.m);
label.urt(btex $n$ etex, z.n);
endfig;

beginfig(239);
save u;
u:=1cm;

z1=(0,0)*u;
z2=(1,0)*u;
z3=(2.3,0)*u;
z4=(3.5,0)*u;
z5=(3.5,1)*u;
z56=.4[z5,z6];
z6=(2,2)*u;
z7=(.5,1.5)*u;

draw z1--z2--z3--z4--z5--z6--z7--cycle;
draw z2--z7;
draw z3--z56;

label(btex $M$ etex, (1/3)*(z1+z2+z7));
label(btex $N$ etex, (z2+z3+z56+z6+z7)/5);
label(btex $P$ etex, (z3+z4+z5+z56)/4);
endfig;

beginfig(240);
save u;
u:=1cm;

z.shift=(1,0)*u;

z.a1=origin;
z.a2=(1,0)*u;
z.a4=z.a2 zscaled (0,2);
z.a3=z.a2+z.a4;

z.b1=z.a2+0.7*z.shift;
z.b2=z.b1+z.a2-z.a1;
z.b3=z.b1+z.a3-z.a1;
z.b4=z.b2+z.b3-z.b1;

z.c1=z.b2+z.shift;
z.c2=z.c1+z.a2-z.a1;
z.c3=z.c1+z.a3-z.a1;
z.c4=2*z.c2-z.c1;

draw z.a1--z.a2--z.a3--z.a4--cycle;
draw z.a2--z.a4;

draw z.b1--z.b2--z.b4--z.b3--cycle;
draw z.b2--z.b3;

draw z.c1--z.c4--z.c3--cycle;
draw z.c2--z.c3;

label(btex $A$ etex, (1/3)*(z.a1+z.a2+z.a4));
label(btex $B$ etex, (1/3)*(z.a2+z.a3+z.a4));

label(btex $A$ etex, (1/3)*(z.b1+z.b2+z.b3));
label(btex $B$ etex, (1/3)*(z.b2+z.b3+z.b4));

label(btex $A$ etex, (1/3)*(z.c1+z.c2+z.c3));
label(btex $B$ etex, (1/3)*(z.c2+z.c3+z.c4));
endfig;

beginfig(241);
save u;
u:=.4cm;

draw (0,0)*u--(12,0)*u--(12,5)*u--(9,5)*u--(9,3)*u--(4,3)*u--(4,6)*u--(0,6)*u--cycle penbold;

draw (0,1)*u--(12,1)*u penhair;
draw (0,2)*u--(12,2)*u penhair;
draw (0,3)*u--(4,3)*u penhair;
draw (0,4)*u--(4,4)*u penhair;
draw (0,5)*u--(4,5)*u penhair;

draw (9,3)*u--(12,3)*u penhair;
draw (9,4)*u--(12,4)*u penhair;

draw (1,0)*u--(1,6)*u penhair;
draw (2,0)*u--(2,6)*u penhair;
draw (3,0)*u--(3,6)*u penhair;
draw (4,0)*u--(4,3)*u penhair;
draw (4,0)*u--(4,3)*u penhair;
draw (5,0)*u--(5,3)*u penhair;
draw (6,0)*u--(6,3)*u penhair;
draw (7,0)*u--(7,3)*u penhair;
draw (8,0)*u--(8,3)*u penhair;
draw (9,0)*u--(9,3)*u penhair;
draw (10,0)*u--(10,5)*u penhair;
draw (11,0)*u--(11,5)*u penhair;
endfig;

beginfig(242);
save u;
u:=.45cm;

draw (0,0)*u--(5,0)*u--(5,6)*u--(0,6)*u--cycle penbold;

draw (0,1)*u--(5,1)*u penhair;
draw (0,2)*u--(5,2)*u penhair;
draw (0,3)*u--(5,3)*u penhair;
draw (0,4)*u--(5,4)*u penhair;
draw (0,5)*u--(5,5)*u penhair;

draw (1,0)*u--(1,6)*u penhair;
draw (2,0)*u--(2,6)*u penhair;
draw (3,0)*u--(3,6)*u penhair;
draw (4,0)*u--(4,6)*u penhair;

hatchfill (1,1)*u--(2,1)*u--(2,2)*u--(1,2)*u--cycle  withcolor (50, .7mm, -.5bp);

whitelabel(btex $K$ etex, (1.5,1.4)*u);

label.lft(btex $h$ etex, (0,3)*u);
label.bot(btex $b$ etex, (2.5,0)*u);
endfig;

beginfig(243);
save u;
u:=.7cm;

z.a=origin;
z.b=(3.3,0)*u;
z.b1=(3,0)*u;
z.b2=(4,0)*u;

z.d=(0,4.6)*u;
z.d1=(0,4)*u;
z.d2=(0,5)*u;

z.c=(x.b,y.d);
z.c1=(x.b1,y.d1);
z.c2=(x.b2,y.d2);

arrowmark(z.a, z.b, btex $\alpha$ etex, (-30));
arrowmark(z.a, z.d, btex $\beta$ etex, 30);

draw z.a--z.b1--z.c1--z.d1--cycle;
draw z.a--z.b2--z.c2--z.d2--cycle;
draw z.a--z.b--z.c--z.d--cycle penbold;

kisDot((1,0)*u,z.a);
kisDot((2,0)*u,z.a);
kisDot((3,0)*u,z.a);
kisDot((0,1)*u,z.a);
kisDot((0,2)*u,z.a);
kisDot((0,3)*u,z.a);
kisDot((0,4)*u,z.a);

label.llft(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);

label.ulft(btex $B_1$ etex, z.b1);
label.llft(btex $C_1$ etex, z.c1);
label.lrt(btex $D_1$ etex, z.d1);

label.rt(btex $B_2$ etex, z.b2);
label.urt(btex $C_2$ etex, z.c2);
label.top(btex $D_2$ etex, z.d2);

endfig;

beginfig(244);
save u;
u:=1cm;

z.a=origin;
z.d=(2,0)*u;
z.e=(0,2.5)*u;
z.f=z.d+z.e;

arrowmark(z.a, z.d, btex $b$ etex, -15);
arrowmark(z.a, z.e, btex $h$ etex, 15);

z.b=(2.5*u,y.e);
z.c=z.b+z.d;

hatchfill z.a--z.b--z.c--z.d--cycle  withcolor (50, 1mm, -.5bp);
hatchfill z.a--z.e--z.f--z.d--cycle  withcolor (140, 1mm, -.5bp);

draw z.a--z.b--z.c--z.d--cycle;
draw z.a--z.e--z.f--z.d--cycle;
draw z.f--z.b penhair;

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.top(btex $F$ etex, z.f);
endfig;

beginfig(245);
save u;
u:=1cm;

z.a=origin;
z.d=(2,0)*u;
z.e=(0,2.5)*u;
z.f=z.d+z.e;

z.b=(1*u,y.e);
z.c=z.b+z.d;

arrowmark(z.a, z.d, btex $b$ etex, -15);
arrowmark(z.a, z.e, btex $h$ etex, 15);

hatchfill z.a--z.b--z.c--z.d--cycle  withcolor (50, 1mm, -.5bp);
hatchfill z.a--z.e--z.f--z.d--cycle  withcolor (140, 1mm, -.5bp);

draw z.a--z.b--z.c--z.d--cycle;
draw z.a--z.e--z.f--z.d--cycle;
draw z.f--z.b penhair;


label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.top(btex $F$ etex, z.f);
endfig;

beginfig(246);
save u;
u:=1cm;

z.a=origin;
z.b=(2,3)*u;
z.c=(3,0)*u;
z.e=z.b-z.c;
z.d=altitude(z.a,z.b,z.c);

hatchfill z.a--z.b--z.c--cycle  withcolor (50, 1mm, -.5bp);
draw z.a--z.b--z.c--cycle penbold;
draw z.a--z.e--z.b--z.d;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.top(btex $E$ etex, z.e);

label.bot(btex $b$ etex, .5[z.a,z.c]);
whitelabel.lft(btex $h$ etex, .5[z.b,z.d]);
endfig;

beginfig(247);
save u;
u:=1cm;

z.a=origin;
z.b=(2,3)*u;
z.c=(3,0)*u;

z.d=.5[z.a,z.b];
z.e=.5[z.c,z.b];
z.b1=altitude(z.e,z.b,z.d);
z.k=altitude(z.e,z.a,z.d);
z.l=altitude(z.e,z.c,z.d);

z.l1=z.l rotatedabout(z.e,20);
z.l2=z.l rotatedabout(z.e,45);
z.l3=z.l rotatedabout(z.e,90);

z.k1=z.k rotatedabout(z.d,-20);
z.k2=z.k rotatedabout(z.d,-45);
z.k3=z.k rotatedabout(z.d,-110);

hatchfill z.a--z.d--z.e--z.c--cycle  withcolor (10, 1mm, -.5bp);
hatchfill z.a--z.k--z.b1--z.b--cycle  withcolor (70, 1mm, -.5bp);
hatchfill z.c--z.l--z.b1--z.b--cycle  withcolor (130, 1mm, -.5bp);

draw z.a--z.b--z.c--cycle penbold;
draw z.a--z.k--z.l--z.c penbold;
draw z.b--z.b1 penbold;
drawarrow z.l3..z.l2..z.l1;
drawarrow z.k3..z.k2..z.k1;


label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
endfig;

beginfig(248);
save u;
u:=.7cm;

z.a=origin;
z.b=(2,3)*u;
z.c=(3,0)*u;
z.b1=z.a+z.b-z.c;
z.b4=z.b+z.c-z.a;
z.b2=.3[z.b1,z.b4];
z.b3=.8[z.b1,z.b4];

hatchfill z.a--z.b--z.c--cycle  withcolor (10, 1mm, -.5bp);
draw z.a--z.b--z.c--cycle penbold;
draw ddline(z.b1,z.b4)(.05,.05) dashed evenly;

draw z.a--z.b1--z.c;
draw z.a--z.b2--z.c;
draw z.a--z.b3--z.c;
draw z.a--z.b4--z.c;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
endfig;

beginfig(249);
save u;
u:=1cm;

z.o=origin;
z.a=(-1.5,0)*u;
z.b=(0,1)*u;
z.c=-z.a;
z.d=-z.b;

draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.a--z.c;
draw z.b--z.d;


label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.urt(btex $O$ etex, z.o);
endfig;

beginfig(250);
save u;
u:=1cm;

z.a=origin;
z.b=(1,2)*u;
z.d=z.a+(4,0)*u;
z.c=z.b+(2.5,0)*u;
z.m=.5[z.a,z.b];
z.n=.5[z.c,z.d];
z.c1=altitude(z.a,z.c,z.d);
z.a1=altitude(z.b,z.a,z.c);

hatchfill z.a--z.b--z.c--z.d--cycle  withcolor (10, 1mm, -.5bp);
draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.a--z.c penbold;
draw z.a--z.a1--z.b;
draw z.c--z.c1;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.lft(btex $h$ etex, .5[z.a,z.a1]);
whitelabel.lft(btex $h$ etex, .5[z.c,z.c1]);


endfig;

beginfig(251);
save u;
u:=1cm;

z.a=origin;
z.b=(1,2)*u;
z.d=z.a+(4,0)*u;
z.c=z.b+(2.5,0)*u;
z.m=.5[z.a,z.b];
z.n=.5[z.c,z.d];
z.m1=altitude(z.a,z.m,z.d);
z.m2=altitude(z.b,z.m,z.c);
z.n1=altitude(z.a,z.n,z.d);
z.n2=altitude(z.b,z.n,z.c);

z.d1=.7[z.n,z.d] rotatedabout(z.n,20);
z.d2=z.d1 rotatedabout(z.n,80);
z.d3=z.d1 rotatedabout(z.n,120);

drawarrow z.d1..z.d2..z.d3;

z.a1=.7[z.m,z.a] rotatedabout(z.m,-20);
z.a2=z.a1 rotatedabout(z.m,-80);
z.a3=z.a1 rotatedabout(z.m,-120);

drawarrow z.a1..z.a2..z.a3;

hatchfill z.a--z.b--z.c--z.d--cycle  withcolor (10, 1mm, -.5bp);
draw z.a--z.b--z.c--z.d--cycle penbold;
draw z.m1--z.m2--z.b;
draw z.n1--z.n2--z.c;
draw z.m--z.n penbold;

label.lft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.lft(btex $M$ etex, z.m);
label.rt(btex $N$ etex, z.n);
endfig;

beginfig(252);
save u;
u:=1cm;

z.o=(0,0)*u;
z.x=(1,0)*u;
z.m=z.x rotatedabout(z.o,170);
z.n=z.x rotatedabout(z.o,105);
z.p=z.x rotatedabout(z.o,10);
z.q=z.x rotatedabout(z.o,-90);
z.r=z.x rotatedabout(z.o,-145);

z.a=inversion(z.o,abs(z.o-z.m))(.5[z.r,z.m]);
z.b=inversion(z.o,abs(z.o-z.m))(.5[z.m,z.n]);
z.c=inversion(z.o,abs(z.o-z.m))(.5[z.n,z.p]);
z.d=inversion(z.o,abs(z.o-z.m))(.5[z.p,z.q]);
z.e=inversion(z.o,abs(z.o-z.m))(.5[z.q,z.r]);

draw circle(z.o,z.m-z.o);
draw z.a--z.b--z.c--z.d--z.e--cycle;
draw z.o--z.a;
draw z.o--z.b;
draw z.o--z.c;
draw z.o--z.d;
draw z.o--z.e;
draw z.o--z.m;
draw z.o--z.n;
draw z.o--z.p;
draw z.o--z.q;
draw z.o--z.r;

label.lft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.llft(btex $E$ etex, z.e);
whitelabel.rt(btex $O$ etex, z.o);
label.rt(btex $R$ etex, .5[z.q,z.o]+(-1,0));
endfig;

beginfig(253);
save u;
u:=1cm;

z.f=origin;
z.a=(1,0)*u;
z.e=3*z.a;
z.g=z.e+1.1*z.a;
z.c=(2,3)*u;
z.b=z.f+.6*(z.c-z.a);
z.d=z.g+.7*(z.c-z.e);
z.n=(-.2)[z.f,z.b];
z.m=(1.2)[z.f,z.b];

hatchfill z.f--z.g--z.c--cycle  withcolor (30, 1mm, -.5bp);
hatchfill z.a--z.b--z.c--z.d--z.e--cycle  withcolor (120, 1mm, -.5bp);
draw z.f--z.g--z.c--cycle penbold;
draw z.a--z.b--z.c--z.d--z.e--cycle penbold;
draw z.m--z.n;
draw z.d--z.g;
draw z.a--z.c--z.e;

label.bot(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.lft(btex $F$ etex, z.f);
label.rt(btex $G$ etex, z.g);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
endfig;

beginfig(254);
save u;
u:=1cm;

z.d=origin;
z.b=(-1,0)*u;
z.a=(0,2.3)*u;
z.c=(2,0)*u;

draw z.b--z.a--z.c--cycle;
draw z.a--z.d;

arrowmark(z.b, z.d, btex $c'$ etex, -18);
arrowmark(z.d, z.c, btex $b'$ etex, -18);
arrowmark(z.b, z.c, btex $a$ etex, -36);

label.top(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);

label.urt(btex $b$ etex, .5[z.a,z.c]);
label.ulft(btex $c$ etex, .5[z.a,z.b]);
label.rt(btex $h_a$ etex, .5[z.a,z.d]);
endfig;

beginfig(255);
save u;
u:=1cm;

z.c=(1,0)*u;
z.b=-z.c;
z.a=z.c rotated 60;

z.f=z.c rotatedabout(z.a,90);
z.g=z.a rotatedabout(z.c,-90);

z.d=z.a rotatedabout(z.b,90);
z.e=z.b rotatedabout(z.a,-90);

z.h=z.c rotatedabout(z.b,-90);
z.k=z.b rotatedabout(z.c,90);

z.l=altitude(z.b,z.a,z.c);
z.m=altitude(z.h,z.a,z.k);
z.n=altitude(z.b,z.c,z.d);
z.p=altitude(z.b,z.a,z.h);

hatchfill z.a--z.b--z.h--cycle  withcolor (angle(z.a-z.b), 1mm, -.5bp);
hatchfill z.c--z.b--z.d--cycle  withcolor (angle(z.d-z.b), 1mm, -.5bp);

arcs(z.c,z.b,z.d,12);
arcs(z.h,z.b,z.a,9);

draw z.a--z.b--z.d--z.e--cycle penbold;
draw z.b--z.c--z.k--z.h--cycle penbold;
draw z.c--z.a--z.f--z.g--cycle penbold;
draw z.c--z.n--z.b;
draw z.a--z.p--z.b;

draw z.a--z.m;
draw z.h--z.a;
draw z.c--z.d;

label.top(btex $A$ etex, z.a+(1,1));
label.llft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.lft(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e);
label.top(btex $F$ etex, z.f);
label.rt(btex $G$ etex, z.g);
label.lft(btex $H$ etex, z.h);
label.rt(btex $K$ etex, z.k);
label.llft(btex $L$ etex, z.l);
label.ulft(btex $M$ etex, z.m);
whitelabel.bot(btex $N$ etex, z.n);
whitelabel.top(btex $P$ etex, z.p);
endfig;

beginfig(256);
save u,w,k;
u:=1cm;
w:=.8;
k:=.7;

z.b=origin;
z.d=(0,2)*u;
z.a=z.d zscaled(0,w);
z.c=z.d zscaled(0,-1/w);

z.f=k[z.d,z.a];
z.g=k[z.d,z.b];
z.e=k[z.d,z.c];

draw z.d--z.a--z.c--cycle;
draw z.d--z.b;
draw z.f--z.e;
draw arc(z.a,z.d,z.c);

label.top(btex $D$ etex, z.d);
label.bot(btex $B$ etex, z.b);
label.rt(btex $C$ etex, z.c);
label.lft(btex $A$ etex, z.a);
label.urt(btex $E$ etex, z.e);
label.ulft(btex $F$ etex, z.f+(1,0));
label.urt(btex $G$ etex, z.g);
label.top(btex $m$ etex, .5[z.a,z.b]);
label.top(btex $n$ etex, .5[z.c,z.b]);
endfig;

beginfig(257);
save u;
u:=1cm;

z.a=origin;
z.c=(3,0)*u;
z.b=(2,2.5)*u;
z.d=altitude(z.a,z.b,z.c);

z.a1=z.c+(1.5cm,0);
z.c1=z.a1+1.2*z.c;
z.b1=z.a1+.7*z.b;
z.d1=altitude(z.a1,z.b1,z.c1);

hatchfill z.a--z.b--z.d--cycle  withcolor (30, 1mm, -.5bp);
hatchfill z.a1--z.b1--z.d1--cycle  withcolor (30, 1mm, -.5bp);

arcs(z.c,z.a,z.b,10);
arcs(z.c1,z.a1,z.b1,10);

draw z.a--z.b--z.c--cycle penbold;
draw z.a1--z.b1--z.c1--cycle penbold;
draw z.d--z.b;
draw z.d1--z.b1;


label.bot(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);

label.bot(btex $A_1$ etex, z.a1);
label.top(btex $B_1$ etex, z.b1);
label.bot(btex $C_1$ etex, z.c1);
label.bot(btex $D_1$ etex, z.d1);

endfig;

beginfig(258);
save u,k;
u:=1cm;
k:=.7;

z.o=origin;
z.a=(-1,-2)*u;
z.b=(-2,0)*u;
z.c=(-.5,2)*u;
z.d=(2,.5)*u;
z.e=(1.5,-2)*u;

z.o1=(x.d-k*x.b+1.5cm,0);
z.a1=z.o1+k*z.a;
z.b1=z.o1+k*z.b;
z.c1=z.o1+k*z.c;
z.d1=z.o1+k*z.d;
z.e1=z.o1+k*z.e;

draw z.a--z.b--z.c--z.d--z.e--cycle penbold;
draw z.o--z.a;
draw z.o--z.b;
draw z.o--z.c;
draw z.o--z.d;
draw z.o--z.e;

draw z.a1--z.b1--z.c1--z.d1--z.e1--cycle penbold;
draw z.o1--z.a1;
draw z.o1--z.b1;
draw z.o1--z.c1;
draw z.o1--z.d1;
draw z.o1--z.e1;

label.llft(btex $A$ etex, z.a);
label.lft(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.lrt(btex $E$ etex, z.e);
label.urt(btex $O$ etex, z.o+(-2,1));

label.llft(btex $A_1$ etex, z.a1);
label.lft(btex $B_1$ etex, z.b1);
label.top(btex $C_1$ etex, z.c1);
label.rt(btex $D_1$ etex, z.d1);
label.lrt(btex $E_1$ etex, z.e1);
label.urt(btex $O_1$ etex, z.o1+(-2,1));
endfig;

beginfig(259);
save u;
u:=1cm;

z.b=origin;
z.a=(-1.5,-2.5)*u;
z.c=(1*u,y.a);
z.f=sqrt(2/3)*z.a;
z.d=sqrt(1/3)*z.a;
z.g=sqrt(2/3)*z.c;
z.e=sqrt(1/3)*z.c;
z.aa=(1/3)*z.c;
z.bb=(2/3)*z.c;
z.h=.5*z.c+((z.aa-.5*z.c)zscaled(1,-sqrt(2)*2));
z.k=.5*z.c+((z.bb-.5*z.c)zscaled(1,sqrt(2)*2));
z.he=z.h rotated -1;
z.kg=z.k rotated -1;

draw z.a--z.b--z.c--cycle;
draw z.e--z.d;
draw z.f--z.g;
draw z.b--z.h--z.aa;
draw z.b--z.k--z.bb;
draw arc(z.b,z.h,z.c);
draw arc(z.h,z.he,z.e);
draw arc(z.k,z.kg,z.g);

label.lft(btex $A$ etex, z.a);
label.ulft(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.ulft(btex $D$ etex, z.d);
label.top(btex $E$ etex, z.e+(3,1));
label.ulft(btex $F$ etex, z.f);
label.lrt(btex $G$ etex, z.g+(0,3));
label.urt(btex $H$ etex, z.h);
label.rt(btex $K$ etex, z.k);

label.llft(btex $a$ etex, z.aa);
label.llft(btex $b$ etex, z.bb+(0,2));
endfig;

beginfig(260);
save u;
u:=1.6cm;

z.o=origin;
z.d=(0,-1)*u;
z.a=z.d rotated -36;
z.b= z.a reflectedabout(z.o,z.d);
z.c=.5[z.a,z.b];

draw circle(z.o,z.d);
draw z.a--z.o--z.b--cycle;
draw z.o--z.d;

label.llft(btex $A$ etex, z.a);
label.lrt(btex $B$ etex, z.b);
label.urt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.top(btex $O$ etex, z.o);
endfig;

beginfig(261);
save u;
u:=1.6cm;

z.o=origin;
z.ss=(0,1)*u;
z.a=z.ss rotated 36;
z.b= z.a reflectedabout(z.o,z.ss);

hatchfill z.o--z.a..z.ss..z.b--cycle  withcolor (43, 1mm, -.5bp);

draw circle(z.o,z.ss);
draw z.a--z.o--z.b--cycle;


label.ulft(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.b);
label.bot(btex $O$ etex, z.o);
label.top(btex $s$ etex, z.ss);
whitelabel(btex $S$ etex, .5*z.ss);
endfig;

beginfig(262);
save u;
u:=4cm;

z.o=origin;
z.ss=(0,1)*u;
z.a=z.ss rotated 44;
z.b= z.a reflectedabout(z.o,z.ss);
z.m=.5[z.a,z.b];
z.a1=z.a-(2/3)*(z.ss-z.m);
z.b1=z.b-(2/3)*(z.ss-z.m);

hatchfill z.a..z.ss..z.b--cycle  withcolor (43, 1mm, -.5bp);

draw z.a..z.ss..z.b;
draw z.a--z.a1--z.b1--z.b--cycle;
draw z.m--z.ss;

whitelabel.rt(btex $h$ etex, .5[z.m,z.ss]);
label.bot(btex $b$ etex, z.m-(2/3)*(z.ss-z.m));
label.lft(btex $\tfrac23 h$ etex,z.a-(1/3)*(z.ss-z.m));
endfig;

prologues := 3;

vardef wavy expr pa = 
point 0 of pa
    for a = 10 step 10 until arclength(pa):
        .. point arctime(a) of pa of pa 
           shifted (sind(a+normaldeviate)*up+unitvector(direction arctime(a) of pa of pa) 
                   rotated 90 scaled ((1/8)*normaldeviate))
    endfor 
enddef;

end




