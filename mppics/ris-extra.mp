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


end