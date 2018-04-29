 
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

beginfig(209)
save u;
u:=1.4cm;

z.o=origin;
z.c1=(1,0)*u;
z.c=-z.c1;
z.b=(-.6,0)*u;
z.a=(u*u/x.b,0);
z.m=z.c1 rotated 110;

mark_rt_angle(z.c, z.m, z.c1);

draw circle(z.o,z.c1);
draw ddline(z.a,z.c1)(.1,.1);
draw ddline(z.a,z.m)(0,.2);
draw z.o--z.m--z.b;
draw z.c--z.m--z.c1;

label.bot(btex $A$ etex, z.a);
label.bot(btex $B$ etex, z.b);
label.llft(btex $C$ etex, z.c);
label.lrt(btex $C'$ etex, z.c1);
label.ulft(btex $M$ etex, z.m);
label.bot(btex $O$ etex, z.o);
endfig;

beginfig(221)
save u;
u:=1.3cm;

z.d=origin;
z.a=(.4,1.4)*u;
z.b=(1,0)*u;
z.c=-z.b;
z.e=-z.a;
z.aa=(-.1,.2)*u;

draw z.a--z.b--z.c--cycle penbold;
draw z.a--z.e;
draw z.b--z.e--z.c;
draw z.c..z.aa..z.b dashed evenly;

label.top(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, z.c);
label.lrt(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.top(btex $a$ etex, z.aa);
label.ulft(btex $b$ etex, .5[z.a,z.c]);
label.urt(btex $c$ etex, .5[z.a,z.b]);
label.rt(btex $m_a$ etex, .6[z.a,z.d]+(-1,0));
endfig;

beginfig(228)
save u;
u:=2cm;

z.o=origin;
save p;
path p;
p=circle(z.o,1*u);

z.a = point .8 of p;
z.b = point 2.3 of p;
z.c = point 3.7 of p;
z.d=-z.a;
z.e= altitude(z.b,z.a,z.c);

mark_rt_angle(z.a, z.b, z.d);
mark_rt_angle(z.a, z.e, z.c);
arcs2(z.a,z.c,z.b,10);
arcs2(z.a,z.d,z.b,10);

draw p;
draw z.a--z.b--z.c--cycle penbold;
draw z.b--z.d--z.a--z.e;

dOt z.o;

label.top(btex $A$ etex, z.a);
label.llft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.bot(btex $E$ etex, z.e);
label.bot(btex $a$ etex, .5[z.b,z.c]);
label.urt(btex $b$ etex, .5[z.a,z.c]);
label.ulft(btex $c$ etex, .5[z.a,z.b]);
label.rt(btex $h_a$ etex, .6[z.a,z.e]+(-1,0));
endfig;

beginfig(229)
save u;
u:=2cm;

z.o=origin;
save p;
path p;
p=circle(z.o,1*u);

z.a = point 1.8 of p;
z.b = point 2.3 of p;
z.c = point 3.3 of p;
z.d=-z.a;
z.e= altitude(z.b,z.a,z.c);

mark_rt_angle(z.a, z.b, z.d);
mark_rt_angle(z.a, z.e, z.c);
arcs2(z.a,z.c,z.b,10);
arcs2(z.a,z.d,z.b,10);

draw p;
draw z.a--z.b--z.c--cycle penbold;
draw z.b--z.d--z.a--z.e--cycle;

dOt z.o;

label.ulft(btex $A$ etex, z.a);
label.llft(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);
label.rt(btex $D$ etex, z.d);
label.lft(btex $E$ etex, z.e);
label.bot(btex $a$ etex, .5[z.b,z.c]);
label.urt(btex $b$ etex, .5[z.a,z.c]);
label.rt(btex $c$ etex, .5[z.a,z.b]);
label.lft(btex $h_a$ etex, .6[z.a,z.e]+(-1,0));
endfig;
end