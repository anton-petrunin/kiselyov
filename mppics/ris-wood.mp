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

end