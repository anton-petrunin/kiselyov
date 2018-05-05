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

%outputformat := "svg"

beginfig(1)
save u;
u:=1cm;

z.o=origin;
z.a=(1.5,1)*u;
z.x=(x.a,0);
z.y=(0,y.a);
z.b=(x.a,-y.a); 

mark_rt_angle(z.x, z.o, z.y);

draw z.a--(-z.a) penbold;
draw z.b--(-z.b) penbold;
draw z.x--(-z.x) dashed evenly;
draw z.y--(-z.y) dashed evenly;

endfig;

beginfig(2)
save u,k;
u:=.25cm;
k:=5;

for a = 0 step u until k*u:
draw (a,0)--(a,k*u);
draw (0,a)--(k*u,a);
endfor 
endfig;

beginfig(3)
save u;
u:=1cm;

z.a=(2,1)*u;
z.b=(-.5,1)*u;

parallel_mark1(origin--z.a);
parallel_mark1(z.b--(z.a+z.b));

draw origin--z.a;
draw z.b--(z.a+z.b);

endfig;

beginfig(4);
save u, k;
u:=1cm;
k:=.7;

z.S=(2,0)*u;

z.a=origin;
z.b=(2,2)*u;
z.c=(2.5,0)*u;
z.d=k[z.b,z.a];
z.e=k[z.b,z.c];

z.a1=z.c+z.S;
z.b1=z.a1+z.b-z.d;
z.c1=z.a1+z.e-z.d;

arcs(z.c,z.a,z.b,10);
arcs(z.c1,z.a1,z.b1,10);

arcs2(z.a,z.b,z.c,10);
arcs2(z.a1,z.b1,z.c1,10);

arcs3(z.b,z.c,z.a,10);
arcs3(z.b1,z.c1,z.a1,10);

draw z.a--z.b--z.c--cycle;
draw z.a1--z.b1--z.c1--cycle;

label.llft(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.lrt(btex $C$ etex, z.c);

label.llft(btex $D$ etex, z.a1);
label.top(btex $E$ etex, z.b1);
label.lrt(btex $F$ etex, z.c1);

endfig;

beginfig(5);
save u,a,b;
u:=1.4cm;
a:=3;
b:=2;

z.a1=origin;
z.o1=(0,-10)*u;

z.b1=z.a1 rotatedabout(z.o1,-a);
z.a2=z.a1 rotatedabout(z.o1,-2*a);

z.o2=z.o1 rotatedabout(z.a2,90);
z.b2=z.a2 rotatedabout(z.o2,-2);

z.o4=z.o1 rotatedabout(z.a1,-90);
z.a4=z.a1 rotatedabout(z.o4,2*b);

z.o3=z.o4 rotatedabout(z.a4,-90);
z.a3=cross.bot(circle(z.o2,abs(z.o2-z.a2)),circle(z.o3,abs(z.o3-z.a4)));


z.b3=z.a4 rotatedabout(z.o3,1);
z.b4=z.a4 rotatedabout(z.o4,-b);

mark_rt_angle(-z.o1,z.a1,-z.o4);
mark_rt_angle(2*z.a2-z.o1,z.a2,2*z.a2-z.o2);
mark_rt_angle(2*z.a4-z.o4,z.a4,2*z.a4-z.o3);
arcs(z.o3 rotatedabout(z.a3,90),z.a3,z.o2 rotatedabout(z.a3,-90),6);

draw z.a1..z.b1..z.a2--z.a2..z.b2..z.a3--z.a3..z.b3..z.a4--z.a4..z.b4..z.a1--cycle penbold;
endfig;


end