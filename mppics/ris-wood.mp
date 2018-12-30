input macros
input hatching
input mparrows
input fiziko 

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

draw woodenThing(z.c--z.cb--z.cb1--z.c1--cycle, angle(z.c-z.cb));
draw woodenThing(z.a--z.b--z.b1--z.a1--cycle, angle(z.a-z.b));
draw woodenThing(z.c--z.c1--z.e1--z.e--cycle, angle(z.e-z.c));
draw woodenThing(z.e--z.e1--z.cb1--z.cb--cycle, angle(z.e-z.cb));

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

draw woodenThing(z.u--z.v--z.v1--z.u1--cycle, angle(z.v-z.u));

draw woodenThing(z.y--z.y1--z.z1--z.z--cycle, angle(z.y-z.z));

draw woodenThing(z.z--z.z1--z.x1--z.x--cycle, angle(z.x-z.z));

draw woodenThing(z.y--z.y1--z.x1--z.x--cycle, angle(z.y-z.x));

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


end

beginfig(27)
pair A, B, C, D, E, F, C', E', F';
numeric totalWidth, width, height, breadth, a[];
path p[];
save u;
u:=.7cm;

totalWidth := 5*u;
width := sqrt(3)*u;
height := 3*u;
breadth := 2/5*u;
A := (0, 0);
B := (totalWidth, 0);
C := (1/2totalWidth, 0);
E := (xpart(C), height);
D := 3/4[C, E];
F := (xpart(E) + width, 0);
C' = whatever[C shifted (0, breadth), F shifted (0, breadth)] 
   = whatever[C shifted (breadth, 0), E shifted (breadth, 0)];
E' = whatever[E shifted (breadth, 0), C shifted (breadth, 0)] 
   = whatever[E shifted ((unitvector(E-F) scaled breadth) rotated 90), F shifted ((unitvector(E-F) scaled breadth) rotated 90)];
F' = whatever[C shifted (0, breadth), F shifted (0, breadth)] 
   = whatever[E shifted ((unitvector(E-F) scaled breadth) rotated 90), F shifted ((unitvector(E-F) scaled breadth) rotated 90)];
p1 := A -- B -- B shifted (0, -breadth) -- A shifted (0, -breadth) -- cycle;
a1 := 0;
p2 := C -- E -- E' -- C' -- cycle;
a2 := 90;
p3 := E -- F -- F' -- E' -- cycle;
a3 := angle (E-F);
p4 := C -- F -- F' -- C' -- cycle;
a4 := 0;
for i := 1 step 1 until 4:
    draw woodenThing(p[i], a[i]);
    % draw p[i];
endfor;
draw ddline(A,B)(.1,.1);

label.top(btex $A$ etex, (-.1)[A,B]);
label.top(btex $B$ etex, (1.1)[A,B]);
dotlabel.ulft(btex $C$ etex, C);
dotlabel.lft(btex $D$ etex, D);
label.ulft(btex $E$ etex, E);
endfig;
