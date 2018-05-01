 
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

beginfig(113)
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

beginfig(134)
save u, k;
u:=1cm;
k:=2.6;

z.a=(-2,-.5)*u;
z.am=(-1,.5)*u;
z.m=origin;
z.b=(1,1)*u;

path p;
p=z.a..z.am..{dir 0}z.m..{dir 90}z.b;

z.tl=(x.a-.5*u,0);
z.tr=(x.b+.5u,0);
z.p=point k of p;
y.pml1=y.a;
x.pmr1=x.tr;
z.pml1=whatever[z.m,z.p];
z.pmr1=whatever[z.m,z.p];

z.p2=point 2.15 of p;
x.pml2=x.tl;
x.pmr2=x.tr;
z.pml2=whatever[z.m,z.p2];
z.pmr2=whatever[z.m,z.p2];

z.p3=point 2.05 of p;
x.pml3=x.tl;
x.pmr3=x.tr;
z.pml3=whatever[z.m,z.p3];
z.pmr3=whatever[z.m,z.p3];

draw p;
draw  z.tl--z.tr penbold;
draw z.pml1--z.pmr1 penhair;
draw z.pml2--z.pmr2 penhair;
draw z.pml3--z.pmr3 penhair;

dOt z.m, z.p;

label.ulft(btex $P$ etex, z.p);
label.bot(btex $M$ etex, z.m);
label.bot(btex $T$ etex, 1.2[(x.a,0),(x.b,0)]);
endfig;

beginfig(147);
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