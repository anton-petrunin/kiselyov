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

beginfig(62)
save u;
u:=1cm;

z.m=origin;
z.n=z.m+(0,-3)*u;
z.k=z.m+(-.5,-1)*u;
z.a=z.m+(-1.5,-2.5)*u;
z.b=z.a reflectedabout(z.m,z.n);
z.o=altitude(z.n,z.a,z.m);

mark_rt_angle(z.a,z.o,z.m);
rimmark(z.a--z.o,z.b--z.o);

draw z.m--z.n;
draw z.a--z.b--z.k--cycle;

dOt z.k;

label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.top(btex $M$ etex, z.m);
label.bot(btex $N$ etex, z.n);
label.urt(btex $O$ etex, z.o);
label.top(btex $K$ etex, z.k);
endfig;

beginfig(63)
save u;
u:=1cm;

z.o=origin;
z.m=z.o+(0,-3)*u;
z.a=z.o+(-1.5,-3)*u;
z.k=0.75[z.o,z.m]+(-.5,0)*u;
z.c=altitude(z.a,z.k,z.o);
z.b=z.a reflectedabout(z.o,z.m);
z.d=altitude(z.b,z.k,z.o);

mark_rt_angle(z.k,z.c,z.o);
mark_rt_angle(z.k,z.d,z.o);

arcs(z.m,z.o,z.c,9);
arcs(z.m,z.o,z.d,11);

draw z.c--z.k--z.d;
draw z.a--z.o--z.b;
draw z.o--z.m;

dOt z.k;

label.bot(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.bot(btex $M$ etex, z.m);
label.top(btex $O$ etex, z.o);
label.bot(btex $K$ etex, z.k);
endfig;


beginfig(124)
save u,k;
u:=1cm;
k:=.8;

z.a=(1,0)*u;
z.d=z.a zscaled (0,k);
z.o=z.d zscaled (0,k);
z.b=2[z.o,z.d];
z.c=z.b reflectedabout(z.a,z.o);
z.e=z.d reflectedabout(z.a,z.o);

draw circle(z.o,z.o-z.d);
draw ddarc(z.b,z.o,z.c)(10,10);
draw z.o--z.b--z.a--z.c--cycle;
draw z.a--z.o;
draw 1.6[z.a,z.d]--z.a--1.6[z.a,z.e];

smallarc(z.o,z.b);
smallarc(z.o,z.c);

dOt z.o,z.a;

label.rt(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.bot(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d+(0,-1));
label.top(btex $E$ etex, z.e+(0,1));
label.lft(btex $O$ etex, z.o);
endfig;


beginfig(149)
save u,k;
u:=1cm;
k:=.8;

z.a=(1,0)*u;
z.d=z.a zscaled (0,k);
z.o=z.d zscaled (0,k);
z.b=2[z.o,z.d];
z.c=z.b reflectedabout(z.a,z.o);
z.e=z.d reflectedabout(z.a,z.o);

draw circle(z.o,z.o-z.d);
draw 1.6[z.a,z.d]--z.a--1.6[z.a,z.e];
draw z.d--z.o--z.e;
draw z.o--z.a;

label.rt(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.d);
label.lrt(btex $B_1$ etex, z.e);
label.lft(btex $O$ etex, z.o);
endfig;

beginfig(250)
save u,k;
u:=.25cm;
k:=20;

for a = 0 step u until k*u:
draw (a,0)--(a,k*u);
draw (0,a)--(k*u,a);
endfor 

z.a=(1.2,1.6)*u;
z.b=(4.3,17.7)*u;
z.c=(14.3,18.6)*u;
z.d=(19.8,5.6)*u;

draw z.a--z.b--z.c--z.d--cycle penbold;

hatchfill (7,3)*u--(3,3)*u--(2,3)*u--(2,5)*u--(3,5)*u--(3,10)*u--(4,10)*u--(4,16)*u--(5,16)*u--(5,17)*u--(8,17)*u--(8,18)*u--(14,18)*u--(14,18)*u--(14,16)*u--(15,16)*u--(15,14)*u--(16,14)*u--(16,12)*u--(17,12)*u--(17,9)*u--(18,9)*u--(18,7)*u--(19,7)*u--(19,6)*u--(16,6)*u--(16,5)*u--(12,5)*u--(12,4)*u--(7,4)*u--cycle  withcolor (30, 1mm, -.5bp);
hatchfill (4,2)*u--(4,1)*u--(1,1)*u--(1,6)*u--(2,6)*u--(2,11)*u--(3,11)*u--(3,17)*u--(4,17)*u--(4,18)*u--(7,18)*u--(7,19)*u--(15,19)*u--(15,17)*u--(16,17)*u--(16,15)*u--(17,15)*u--(17,13)*u--(18,13)*u--(18,11)*u--(19,11)*u--(19,8)*u--(20,8)*u--(20,5)*u--(18,5)*u--(18,4)*u--(13,4)*u--(13,3)*u--(8,3)*u--(8,2)*u--cycle  withcolor (120, 1mm, -.5bp);

endfig;

end