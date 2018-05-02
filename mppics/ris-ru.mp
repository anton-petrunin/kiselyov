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

mark_rt_angle(z.b,z.d,z.c);
mark_rt_angle(z.b1,z.d1,z.c1);

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

beginfig(108);
save u;
u:=1cm;

z.a=origin;
z.b=(.5,2)*u;
z.d=(3,0)*u;
z.c=z.b+.7z.d;

parallel_mark1(z.b--z.c);
parallel_mark1(z.a--z.d);

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

end