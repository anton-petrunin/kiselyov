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

beginfig(501)
save u, k;
u:=.7cm;
k:=4;

save p; path p[];
p0= ellipse_canonical(3*u, u);
p1=p0 shifted (0,1.5*u);

z.A=point 2.8 of p0;
z.B=point 3.3 of p1;
z.BB=point 3.3 of p0;
z.C=point 3.8 of p0;
z.O=origin;
z.K=(z.O--z.BB) intersectionpoint (z.A--z.C);

z.r0=point 0 of p0;
z.r1=point 0 of p1;
z.l0=point 2 of p0;
z.l1=point 2 of p1;

draw subpath (0,2) of p0 dashed evenly;
draw subpath (2,4) of p0;
draw p1;

draw z.A--z.B--z.C--z.BB--cycle;
draw z.A--z.C;
draw z.B--z.BB;
draw z.K--z.BB;
draw z.B--z.K;
draw z.r0--z.r1;
draw z.l0--z.l1;

dOt z.A,z.B,z.BB,z.C,z.K;

label.llft(btex $A$ etex, z.A);
whitelabel.top(btex $B$ etex, z.B);
label.bot(btex $B'$ etex, z.BB);
label.lrt(btex $C$ etex, z.C);
label.ulft(btex $K$ etex, z.K);
endfig;

beginfig(502)

save u,ang, k,phi;
u:=.8cm;
ang:=190;
k:=.3;
phi:=.5*(1+sqrt(5));

z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);


draw z.x+z.y+z.z--(phi*z.x+(1/phi)*z.z)--(z.x-z.y+z.z)--(-(1/phi)*z.y+phi*z.z)--(-z.x-z.y+z.z)--(-phi*z.x+(1/phi)*z.z)--(-z.x+z.y+z.z)--((1/phi)*z.y+phi*z.z)--cycle pensemibold;

draw (-phi*z.x-(1/phi)*z.z)--(-z.x+z.y-z.z)--((1/phi)*z.y-phi*z.z)--(z.x+z.y-z.z)--(phi*z.x-(1/phi)*z.z) pensemibold;
draw (phi*z.x-(1/phi)*z.z)--(z.x-z.y-z.z)--(-(1/phi)*z.y-phi*z.z)--(-z.x-z.y-z.z)--(-phi*z.x-(1/phi)*z.z) dashed evenly pensemibold;

draw (-(1/phi)*z.y+phi*z.z)--((1/phi)*z.y+phi*z.z) pensemibold;
draw ((1/phi)*z.y-phi*z.z)--(-(1/phi)*z.y-phi*z.z) dashed evenly pensemibold;

draw (phi*z.x+(1/phi)*z.z)--(phi*z.x-(1/phi)*z.z) pensemibold;
draw (-phi*z.x-(1/phi)*z.z)--(-phi*z.x+(1/phi)*z.z) pensemibold;
draw (phi*z.y+(1/phi)*z.x)--(phi*z.y-(1/phi)*z.x) pensemibold;
draw (-phi*z.y-(1/phi)*z.x)--(-phi*z.y+(1/phi)*z.x) dashed evenly pensemibold;

draw (z.x+z.y-z.z)--(phi*z.y+(1/phi)*z.x)--(z.x+z.y+z.z) pensemibold;
draw (z.x-z.y-z.z)--(-phi*z.y+(1/phi)*z.x)--(z.x-z.y+z.z) dashed evenly pensemibold;
draw (-z.x+z.y-z.z)--(phi*z.y-(1/phi)*z.x)--(-z.x+z.y+z.z) pensemibold;
draw (-z.x-z.y-z.z)--(-phi*z.y-(1/phi)*z.x)--(-z.x-z.y+z.z) dashed evenly pensemibold;

draw z.x+z.y+z.z--(z.x-z.y+z.z)--(-z.x-z.y+z.z)--(-z.x+z.y+z.z)--cycle penhair;
draw (z.x-z.y-z.z)--(-z.x-z.y-z.z)--(-z.x+z.y-z.z) dashed evenly penhair;
draw (-z.x+z.y-z.z)--z.x+z.y-z.z--z.x-z.y-z.z penhair;
draw (z.x+z.y-z.z)--(z.x+z.y+z.z) penhair;
draw (z.x-z.y-z.z)--(z.x-z.y+z.z) penhair;
draw (-z.x+z.y-z.z)--(-z.x+z.y+z.z) penhair;
draw (-z.x-z.y-z.z)--(-z.x-z.y+z.z) dashed evenly penhair;

hatchfill z.x+z.y+z.z--(z.x-z.y+z.z)--(-z.x-z.y+z.z)--(-z.x+z.y+z.z)--cycle withcolor 
(angle(z.x-z.y), 
abs(altitude((z.x-z.y+z.z),(z.x+z.y+z.z),(-z.x+z.y+z.z))-(z.x+z.y+z.z))/5, -.3bp);

hatchfill z.x+z.y+z.z--(z.x-z.y+z.z)--(z.x-z.y-z.z)--(z.x+z.y-z.z)--cycle withcolor 
(angle(z.y-z.z), 
abs(altitude((z.x-z.y+z.z),z.x+z.y+z.z,(z.x+z.y-z.z))-(z.x+z.y+z.z))/5, -.3bp);

hatchfill z.x+z.y+z.z--(-z.x+z.y+z.z)--(-z.x+z.y-z.z)--(z.x+z.y-z.z)--cycle withcolor 
(angle(z.z-z.x), 
abs(altitude((-z.x+z.y+z.z),z.x+z.y+z.z,(z.x+z.y-z.z))-(z.x+z.y+z.z))/5, -.3bp);

endfig;

beginfig(503)

save u,ang, k,phi,q;
u:=.6cm;
ang:=195;
k:=.3;
phi:=.5*(1+sqrt(5));
q:=(phi**2+1)/(phi**2);


z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);


draw q*(z.x+z.y+z.z)--q*(phi*z.x+(1/phi)*z.z)--q*(z.x-z.y+z.z)--q*(-(1/phi)*z.y+phi*z.z)--q*(-z.x-z.y+z.z)--q*(-phi*z.x+(1/phi)*z.z)--q*(-z.x+z.y+z.z)--q*((1/phi)*z.y+phi*z.z)--cycle penhair;

draw q*(-phi*z.x-(1/phi)*z.z)--q*(-z.x+z.y-z.z)--q*((1/phi)*z.y-phi*z.z)--q*(z.x+z.y-z.z)--q*(phi*z.x-(1/phi)*z.z) penhair;
draw q*(phi*z.x-(1/phi)*z.z)--q*(z.x-z.y-z.z)--q*(-(1/phi)*z.y-phi*z.z)--q*(-z.x-z.y-z.z)--q*(-phi*z.x-(1/phi)*z.z) dashed evenly penhair;

draw q*(-(1/phi)*z.y+phi*z.z)--q*((1/phi)*z.y+phi*z.z) penhair;
draw q*((1/phi)*z.y-phi*z.z)--q*(-(1/phi)*z.y-phi*z.z) dashed evenly penhair;

draw q*(phi*z.x+(1/phi)*z.z)--q*(phi*z.x-(1/phi)*z.z) penhair;
draw q*(-phi*z.x-(1/phi)*z.z)--q*(-phi*z.x+(1/phi)*z.z) penhair;
draw q*(phi*z.y+(1/phi)*z.x)--q*(phi*z.y-(1/phi)*z.x) penhair;
draw q*(-phi*z.y-(1/phi)*z.x)--q*(-phi*z.y+(1/phi)*z.x) dashed evenly penhair;

draw q*(z.x+z.y-z.z)--q*(phi*z.y+(1/phi)*z.x)--q*(z.x+z.y+z.z) penhair;
draw q*(z.x-z.y-z.z)--q*(-phi*z.y+(1/phi)*z.x)--q*(z.x-z.y+z.z) dashed evenly penhair;
draw q*(-z.x+z.y-z.z)--q*(phi*z.y-(1/phi)*z.x)--q*(-z.x+z.y+z.z) penhair;
draw q*(-z.x-z.y-z.z)--q*(-phi*z.y-(1/phi)*z.x)--q*(-z.x-z.y+z.z) dashed evenly penhair;


%%%%%%%%%%

draw (phi*z.x+z.y)--(phi*z.x-z.y) pensemibold;
draw -phi*z.x+z.y--(-phi)*z.x-z.y dashed evenly pensemibold;

draw phi*z.y+z.z--phi*z.y-z.z pensemibold;
draw -phi*z.y+z.z--(-phi)*z.y-z.z dashed evenly pensemibold;

draw phi*z.z+z.x--phi*z.z-z.x  pensemibold;
draw -phi*z.z+z.x--(-phi)*z.z-z.x pensemibold;

draw phi*z.x+z.y--phi*z.y+z.z--phi*z.z+z.x--cycle pensemibold;

draw phi*(-z.x)+z.y--phi*z.y+z.z--phi*z.z-z.x--cycle  pensemibold;
draw phi*(-z.y)+z.z--phi*z.z+z.x dashed evenly pensemibold;
draw phi*z.z+z.x--phi*z.x-z.y pensemibold;
draw phi*z.x-z.y--phi*(-z.y)+z.z dashed evenly  pensemibold;
draw phi*z.x+z.y--phi*z.y-z.z--phi*(-z.z)+z.x--cycle   pensemibold;

draw phi*(z.x)-z.y--phi*(-z.y)-z.z dashed evenly pensemibold;
draw phi*(-z.y)-z.z--phi*(-z.z)+z.x dashed evenly pensemibold;
draw phi*(-z.z)+z.x--phi*(z.x)-z.y pensemibold;
draw phi*(-z.x)+z.y--phi*(z.y)-z.z--phi*(-z.z)-z.x--cycle pensemibold;
draw phi*(-z.x)-z.y--phi*(-z.y)+z.z--phi*z.z-z.x--cycle dashed evenly pensemibold;


draw phi*(-z.x)-z.y--phi*(-z.y)-z.z dashed evenly pensemibold;
draw phi*(-z.y)-z.z--phi*(-z.z)-z.x dashed evenly pensemibold;
draw phi*(-z.z)-z.x--phi*(-z.x)-z.y dashed evenly pensemibold;
endfig;

beginfig(504);
save u,v,h;
u:=1.4cm;

v:=1*u;
h:=2.5*u;

z.o=origin;
z.a=(-.5*h,v);
z.b=(.4*h,v);
z.c=altitude(z.a,z.o,z.b);
z.c1=.5[z.c,z.b];
z.c2=.3[z.c,z.a];

draw circle(z.o,1*u);
draw ddline(z.c,z.b)(.7,.3);
draw z.o--z.c;

dOt z.o, z.c, z.b;

label.top(btex $B$ etex, z.b);
label.top(btex $A$ etex, z.c);
label.bot(btex $O$ etex, z.o);
endfig;

%1914
beginfig(348)
save u,k,l,r;
u:=1cm;
k:=.3;
l:=2cm;
r:=1.4cm;

z.S=(0,l*sqrt(1-k**2));

z.a=(r,0) rotated 122;
z.b=z.a rotated 120;
z.c=z.a rotated -120;

z.A= z.a yscaled k;
z.B= z.b yscaled k;
z.C= z.c yscaled k;

z.A1=((l/r)*z.A) shifted (0, (l-r/2)*sqrt(1-k**2));
z.B1=((l/r)*z.B) shifted (0, (l-r/2)*sqrt(1-k**2));
z.C1=((l/r)*z.C) shifted (0, (l-r/2)*sqrt(1-k**2));

%mark_rt_angle(z.A1,z.S,z.B);
%mark_rt_angle(z.A1,z.S,z.C);

draw (z.S--z.A) cutbefore (z.C1--z.B1);
draw z.S--z.B cutbefore (z.C1--z.B1);
draw z.S--z.C cutbefore (z.C1--z.B1);
draw (z.S--z.A) cutafter (z.C1--z.B1) dashed evenly;
draw z.S--z.B cutafter (z.C1--z.B1) dashed evenly;
draw z.S--z.C cutafter (z.C1--z.B1) dashed evenly;
draw z.A--z.B--z.C;
draw z.A--z.C dashed evenly;

draw z.S--z.A1;
draw z.S--z.B1;
draw z.S--z.C1;
draw z.A1--z.B1--z.C1;
draw z.A1--z.C1 dashed evenly;

label.top(btex $S$ etex, z.S);
label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.lft(btex $A_1$ etex, z.A1);
label.lft(btex $B_1$ etex, z.B1);
label.rt(btex $C_1$ etex, z.C1);
endfig;

beginfig(349)
save u;
u:=1cm;

z.x=(1,-.7)*u;
z.y=(-1.5,-.5)*u;
z.z=(0,1.8)*u;

z.B=origin;
z.A=z.B+z.z;
z.C=z.x-.6*z.y;
z.D=(z.x+.1*z.y)*1.4;
z.E=.1*z.x-z.y;
z.F=.6*z.x+z.y;


save p; path p[];

p1= z.B--z.C--z.C+z.z--z.A;
p2= z.B--z.D--z.D+z.z--z.A--cycle;
p3= 1.3*z.F-.5*z.C --1.3*z.F+1.3*z.C--1.3*z.C-.8*z.F--origin-.5*z.C-.8*z.F--cycle;

markdashed_rt_angle_withsize(z.D, z.B, z.E,10); 
mark_rt_angle(z.C, z.B, z.F); 

draw p1  cutbefore (z.D--z.D+z.z) pensemibold;
draw p1  cutafter (z.D--z.D+z.z) dashed evenly pensemibold;
draw p2 pensemibold;
draw p3 cutbefore (z.A--z.B) penhair;
draw p3 cutbefore (z.C--z.C+z.z) cutafter (z.A--z.B)  dashed evenly penhair;
draw p3 cutafter (z.C--z.C+z.z) penhair;
draw z.B--z.E dashed evenly;
draw z.B--z.F;

label.lft(btex $A$ etex, z.A);
label.ulft(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.bot(btex $D$ etex, z.D);
label.bot(btex $E$ etex, z.E);
label.lft(btex $F$ etex, z.F);
endfig;

beginfig(392)
save u;
u:=1cm;

z.O=origin;
z.A=(2,0)*u;
z.B=(0,2)*u;
z.C=(-1,-1)*u;

draw z.O--z.A pensemibold;
draw z.O--z.B pensemibold;
draw z.O--z.C pensemibold;

hatchfill z.A--z.O--z.B{1,0}..{0,-1}cycle  withcolor (0, 2*2mm, -.5bp);
hatchfill z.A--z.O--z.B{1,0}..{0,-1}cycle  withcolor (90, 2*2mm, -.5bp);

hatchfill z.A--z.O--z.C{1,0}..{1,1}cycle  withcolor (0, 2*1mm, -.5bp);
hatchfill z.A--z.O--z.C{1,0}..{1,1}cycle  withcolor (45, 2*1.41421356237mm, -.5bp);

hatchfill z.B--z.O--z.C{0,1}..{1,1}cycle  withcolor (90, 2*1mm, -.5bp);
hatchfill z.B--z.O--z.C{0,1}..{1,1}cycle  withcolor (45, 2*1.41421356237mm, -.5bp);

label.rt(btex $A$ etex, z.A);
label.top(btex $B$ etex, z.B);
label.llft(btex $C$ etex, z.C);
whitelabel.urt(btex $O$ etex, z.O);
endfig;

beginfig(351)
save u,k,h;
u:=1cm;
k:=.7;
h:=2*u;

z.R=(1,0)*u;

save p; path p[];
p0=circle(origin, z.R) yscaled k;

z.a=z.R rotated -120;
z.b=z.R rotated 10;
z.c=z.R rotated 160;
z.o=origin;
z.sa=altitude(z.b,z.o,z.c)+sqrt((abs(altitude(z.b,z.o,z.c)))**2+h**2)*(unitvector(z.c-z.b) rotated 90)
;
z.sb=altitude(z.c,z.o,z.a)+sqrt((abs(altitude(z.c,z.o,z.a)))**2+h**2)*(unitvector(z.c-z.a) rotated 90)
;
z.sc=altitude(z.b,z.o,z.a)+sqrt((abs(altitude(z.b,z.o,z.a)))**2+h**2)*(unitvector(z.b-z.a) rotated 90)
;

z.A=z.a yscaled k;
z.B= z.b yscaled k;
z.C= z.c yscaled k;
z.O=z.o ;
z.S=(0,h) yscaled \sqrt(1-k**2);

picture arcbsc;
arcbsc := image(dashedarcs(z.b,z.sa,z.c,10););

picture arcasc;
arcasc := image(arcs2(z.a,z.sb,z.c,13););

picture arcasb;
arcasb := image(arcs3(z.a,z.sc,z.b,16););


transform BCS;

z.B=z.b transformed BCS;
z.C=z.c transformed BCS;
z.S=z.sa transformed BCS;

transform ACS;

z.A=z.a transformed ACS;
z.C=z.c transformed ACS;
z.S=z.sb transformed ACS;

transform ACB;

z.A=z.a transformed ACB;
z.B=z.b transformed ACB;
z.S=z.sc transformed ACB;


draw arcasc transformed ACS;
draw arcasb transformed ACB;
draw arcbsc transformed BCS;

draw p0 cutbefore (ddline(z.S,z.C)(0,-.1));
draw p0 cutafter (ddline(z.S,z.B)(0,-.1));
draw p0 cutbefore (ddline(z.S,z.B)(0,-.1)) cutafter (ddline(z.O,z.C)(0,-.1)) dashed evenly;
draw z.C--z.A--z.B;
draw z.B--z.C dashed evenly;
draw ddline(z.S,z.A)(0,.2);
draw ddline(z.S,z.B)(0,.2);
draw ddline(z.S,z.C)(0,.2);
draw z.S--z.O dashed evenly;
draw z.O--z.A dashed evenly;
draw z.O--z.B dashed evenly;
draw z.O--z.C dashed evenly;

transform T;
T=identity shifted ((3,0)*u);
picture pic;
pic = currentpicture;
draw pic transformed T;

label.llft(btex $A$ etex, z.A+(-1,0));
label.rt(btex $B$ etex, z.B);
label.ulft(btex $C$ etex, z.C);
label.top(btex $S$ etex, z.S);
whitelabel.urt(btex $O$ etex, z.O);

label.llft(btex $A_1$ etex, z.A transformed T);
label.rt(btex $B_1$ etex, z.B transformed T);
label.ulft(btex $C_1$ etex, z.C transformed T);
label.top(btex $S_1$ etex, z.S transformed T);
whitelabel.urt(btex $O_1$ etex, z.O transformed T +(0,1));

endfig;

beginfig(1)
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.d=(1,1)*u;
z.c=z.b+z.d-z.a;

draw z.a--z.b--z.c--z.d--cycle;

label.lrt(btex $M$ etex, .75[z.b,z.c]);
endfig;

beginfig(2)
save u;
u:=1cm;

z.o=(0,0)*u;
z.a=(0,2)*u;
z.m=(1.4,-.5)*u;
z.n=(2,0)*u;
z.p=(1.7,.4)*u;

z.aa=.1[z.m,z.a];
z.bb=.1[z.n+z.a/2,z.a/2];
z.cc=.1[z.p+z.a,z.o];

save p; path p[];
p0= z.o--z.m--z.m+z.a--z.a--cycle;
p1= z.o--z.n--z.n+z.a--z.a;
p2= z.o--z.p--z.p+z.a--z.a;

draw p0;
draw p1 cutbefore subpath (1,3) of p0;
draw p2 cutbefore subpath (1,3) of p1;
draw p1 cutafter subpath (1,3) of p0 dashed evenly;
draw p2 cutafter subpath (1,3) of p1 dashed evenly;

dOt z.aa,z.bb, z.cc;

label.lrt(btex $M$ etex, z.m);
label.rt(btex $N$ etex, .5[z.n,z.n+z.a]);
label.urt(btex $P$ etex, z.p+z.a);
label.lft(btex $a$ etex, .5[z.o,z.a]);
whitelabel.ulft(btex $A$ etex, z.aa);
whitelabel.top(btex $B$ etex, z.bb);
whitelabel.ulft(btex $C$ etex, z.cc);
endfig;

beginfig(3)
save u;
u:=1.8cm;

z.c=origin;
z.q1=(1,.8)*u;
z.q2=(1,-.7)*u;
z.p1=(.8,-.2)*u;
z.b=.3[z.p1,z.p2]=.5[z.q1,z.q2];
z.a=.3[z.q1,-z.q2];
z.aa=.7*z.b;

save p; path p[];
p0=z.p2--(-z.p1)--(-z.p2)--z.p1--cycle;
p1=z.q1--z.q2--(-z.q1)--(-z.q2)--cycle;
p3=z.a--(-z.a);
p4=z.b--(-z.b);

draw p0 cutbefore subpath (2.4,3) of p1;
draw p0 cutbefore subpath (0,.4) of p1 cutafter subpath (2.4,3) of p1 dashed evenly;
draw p0 cutafter subpath (0,.4) of p1;
draw p1 cutbefore subpath (1,2) of p0;
draw p1 cutafter subpath (2,3) of p0;
draw (p1 cutafter subpath (1,3) of p0) cutbefore subpath (2,3) of p0 dashed evenly;
draw p4;
draw p3 cutafter p4;
draw p3 cutbefore p4 cutafter p0 dashed evenly;
draw p3 cutbefore subpath (2,3) of p0;

dOt z.c, z.aa;

label.top(btex $A$ etex, z.aa);
label.ulft(btex $C$ etex, z.c);
label(btex $P$ etex, .1[-z.p2,z.p2]+(0,2));
label(btex $Q$ etex, .15[-z.q2,z.q2]);
label.ulft(btex $a$ etex, .6*z.a);
label.top(btex $b$ etex, .-z.aa);
endfig;

beginfig(4)
save u;
u:=1.4cm;

z.p0=(0,0)*u;
z.p1=(2,0)*u;
z.p3=(1,1)*u;
z.p2=z.p3+z.p1-z.p0;

save p; path p[];
p0=z.p0--z.p1--z.p2--z.p3--cycle;

draw p0;

z.a=(.5,1.5)*u;
z.b=(2.9,.1)*u;

p1=z.a--z.b;


draw p1 cutbefore subpath (0,2) of p0 pensemibold;
draw subpath (0,.5) of p1 pensemibold;
draw subpath (.5,1) of p1 cutafter subpath (0,2) of p0 dashed evenly pensemibold;
z.c = point .5 of p1;
dOt z.c;

z.d=(5*z.p0+z.p2+z.p3)/7;
z.e=(5*z.p1+z.p2+z.p3)/7;
draw z.d--z.e pensemibold;

label.lrt(btex $P$ etex, .95[z.p1,z.p3]);
label.lft(btex $A$ etex, z.a);
label.rt(btex $B$ etex, z.b);
whitelabel.urt(btex $C$ etex, z.c);
whitelabel.rt(btex $E$ etex, z.e);
whitelabel.lft(btex $D$ etex, z.d);

endfig;

beginfig(5)
save u;
u:=1.8cm;

z.c=origin;
z.q1=(1,.8)*u;
z.q2=(1,-.7)*u;
z.p1=(.8,-.2)*u;
z.b=.3[z.p1,z.p2]=.5[z.q1,z.q2];
z.a=.3[z.q1,-z.q2];
z.aa=.7*z.b;

save p; path p[];
p0=z.p2--(-z.p1)--(-z.p2)--z.p1--cycle;
p1=z.q1--z.q2--(-z.q1)--(-z.q2)--cycle;
p3=z.a--(-z.a);
p4=z.b--(-z.b);

draw p0 cutbefore subpath (2.4,3) of p1;
draw p0 cutbefore subpath (0,.4) of p1 cutafter subpath (2.4,3) of p1 dashed evenly;
draw p0 cutafter subpath (0,.4) of p1;
draw p1 cutbefore subpath (1,2) of p0;
draw p1 cutafter subpath (2,3) of p0;
draw (p1 cutafter subpath (1,3) of p0) cutbefore subpath (2,3) of p0 dashed evenly;
draw p4 penbold;
draw  subpath (3,4) of p1 penbold;

label(btex $P$ etex, .1[-z.p2,z.p2]+(0,2));
label(btex $R$ etex, .15[-z.q2,z.q2]);
label.lft(btex $A$ etex, -z.b);
label.rt(btex $B$ etex, z.b);
label.lft(btex $C$ etex, -z.q2);
label.rt(btex $D$ etex, z.q1);
endfig;

beginfig(6)
save u;
u:=1cm;

z.a=(2.3,0)*u;
z.b=z.a+z.c;
z.c=(0,2)*u;
z.d=(0,0)*u;

z.p=(1.4,-.5)*u;
z.q=(1.7,.4)*u;

z.m=.3[z.c,z.d];




save p; path p[];
p0= z.d--z.p--z.p+z.c--z.c--cycle;
p1= z.d--z.q--z.q+z.c--z.c;

draw p0;
draw p1 cutbefore subpath (1,3) of p0;
draw p1 cutafter subpath (1,3) of p0 dashed evenly;
draw z.a--z.b penbold;
draw z.c--z.d penbold;
dOt z.m;


label(btex $P$ etex, .15[z.q+z.c,z.d]);
label(btex $Q$ etex, .15[z.p,z.c]);
label.bot(btex $A$ etex, z.a);
label.top(btex $B$ etex, z.b);
label.top(btex $C$ etex, z.c);
label.bot(btex $D$ etex, z.d);
label.lft(btex $M$ etex, z.m);

endfig;

beginfig(7)
save u;
u:=1cm;

z.c=(0,2)*u;
z.d=(0,0)*u;

z.p=(1.2,-.6)*u;
z.q=(1.7,.4)*u;


save p; path p[];
p0= z.d--z.p--z.p+z.c--z.c--cycle;
p1= z.d--z.q--z.q+z.c--z.c;

draw p0;
draw p1 cutbefore subpath (1,3) of p0;
draw p1 cutafter subpath (1,3) of p0 dashed evenly;

draw z.c--z.d penbold;
draw z.p+z.c--z.p penbold;
draw z.q+z.c--z.q penbold;

whitelabel(btex $N$ etex, .15[z.q+z.c/3,z.d]);
whitelabel(btex $M$ etex, .25[z.p,2*z.c/3]);

label.top(btex $A$ etex, z.c);
label.bot(btex $B$ etex, z.d);
label.top(btex $C$ etex, z.q+z.c);
label.bot(btex $D$ etex, z.q);
label.top(btex $E$ etex, z.p+z.c);
label.bot(btex $F$ etex, z.p);

endfig;

beginfig(8)
save u;
u:=1.4cm;

z.x=(2.4,0)*u;
z.y=(.6,1)*u;
z.z=(0,1.5)*u;

z.a=.4*z.x+.5*z.y;
z.b=.8*z.x+.2*z.y;
z.c=.65z.x+.85*z.y;

z.s=z.z-.2*z.x;

z.aa=z.a+z.s;
z.bb=z.b+z.s;
z.cc=z.c+z.s;

draw z.b--z.a--z.c;
draw z.bb--z.aa--z.cc;

z.e=z.z/2+2*z.x;

save p; path p[];
p0=z.e+z.y..z.x+z.y{left}--z.y--origin--z.x{right}..z.e;
p1=z.e+z.y..z.z+z.x+z.y{left}--z.z+z.y--z.z--z.z+z.x{right}..z.e;


draw p0 cutafter p1 dashed evenly;
draw p0 cutbefore subpath (4,5) of p1;
draw p1;

draw z.x--z.x+z.y;
draw z.x+z.z--z.x+z.z+z.y;
draw z.e--z.e+z.y;

label.lrt(btex $E$ etex, z.e);
label.rt(btex $D$ etex, z.e+z.y);

label.lft(btex $A$ etex, z.aa);
label.rt(btex $B$ etex, z.bb);
label.rt(btex $C$ etex, z.cc);
label.lft(btex $A_1$ etex, z.a);
label.rt(btex $B_1$ etex, z.b);
label.rt(btex $C_1$ etex, z.c);

label(btex $P$ etex, .15[z.z,z.x+z.y+z.z]);
label(btex $Q$ etex, .15[origin,z.x+z.y]);

endfig;

beginfig(9)
save u;
u:=1cm;

z.x=(2.4,0)*u;
z.y=(.6,1)*u;
z.z=(0,1.5)*u;

z.top=.3*z.x+1.6*z.z;
z.bot=.7*z.x-.6*z.z;



save p; path p[];
p0=origin--z.x--z.x+z.y--z.y--cycle;
p1=z.z--z.z+z.x--z.z+z.x+z.y--z.z+z.y--cycle;
p2=z.bot--z.top--z.top+z.y--z.bot+z.y--cycle;

z.a=subpath (0,1) of p1 intersectionpoint subpath (0,1) of p2;
z.b=z.a+z.y;
z.c=subpath (0,1) of p0 intersectionpoint subpath (0,1) of p2;
z.d=z.c+z.y;

draw p0 cutbefore subpath (0,1) of p2 cutbefore subpath (0,1) of p2;
draw p0 cutafter subpath (2,3) of p2;
draw p0 cutbefore subpath (2,3) of p2 cutafter subpath (0,1) of p2dashed evenly;

draw p1 cutbefore subpath (1,2) of p2;
draw p1 cutafter subpath (2,3) of p2;
draw p1 cutbefore subpath (2,3) of p2 cutafter subpath (0,1) of p2dashed evenly;

draw p2 cutafter subpath (2,2.7) of p1;
draw p2 cutbefore subpath (.7,1) of p0;
draw p2 cutbefore subpath (.7,1) of p1 cutafter subpath (2,3) of p0;
draw p2 cutafter subpath (.7,1) of p1 cutbefore subpath (1,2) of p1 dashed evenly;
draw p2 cutafter subpath (.7,1) of p0 cutbefore subpath (2,2.5) of p0 dashed evenly;

draw z.a--z.b;
draw z.c--z.d;

label.urt(btex $P$ etex, .05[z.z,z.x+z.y+z.z]);
label.urt(btex $Q$ etex, .05[origin,z.x+z.y]);
label.llft(btex $R$ etex, .1[z.top+z.y,z.bot]);

label.llft(btex $A$ etex, z.a);
label.urt(btex $B$ etex, z.a+z.y);
label.llft(btex $C$ etex, z.c);
label.urt(btex $D$ etex, z.c+z.y);
endfig;

beginfig(10)
save u;
u:=1.4cm;

z.x=(2.4,0)*u;
z.y=(.6,1)*u;
z.z=(0,1.5)*u;

z.a=.4*z.x+.5*z.y;
z.b=.8*z.x+.2*z.y;
z.c=.65z.x+.85*z.y;

z.s=z.z-.2*z.x;

z.aa=z.a+z.s;
z.bb=z.b+z.s;
z.cc=z.c+z.s;

draw z.b--z.a--z.c--cycle pensemibold;
draw z.bb--z.aa--z.cc--cycle pensemibold;

z.e=z.z/2+2*z.x;

save p; path p[];
p0=z.x+z.y--z.y--origin--z.x;
p1=z.z+z.x+z.y--z.z+z.y--z.z--z.z+z.x;


draw p0;
draw p1;

draw z.x--z.x+z.y;
draw z.x+z.z--z.x+z.z+z.y;

draw z.a--z.aa cutafter p1 penhair;
draw z.a--z.aa cutbefore p1 penhair dashed evenly;
draw z.b--z.bb cutafter p1 penhair;
draw z.b--z.bb cutbefore p1 penhair dashed evenly;
draw z.c--z.cc cutafter p1 penhair;
draw z.c--z.cc cutbefore p1 penhair dashed evenly;

rimmark(z.a--z.b,z.aa--z.bb);
rimmark2(z.a--z.c,z.aa--z.cc);


label.lft(btex $A$ etex, z.aa);
whitelabel.rt(btex $B$ etex, z.bb);
label.rt(btex $C$ etex, z.cc);
label.lft(btex $A_1$ etex, z.a);
label.rt(btex $B_1$ etex, z.b);
label.rt(btex $C_1$ etex, z.c);

label(btex $P$ etex, .85[z.z,z.x+z.y+z.z]);
label(btex $Q$ etex, .15[origin,z.x+z.y]);

endfig;



beginfig(11)
save u;
u:=1cm;

z.x=(2,.6)*u;
z.y=(0,2.5)*u;

draw origin--z.x--z.x+z.y--z.y--cycle;

z.a0=.8*z.x+.1*z.y;
z.a1=.8*z.x+.9*z.y;
z.b0=.2*z.x+.1*z.y;
z.b1=.2*z.x+.9*z.y;
z.aa=.4[z.b0,z.b1];

draw z.a0--z.a1;
draw z.b0--z.b1;

dOt z.aa;

label.lft(btex $A$ etex, z.aa);
label.rt(btex $a$ etex, .9[z.a0,z.a1]);
label.rt(btex $b$ etex, .9[z.b0,z.b1]);
endfig;

beginfig(12)
save u;
u:=1.4cm;

z.x=(2.4,0)*u;
z.y=(.6,1)*u;
z.z=(0,1.5)*u;

z.a=.4*z.x+.9*z.y;
z.d=.35*z.x+.2*z.y;
z.c=.9*z.x+.3*z.y;

z.s=z.z-.2*z.x;

z.b=z.a+z.s;
z.d1=z.d+z.s;
z.c1=z.c+z.s;

z.a2=1.7[z.a,z.b];
z.c2=1.7[z.c,z.c1];
z.d2=1.7[z.d,z.d1];

draw z.d--z.a--z.c pensemibold;
draw z.d1--z.b--z.c1 pensemibold;

z.e=z.z/2+2*z.x;

save p; path p[];
p0=z.x+z.y--z.y--origin--z.x;
p1=z.z+z.x+z.y--z.z+z.y--z.z--z.z+z.x;


draw p0 cutafter (z.c1--z.c);
draw p0 cutbefore (z.d1--z.d);
draw p0 cutbefore (z.c1--z.c) cutafter (z.d1--z.d) dashed evenly;
draw p1 cutafter (z.c1--z.c2--z.a2);
draw p1 cutbefore (z.c1--z.c2--z.a2) cutafter (z.d2--z.d1) dashed evenly;
draw p1 cutbefore (z.d2--z.d1);

draw z.x--z.x+z.y;
draw z.x+z.z--z.x+z.z+z.y;

draw z.a--z.b cutafter p1 penhair;
draw z.a--z.b cutbefore p1 penhair dashed evenly;
draw z.d--z.d1 cutafter p1 penhair;
draw z.d--z.d1 cutbefore p1 penhair dashed evenly;
draw z.c--z.c1 cutafter p1 penhair;
draw z.c--z.c1 cutbefore p1 penhair dashed evenly;
draw z.b--z.a2 penhair;
draw z.c1--z.c2 penhair;
draw z.d1--z.d2 penhair;
draw z.c2--z.a2--z.d2 penhair;

whitelabel.lft(btex $A$ etex, z.b);
whitelabel.lft(btex $D_1$ etex, z.d1);
label.rt(btex $C_1$ etex, z.c1);
whitelabel.lft(btex $B$ etex, z.a);
label.lft(btex $D$ etex, z.d);
whitelabel.rt(btex $C$ etex, z.c);

label.llft(btex $M$ etex, z.c2);
label.rt(btex $N$ etex, z.d2);


label(btex $P$ etex, .85[origin,z.x+z.y]);
label(btex $Q$ etex, .85[z.z,z.x+z.y+z.z]);
endfig;

beginfig(13)
save u;
u:=1.4cm;

z.x=(2.5,0)*u;
z.y=(1,1)*u;

z.A=.5*z.x+.5*z.y;

z.a=.2*z.x+.3*z.y;
z.b=.3*z.x;
z.s=(0,-1)*u;

draw origin--z.x--z.x+z.y--z.y--cycle;
draw z.A-z.a--z.A+z.a pensemibold;
draw z.A-z.b--z.A+z.b;

draw z.s+z.A-z.b--z.s+z.A+z.b pensemibold;

dOt z.A;

label.ulft(btex $A$ etex, z.A);
label.rt(btex $a$ etex, z.A+z.a);
label.rt(btex $b_1$ etex, z.A+z.b);
label.rt(btex $b$ etex, z.s+z.A+z.b);
endfig;

beginfig(14)
save u;
u:=1.8cm;

z.c=origin;
z.q1=(1,.8)*u;
z.q2=(1,-.7)*u;
z.p1=(.8,-.2)*u;
z.b=.3[z.p1,z.p2]=.5[z.q1,z.q2];
z.a=.3[z.q1,-z.q2];
z.aa=.7*z.b;
z.c0=.05[-z.p1,z.p2];
z.c1=.75[z.p1,-z.p2];

save p; path p[];
p0=z.p2--(-z.p1)--(-z.p2)--z.p1--cycle;
p1=z.q1--z.q2--(-z.q1)--(-z.q2)--cycle;
p3=z.a--(-z.a);
p4=z.b--(-z.b);
p5=z.c0--z.c1;

draw p0 cutbefore subpath (2.4,3) of p1;
draw p0 cutbefore subpath (0,.4) of p1 cutafter subpath (2.4,3) of p1 dashed evenly;
draw p0 cutafter subpath (0,.4) of p1;

draw p1 cutbefore subpath (1,2) of p0;
draw p1 cutafter subpath (2,3) of p0;
draw (p1 cutafter subpath (1,3) of p0) cutbefore subpath (2,3) of p0 dashed evenly;

draw p3 cutafter p4 pensemibold;
draw p3 cutbefore p4 cutafter p0 dashed evenly pensemibold;
draw p3 cutbefore subpath (2,3) of p0 pensemibold;

draw p4 pensemibold;

draw p5 cutafter p4 dashed evenly pensemibold;
draw p5 cutbefore p4 pensemibold;

dOt z.aa;

label.top(btex $A$ etex, z.aa);
label(btex $N$ etex, .1[-z.p2,z.p2]+(0,2));
label(btex $M$ etex, .15[-z.q2,z.q2]);
label.ulft(btex $a$ etex, .6*z.a);
label.rt(btex $b$ etex, .7[z.c0,z.c1]);
label.top(btex $c$ etex, -z.aa/2);
endfig;

beginfig(15)
save u;
u:=1cm;

z.x=(3,0)*u;
z.y=(1,1.5)*u;
z.z=(0,2)*u;

z.O=.5*z.x+.8*z.y;
z.A=z.O+z.z;
z.A1=z.O-z.z;
z.B=.8*z.x+.5*z.y;
z.C=.2*z.x+.2*z.y;
z.D=.6[z.B,z.C];

save p; path p[];
p0=origin--z.x--z.x+z.y--z.y--cycle;

mark_rt_angle(z.A, z.O, z.B); 
mark_rt_angle(z.A, z.O, z.C); 

draw p0;

draw z.O--z.A;
draw z.O--z.A1 cutafter p0 dashed evenly;
draw z.O--z.A1 cutbefore p0;

draw z.D--z.O--z.B--z.C--z.O;

draw z.B--z.A;
draw z.B--z.A1 cutafter p0 dashed evenly;
draw z.B--z.A1 cutbefore p0;

draw z.C--z.A;
draw z.C--z.A1 cutafter p0 dashed evenly;
draw z.C--z.A1 cutbefore p0;

draw z.D--z.A;
draw z.D--z.A1 cutafter p0 dashed evenly;
draw z.D--z.A1 cutbefore p0;

label.top(btex $A$ etex, z.A);
label.bot(btex $A_1$ etex, z.A1);
whitelabel.bot(btex $B$ etex, z.B);
whitelabel.bot(btex $C$ etex, z.C);
whitelabel.bot(btex $D$ etex, z.D);

whitelabel.llft(btex $M$ etex, z.x+z.y+(-4,0));

whitelabel.bot(btex $O$ etex, z.O+(0,-2));
endfig;

beginfig(16)
save u;
u:=1cm;

z.x=(3,0)*u;
z.y=(1,1.5)*u;
z.z=(0,2)*u;

z.O=.5*z.x+.8*z.y;
z.A=z.O+z.z;
z.B=.8*z.x+.5*z.y;
z.C=.1*z.x+.5*z.y;
z.D=.4*z.x+.2*z.y;

save p; path p[];
p0=origin--z.x--z.x+z.y--z.y--cycle;

mark_rt_angle(z.A,z.O,z.B);
mark_rt_angle(z.A,z.O,z.C);
mark_rt_angle(z.A,z.O,z.D);

draw p0;

draw z.O--z.A;

draw z.D--z.O;
draw z.B--z.O--z.C;

draw z.B--z.A;

draw z.C--z.A;

draw z.D--z.A;

label.top(btex $A$ etex, z.A);
whitelabel.bot(btex $C$ etex, z.B);
whitelabel.bot(btex $E$ etex, z.C);
whitelabel.bot(btex $D$ etex, z.D);

whitelabel.llft(btex $P$ etex, z.x+z.y+(-4,0));

whitelabel.bot(btex $B$ etex, z.O+(0,-2));
endfig;

beginfig(17)
save u;
u:=1.2cm;

z.x=(3,0)*u;
z.y=(1,1.5)*u;
z.z=(0,2)*u;

z.B=.2*z.x+.5*z.y;
z.A=z.B+z.z;
z.D=.85*z.x+.85*z.y;
z.E=.85*z.x+.15*z.y;
z.C=.5[z.D,z.E];

mark_rt_angle(z.E,z.C,z.B);
mark_rt_angle(z.C,z.B,z.A);
mark_rt_angle(z.D,z.C,z.A);

save p; path p[];
p0=origin--z.x--z.x+z.y--z.y--cycle;

draw p0;

draw z.B--z.A;

draw z.E--z.B;
draw z.C--z.B--z.D;

draw z.C--z.A;
draw z.D--z.E;

draw z.D--z.A;

draw z.E--z.A;

rimmark(z.C--z.D,z.C--z.E);



label.top(btex $A$ etex, z.A);
whitelabel.rt(btex $C$ etex, z.C);
whitelabel.rt(btex $E$ etex, z.D);
whitelabel.rt(btex $D$ etex, z.E);

label.urt(btex $P$ etex, (4,0));

label.lft(btex $B$ etex, z.B);
endfig;

beginfig(18)
save u;
u:=1cm;

z.x=(3.5,0)*u;
z.y=(1,1.5)*u;
z.z=(0,2)*u;

z.s=z.x/2;

z.B=.35*z.x+.5*z.y;
z.A=z.B+z.z;
z.E=.15*z.x+.85*z.y;
z.F=.15*z.x+.15*z.y;


z.C=z.A+z.s;
z.D=z.B+z.s;
z.G=z.E+z.s;
z.H=z.F+z.s;

draw origin--z.x--z.x+z.y--z.y--cycle;
draw z.A--z.B--z.E;
draw z.F--z.B;
draw z.C--z.D--z.G;
draw z.H--z.D;

label.top(btex $A$ etex, z.A);
label.rt(btex $B$ etex, z.B);
label.top(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);

label.lft(btex $E$ etex, z.E);
label.lft(btex $F$ etex, z.F);
label.lft(btex $G$ etex, z.G);
label.lft(btex $H$ etex, z.H);

label.llft(btex $P$ etex, z.x+z.y-(4,0));
endfig;

beginfig(19)
save u;
u:=1cm;

z.x=(3.5,0)*u;
z.y=(1,1.5)*u;
z.z=(0,2)*u;

z.B=.2*z.x+.6*z.y;
z.A=z.B+z.z;
z.E=.7*z.x;
z.E1=.8*z.x+z.y;
z.D=.6[z.E,z.E1];
z.C=z.D+z.z;
z.C1=.4[z.E,z.E1]+z.z;

save p; path p[];
p0=origin--z.x--z.x+z.y--z.y--cycle;
p1=z.E--z.E1--z.E1+z.z--z.E+z.z--cycle;

draw p0 cutbefore subpath (.9,1.1) of p1 cutafter subpath (2,4) of p1 dashed evenly;
draw p0 cutbefore subpath (2,4) of p1;
draw p0 cutafter subpath (.9,1.1) of p1;
draw p1;

draw z.A--z.B pensemibold;
draw z.D--z.C pensemibold;
draw z.D--z.C1;

dOt z.B, z.D;

label.top(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.top(btex $C$ etex, z.C);
label.ulft(btex $C_1$ etex, z.C1);
label.rt(btex $D$ etex, z.D);
label.bot(btex $E$ etex, z.E);

label.llft(btex $P$ etex, z.x+z.y-(4,0));
label.lrt(btex $Q$ etex, z.E+z.z);
endfig;

beginfig(20)
save u;
u:=1cm;

z.x=(3.5,0)*u;
z.y=(1,1.5)*u;
z.z=(0,2)*u;

z.B=.2*z.x+.5*z.y;
z.C=.7*z.x+.9*z.y;
z.D=.7*z.x+.2*z.y;

z.B1=z.B-z.z;
z.C1=z.C-z.z;
z.D1=z.D-z.z;

z.s=.5*z.z;

z.A=z.B+z.s;
z.C2=z.C+z.s;
z.D2=z.D+z.s;

save p; path p[];
p0=origin--z.x--z.x+z.y--z.y--cycle;
p1=-z.z--(-z.z)+z.x--(-z.z)+z.x+z.y--(-z.z)+z.y--cycle;

p4=z.C--z.C2--z.A--z.D2--z.D;


draw p0 cutbefore subpath (0,2) of p4 cutafter (z.B--z.A) dashed evenly;
draw p0 cutafter subpath (0,2) of p4;
draw p0 cutbefore (z.B--z.A);
draw p1 cutafter (z.C--z.C1);
draw p1 cutafter (z.B--z.B1) cutbefore (z.C--z.C1) dashed evenly;
draw p1 cutbefore (z.B--z.B1);
draw z.A--z.B--z.D;
draw z.B1--z.C1 cutbefore (z.D--z.D1);
draw z.B1--z.C1 cutafter (z.D--z.D1) dashed evenly;
draw p4;
draw z.B--z.C cutbefore (z.D--z.D2);
draw z.B--z.C cutafter (z.D--z.D2) dashed evenly;
draw z.B--z.B1--z.D1 cutbefore p0;
draw z.B--z.B1--z.D1 cutafter p0 dashed evenly;
draw z.C--z.C1 cutbefore p0;
draw z.C--z.C1 cutafter p0 dashed evenly;
draw z.D--z.D1 cutbefore p0;
draw z.D--z.D1 cutafter p0 dashed evenly;

label.top(btex $A$ etex, z.A);
label.lft(btex $B$ etex, z.B);
label.bot(btex $B_1$ etex, z.B1);
label.lrt(btex $C$ etex, z.C);
label.lrt(btex $C_1$ etex, z.C1);
label.rt(btex $D$ etex, z.D);
label.rt(btex $D_1$ etex, z.D1);

label.urt(btex $P$ etex, (6,0));
label.urt(btex $Q$ etex, (6,0)-z.z);
endfig;

beginfig(21)
save u;
u:=1.4cm;

z.x=(2.4,0)*u;
z.y=(.6,1)*u;
z.z=(0,1.5)*u;


z.e=z.z/2+2*z.x;
z.A=z.x+z.y/2+z.z;
z.B=z.x+z.y/2;
z.C=z.e+z.y/2;

z.s=.6*z.z;



save p; path p[];
p0=z.e+z.y..z.x+z.y{left}--z.y--origin--z.x{right}..z.e;
p1=z.e+z.y..z.z+z.x+z.y{left}--z.z+z.y--z.z--z.z+z.x{right}..z.e;
p2=z.B-z.s--z.A+z.s--z.e+z.y/2+z.z/2+z.s--z.e+z.y/2-z.z/2-z.s--cycle;

draw z.A{right}..z.C;
draw z.B{right}..z.C cutbefore p1 dashed evenly;
draw z.B{right}..z.C cutafter p1;

draw p0 cutafter (z.A--z.B) dashed evenly;
draw p0 cutbefore (z.A--z.B);
draw p1 cutbefore subpath (0,1) of p2;
draw p1 cutbefore subpath (2,3) of p2 cutafter subpath (0,1) of p2 dashed evenly;
draw p1 cutafter subpath (2,3) of p2;
draw p2 cutafter subpath (3,5) of p1 cutbefore z.B;
draw p2 cutafter z.B cutbefore subpath (3,5) of p0 dashed evenly;
draw p2 cutafter subpath (3,5) of p0;
draw p2 cutafter z.A cutbefore subpath (3,5) of p1 dashed evenly;
draw p2 cutbefore z.A;

draw z.e--z.e+z.y;

label.lft(btex $A$ etex, z.A);
label.lft(btex $B$ etex, z.B);
label.lrt(btex $C$ etex, z.C);

label(btex $P$ etex, .15[z.z,z.x+z.y+z.z]);
label(btex $Q$ etex, .15[origin,z.x+z.y]);
label.llft(btex $R$ etex, z.e+z.y/2+z.z/2+z.s);
endfig;


beginfig(22)
save u;
u:=1cm;

z.x=(3.5,0)*u;
z.y=(1,1.5)*u;
z.z=(0,1.5)*u;

z.B=.2*z.x+.5*z.y;
z.C=.7*z.x+.9*z.y;
z.D=.7*z.x+.2*z.y;

z.B1=z.B-z.z;
z.C1=z.C-z.z;
z.D1=z.D-z.z;

z.s=z.z;

z.A=z.B+z.s;
z.C2=z.C+z.s;
z.D2=z.D+z.s;

save p; path p[];
p0=origin--z.x--z.x+z.y--z.y--cycle;
p1=-z.z--(-z.z)+z.x--(-z.z)+z.x+z.y--(-z.z)+z.y--cycle;

p4=z.C--z.C2--z.A--z.D2--z.D;


draw p0 cutbefore subpath (0,2) of p4 cutafter (z.B--z.A) dashed evenly;
draw p0 cutafter subpath (0,2) of p4;
draw p0 cutbefore (z.B--z.A);
draw z.A--z.B pensemibold;
draw z.B--z.D ;
draw z.B1--z.C1 cutbefore (z.D--z.D1);
draw z.B1--z.C1 cutafter (z.D--z.D1) dashed evenly;
draw p4;
draw z.B--z.C cutbefore (z.D--z.D2);
draw z.B--z.C cutafter (z.D--z.D2) dashed evenly;
draw z.B--z.B1 cutbefore p0 pensemibold;
draw z.B1--z.D1 cutbefore p0;
draw z.B--z.B1 cutafter p0 dashed evenly pensemibold;
draw z.C--z.C1 cutbefore p0;
draw z.C--z.C1 cutafter p0 dashed evenly;
draw z.D--z.D1 cutbefore p0;
draw z.D--z.D1 cutafter p0 dashed evenly;

label.top(btex $A$ etex, z.A);
label.lft(btex $C$ etex, z.B);
label.bot(btex $B$ etex, z.B1);
label.lrt(btex $D$ etex, z.C);
label.rt(btex $E$ etex, z.D);

label.llft(btex $P$ etex, z.C2+(0,-4));
label.ulft(btex $Q$ etex, z.D1+(0,4));
label.urt(btex $R$ etex, (4,0));
endfig;

beginfig(23)
save u;
u:=1cm;

z.x=(1.4,0)*u;
z.y=(.8,.7)*u;
z.z=(0,1.5)*u;

z.C=z.y+.4*z.z;

save p; path p[];
p0=z.x+z.y--(-z.x+z.y)--(-z.x-z.y)--(z.x-z.y)--cycle;
p1=z.y--z.z+z.y--z.z-z.y--(-z.y)--cycle;
p2=z.x--z.x+z.C--(-z.x+z.C)--(-z.x)--cycle;

mark_rt_angle(z.x, origin, -z.y); 
mark_rt_angle(z.x, origin, z.C);
mark_rt_angle(-z.y, origin, z.z);

draw p0 cutbefore -z.x;
draw p0 cutafter -z.x cutbefore (.1[z.x,z.x+z.C]--z.x+z.C) dashed evenly;
draw p0 cutafter (.1[z.x,z.x+z.C]--z.x+z.C);
draw p1 cutafter z.C dashed evenly;
draw p1 cutafter origin cutbefore z.C;
draw p1 cutbefore origin dashed evenly;
draw p2 cutafter z.C;
draw p2 cutbefore z.C cutafter subpath (1,3) of p1 dashed evenly;
draw (subpath (1,3) of p2) cutbefore subpath (1,2) of p1 cutafter subpath (2,3) of p1;
draw (subpath (3,4) of p2) cutbefore subpath (1,2) of p1 cutafter subpath (2,3) of p1 pensemibold;
draw p2 cutbefore subpath (2,3) of p1 cutafter origin dashed evenly;
draw p2 cutbefore origin pensemibold;
draw z.C--origin pensemibold;
draw origin--z.z pensemibold;
draw origin--(-z.y) pensemibold;

dOt origin;

label.rt(btex $A$ etex, z.x);
label.bot(btex $B$ etex, -z.y);
label.urt(btex $C$ etex, z.C);
label.ulft(btex $O$ etex, origin);
label.ulft(btex $M$ etex, z.z);

label.urt(btex $P$ etex, -z.x-z.y+(8,0));
label.llft(btex $Q$ etex, z.C+z.x+(-8,0));
label.llft(btex $R$ etex, z.y+z.z+(0,-6));
endfig;

beginfig(24)
save u;
u:=1cm;

z.x=(3.5,0)*u;
z.y=(1,1.5)*u;
z.z=(0,1.5)*u;

z.A=.2*z.x+.4*z.y;
z.B=z.A+z.z;
z.C=.7*z.x+.6*z.y;
z.O=z.C+z.z;

save p; path p[];
p0=origin--z.x--z.x+z.y--z.y--cycle;

draw p0;
draw z.A--z.B pensemibold;
draw z.C--z.O pensemibold;

dOt z.O,z.A;

label.bot(btex $A$ etex, z.A);
label.top(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.top(btex $O$ etex, z.O);

endfig;


beginfig(25)
save u;
u:=1.2cm;

z.x=(1.4,0)*u;
z.y=(.8,.7)*u;
z.z=(0,1.5)*u;

z.A1=-.4*z.x-.35*z.y;
z.A=z.A1+z.z;
z.B1=-z.A1;
z.B=z.B1+z.z;
z.C1=origin;
z.C=z.C1+z.z;

z.E=.5*z.x-.4*z.y;

z.F1=1.5*z.B1;
z.F=z.F1+z.z;


save p; path p[];
p0=z.x+z.y--(-z.x+z.y)--(-z.x-z.y)--(z.x-z.y)--cycle;

draw p0;

draw ddline(z.A1,z.F1)(.2,.2);
draw ddline(z.A,z.F)(.2,.2);
draw ddline(z.E,-z.E)(.2,.2);

draw z.C--z.C1;
draw z.A--z.A1;
draw z.B--z.B1;

draw z.F--z.F1;
draw z.F--z.E;

dOt z.C1;

label.ulft(btex $a$ etex, -1.2*z.E);
label.lft(btex $b$ etex, (-.2)[z.A,z.F]);

label.top(btex $A$ etex, z.A);
label.bot(btex $A_1$ etex, z.A1);
label.top(btex $B$ etex, z.B);
label.bot(btex $B_1$ etex, z.B1);
label.top(btex $C$ etex, z.C);
label.bot(btex $C_1$ etex, z.C1);
label.bot(btex $E$ etex, z.E+(-1,0));
label.top(btex $F$ etex, z.F);
label.bot(btex $F_1$ etex, z.F1);
endfig;

beginfig(26)
save u;
u:=1cm;

z.c=(0,2)*u;
z.d=(0,0)*u;

z.p=(1.2,-.6)*u;
z.q=(1.7,.4)*u;


save p; path p[];
p0= z.d--z.p--z.p+z.c--z.c--cycle;
p1= z.d--z.q--z.q+z.c--z.c;

draw p0;
draw p1 cutbefore subpath (1,3) of p0;
draw p1 cutafter subpath (1,3) of p0 dashed evenly;

label.top(btex $A$ etex, z.c);
label.bot(btex $B$ etex, z.d);

label.llft(btex $Q$ etex, z.p+z.c);
label.llft(btex $P$ etex, z.q+z.c+(0,-4));

endfig;

beginfig(27)
save u;
u:=1cm;

z.o=(0,0)*u;
z.a=(0,2)*u;
z.m=(1.4,-.5)*u;
z.n=(1.9,-.4)*u;
z.p=(2,.2)*u;
z.q=(1.6,.7)*u;

z.aa=.1[z.m,z.a];
z.bb=.1[z.n+z.a/2,z.a/2];
z.cc=.1[z.p+z.a,z.o];

save p; path p[];
p0= z.o--z.m--z.m+z.a--z.a--cycle;
p1= z.o--z.n--z.n+z.a--z.a;
p2= z.o--z.p--z.p+z.a--z.a;
p3= z.o--z.q--z.q+z.a--z.a;

draw p0;
draw p1 cutbefore subpath (1,3) of p0;
draw p1 cutafter subpath (1,3) of p0 dashed evenly;
draw p2 cutbefore subpath (1,3) of p1;
draw p2 cutafter subpath (1,3) of p1 dashed evenly;
draw p3 cutbefore subpath (1,3) of p2;
draw p3 cutafter subpath (1,3) of p2 dashed evenly;

label.llft(btex $S$ etex, z.m+z.a);
whitelabel.llft(btex $R$ etex, z.n+z.a);
whitelabel.llft(btex $Q$ etex, z.p+z.a);
whitelabel.llft(btex $P$ etex, z.q+z.a+(0,-3));
label.top(btex $C$ etex, z.a);
label.bot(btex $D$ etex, .z.o);
endfig;


beginfig(28)
save u;
u:=.7cm;

z.x=(3.5,0)*u;
z.y=(1,1.5)*u;
z.z=(0,1.5)*u;

z.B=.2*z.x+.5*z.y;
z.C=.8*z.x+.8*z.y;
z.E=.7*z.x+.2*z.y;

z.B1=z.B-z.z;
z.C1=z.C-z.z;
z.E1=z.E-z.z;

z.s=2*z.z;

z.A=z.B+z.s;
z.C2=z.C+z.s;
z.E2=z.E+z.s;


z.ss=z.z;

z.BB=z.B+z.ss;
z.CC=z.C+z.ss;
z.EE=z.E+z.ss;

save p; path p[];
p0=origin--z.x--z.x+z.y--z.y--cycle;
p1=-z.z--(-z.z)+z.x--(-z.z)+z.x+z.y--(-z.z)+z.y--cycle;

p4=z.C--z.C2--z.A--z.E2--z.E;

markdashed_rt_angle(z.E,z.B,z.B1);
markdashed_rt_angle(z.C,z.B,z.A);


draw p0 cutbefore subpath (0,2) of p4 cutafter (z.B--z.A) dashed evenly;
draw p0 cutafter subpath (0,2) of p4;
draw p0 cutbefore (z.B--z.A);
draw z.A--z.B;
draw z.B--z.E ;
draw z.B1--z.C1 cutbefore (z.E--z.E1);
draw z.B1--z.C1 cutafter (z.E--z.E1) dashed evenly;
draw p4;
draw z.B--z.C cutbefore (z.E--z.E2);
draw z.B--z.C cutafter (z.E--z.E2) dashed evenly;
draw z.B--z.B1 cutbefore p0;
draw z.B1--z.E1 cutbefore p0;
draw z.B--z.B1 cutafter p0 dashed evenly;
draw z.C--z.C1 cutbefore p0;
draw z.C--z.C1 cutafter p0 dashed evenly;
draw z.E--z.E1 cutbefore p0;
draw z.E--z.E1 cutafter p0 dashed evenly;

draw z.BB--z.CC cutbefore (z.E--z.E2);
draw z.BB--z.CC cutafter (z.E--z.E2) dashed evenly;
draw z.BB--z.EE;

label.top(btex $A$ etex, z.A);
label.lft(btex $D$ etex, z.B);
label.bot(btex $B$ etex, z.B1);
label.rt(btex $C$ etex, z.C);
label.rt(btex $E$ etex, z.E);

label.lft(btex $D_1$ etex, z.BB);
label.rt(btex $C_1$ etex, z.CC);
label.rt(btex $E_1$ etex, z.EE);

label.llft(btex $P$ etex, z.C2+(0,-4));
whitelabel.ulft(btex $Q$ etex, z.E1+(0,4));
%label.urt(btex $R$ etex, (4,0));
endfig;

beginfig(29)
save u;
u:=1.2cm;

z.x=(2,0)*u;
z.y=(1,1)*u;
z.z=(0,2)*u;

z.o=.1*z.x+.7*z.y;
z.a=z.o+z.z;
z.m=.6*z.x+.2*z.y;
z.n=.7*z.x+.5*z.y;
z.p=.8*z.x+.8*z.y;

z.aa=.1[z.m,z.a];
z.bb=.1[z.n+z.a/2,z.a/2];
z.cc=.1[z.p+z.a,z.o];

save p; path p[];
p0= z.o--z.m--z.m+z.z--z.a--cycle;
p1= z.o--z.n--z.n+z.z--z.a;
p2= z.o--z.p--z.p+z.z--z.a;

p3=origin--z.x--z.x+z.y--z.y--cycle;

z.s=1.3*z.x;

p10=p0 shifted z.s;
p11=p1 shifted z.s;

draw p0;
draw p1 cutbefore subpath (1,2) of p0;
draw p1 cutafter subpath (1,2) of p0 dashed evenly;
draw p2 cutbefore subpath (1,3) of p1;
draw p2 cutafter subpath (1,3) of p1 dashed evenly;

draw p3 cutbefore subpath (3,4) of p0;
draw p3 cutafter subpath (3,4) of p0 cutbefore subpath (1,3) of p2 dashed evenly;
draw p3 cutafter subpath (1,3) of p2;

draw p10;
draw p11 cutbefore subpath (1,2) of p10;
draw p11 cutafter subpath (1,2) of p10 dashed evenly;

label.llft(btex $P$ etex, z.m+z.z);
whitelabel.llft(btex $Q_2$ etex, z.n+z.z);
label.llft(btex $P_1$ etex, z.m+z.z+z.s);
whitelabel.llft(btex $Q_1$ etex, z.n+z.z+z.s);
whitelabel.llft(btex $Q$ etex, z.p+z.z);
label.urt(btex $R$ etex, (7,0));
label.ulft(btex $A$ etex, z.a);
label.llft(btex $B$ etex, z.o);
label.rt(btex $D$ etex, z.m);
label.rt(btex $C_2$ etex, z.n);
label.rt(btex $C$ etex, z.p);

label.ulft(btex $A_1$ etex, z.a+z.s);
label.llft(btex $B_1$ etex, z.o+z.s);
label.rt(btex $D_1$ etex, z.m+z.s);
label.rt(btex $C_1$ etex, z.n+z.s);
endfig;

beginfig(30)
save u;
u:=1cm;

z.x=(2,0)*u;
z.y=(.6,.7)*u;
z.z=(0,1.8)*u;

z.C=z.y+.4*z.z;
z.E=.6*z.x;

save p; path p[];
p0=z.x+z.y--(-z.x+z.y)--(-z.x-z.y)--(z.x-z.y)--cycle;
p1=z.y--z.z+z.y--z.z-z.y--(-z.y)--cycle;
p2=z.x--z.x+z.C--(-z.x+z.C)--(-z.x)--cycle;

%mark_rt_angle(z.x, origin, -z.y); 
%mark_rt_angle(z.x, origin, z.C);
%mark_rt_angle(-z.y, origin, z.z);

draw p0 cutbefore ((-z.y+.1*z.z)--(-z.y+z.z));
draw p0 cutafter ((-z.y+.1*z.z)--(-z.y+z.z)) cutbefore z.y dashed evenly;
draw p0 cutafter z.y;
draw p1 ;
%draw p2 cutafter z.C;
%draw p2 cutbefore z.C cutafter subpath (1,3) of p1 dashed evenly;
%draw (subpath (1,3) of p2) cutbefore subpath (1,2) of p1 cutafter subpath (2,3) of p1;
%draw (subpath (3,4) of p2) cutbefore subpath (1,2) of p1 cutafter subpath (2,3) of p1 pensemibold;
%draw p2 cutbefore subpath (2,3) of p1 cutafter origin dashed evenly;
%draw p2 cutbefore origin pensemibold;
%draw z.C--origin pensemibold;
draw origin--z.z pensemibold;
draw z.y--(-z.y) pensemibold;
draw z.E--(-z.E) cutafter origin pensemibold;
draw z.E--(-z.E) cutbefore origin cutafter ((-z.y+.1*z.z)--(-z.y+z.z))  dashed evenly;
draw z.E--(-z.E) cutbefore  ((-z.y+.1*z.z)--(-z.y+z.z)) pensemibold;
dOt origin;

label.bot(btex $A$ etex, -z.y);
label.urt(btex $B$ etex, z.y);
label.lrt(btex $D$ etex, origin);
label.rt(btex $E$ etex, z.E);
label.lft(btex $E_1$ etex, -z.E);
label.ulft(btex $C$ etex, z.z);

label.urt(btex $P_1$ etex, -z.x-z.y+(8,0));
label.ulft(btex $P$ etex, z.x-z.y);
label.llft(btex $Q$ etex, z.y+z.z+(0,-9));
endfig;


beginfig(31)
save u;
u:=.8cm;

z.x=(1.5,0)*u;
z.y=(.6,.7)*u;
z.z=(0,1.8)*u;

z.C=z.y+.4*z.z;
z.E=.6*z.x;

save p; path p[];
p0=z.x+z.y--(-z.x+z.y)--(-z.x-z.y)--(z.x-z.y)--cycle;
p1=z.y--z.z+z.y--z.z-z.y--(-z.y)--cycle;
p2=z.x--z.x+z.C--(-z.x+z.C)--(-z.x)--cycle;

draw p0 cutbefore ((-z.y+.1*z.z)--(-z.y+z.z));
draw p0 cutafter ((-z.y+.1*z.z)--(-z.y+z.z)) cutbefore z.y dashed evenly;
draw p0 cutafter z.y;
draw p1 ;
draw origin--z.z pensemibold;
draw z.y--(-z.y) pensemibold;

draw z.E--origin cutafter origin pensemibold;


label.bot(btex $D$ etex, -z.y);
label.urt(btex $E$ etex, z.y);
label.lrt(btex $B$ etex, origin);
label.rt(btex $C$ etex, z.E);
label.ulft(btex $A$ etex, z.z);

label.urt(btex $Q$ etex, -z.x-z.y+(8,0));
label.llft(btex $P$ etex, z.y+z.z+(0,-9));
endfig;


beginfig(32)
save u;
u:=1cm;

z.x=(1.5,0)*u;
z.y=(.6,.7)*u;
z.z=(0,1.8)*u;

z.A=.7*z.z;
z.B=.7*z.x-.7*z.y;
z.C=z.y+.4*z.z;
z.F=.6*z.x;

save p; path p[];
p0=z.x+z.y--(-z.x+z.y)--(-z.x-z.y)--(z.x-z.y)--cycle;
p1=z.y--z.z+z.y--z.z-z.y--(-z.y)--cycle;

mark_rt_angle(z.F, origin, z.y);
mark_rt_angle(z.A, origin, z.y);

draw p0 cutbefore ((-z.y+.1*z.z)--(-z.y+z.z));
draw p0 cutafter ((-z.y+.1*z.z)--(-z.y+z.z)) cutbefore z.y dashed evenly;
draw p0 cutafter z.y;
draw p1 ;
draw origin--z.A pensemibold;
draw z.B--z.A pensemibold;
draw z.y--(-z.y) pensemibold;
draw z.F--origin cutafter origin pensemibold;

dOt z.A,z.B;

label.top(btex $A$ etex, z.A);
label.rt(btex $B$ etex, z.B);
label.bot(btex $D$ etex, -z.y);
label.urt(btex $E$ etex, z.y);
label.ulft(btex $C$ etex, origin);
label.rt(btex $F$ etex, z.F);

label.urt(btex $Q$ etex, -z.x-z.y+(8,0));
label.llft(btex $P$ etex, z.y+z.z+(0,-9));
endfig;

beginfig(33)
save u;
u:=1.2cm;

z.x=(2,0)*u;
z.y=(.7,1)*u;
z.z=(0,1.8)*u;

z.q0=.1*z.x+.8*z.y;
z.q1=.9*z.x+.5*z.y;
z.q2=z.q1+z.z;
z.q3=z.q0+z.z;

z.p0=.1*z.x+.1*z.y;
z.p1=.5*z.x+.9z.y;
z.p2=z.p1+z.z;
z.p3=z.p0+z.z;

z.B= (z.p0--z.p1) intersectionpoint (z.q0--z.q1);
z.A= (z.p2--z.p3) intersectionpoint (z.q2--z.q3);

save p; path p[];

p0=origin--z.x--z.x+z.y--z.y--cycle;
p1=z.q0--z.q1--z.q2--z.q3--cycle;
p2=z.p0--z.p1--z.p2--z.p3--cycle;

draw p0 cutbefore (z.q1--z.q2) cutafter (z.p0--z.p3) dashed evenly;
draw p0 cutbefore (z.p0--z.p3);
draw p0 cutafter (z.q1--z.q2);
draw p1 cutbefore z.B cutafter (z.p3--.5[z.p3,z.p2]);
draw p1 cutafter z.B dashed evenly;
draw p1 cutbefore (z.p3--.5[z.p3,z.p2]) dashed evenly;
draw p2 cutbefore (z.q2--.5[z.q2,z.q3]);
draw p2 cutbefore (z.q0--z.q1) cutafter (z.q2--.5[z.q2,z.q3]) dashed evenly;
draw p2 cutafter (z.q0--z.q1);
draw z.A--z.B pensemibold;

label.top(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);

label.lrt(btex $P$ etex, z.p3);
label.llft(btex $Q$ etex, z.q2);
label.ulft(btex $R$ etex, z.x);
endfig;

beginfig(34)
save u;
u:=1.2cm;

z.x=(2,0)*u;
z.y=(.7,1)*u;
z.z=(0,1.8)*u;

z.N=.5*z.x;
z.M=.4*z.x+.3*z.z;

z.A=.3*z.x+.7*z.y;
z.B=z.A+z.M;
z.C=.2*z.x+.2*z.y;
z.D=z.C+z.N;

z.O=1*z.x+1.3*z.y;
z.O1=1.4*z.x-.1*z.y;

save p; path p[];

p0=origin--z.x--z.x+z.y--z.y--cycle;

draw p0;

arcs(z.O+z.M,z.O,z.O+z.N,10);
arcs(z.O1+z.M,z.O1,z.O1+z.N,10);

drawarrow z.A--z.B pensemibold;
drawarrow z.C--z.D pensemibold;

drawdblarrow z.O+z.N--z.O--z.O+z.M pensemibold;

drawdblarrow z.O1+z.N--z.O1--z.O1+z.M pensemibold;

label.llft(btex $A$ etex, z.A);
label.urt(btex $B$ etex, z.B);
label.lft(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);

label.lft(btex $O$ etex, z.O);
label.urt(btex $M$ etex, z.O+z.M);
label.rt(btex $N$ etex, z.O+z.N);

label.lft(btex $O_1$ etex, z.O1);
label.urt(btex $M_1$ etex, z.O1+z.M);
label.rt(btex $N_1$ etex, z.O1+z.N);
endfig;

beginfig(35)
save u;
u:=1.2cm;

z.x=(2,0)*u;
z.y=(.7,1)*u;
z.z=(0,1.8)*u;

z.a=.2*z.x+.3*z.y;
z.b=.8*z.x+.8*z.y;
z.A=z.a+.8*z.z;
z.B=z.b+z.z;

z.m=.3[z.a,z.b];
z.n=.6[z.a,z.b];
z.M=z.m+whatever*z.z=whatever[z.A,z.B];
z.N=z.n+whatever*z.z=whatever[z.A,z.B];

save p; path p[];

p0=origin--z.x--z.x+z.y--z.y--cycle;

draw p0 cutafter (z.b--z.B);
draw p0 cutbefore (z.a--z.A);
draw p0 cutafter (z.a--z.A) cutbefore (z.b--z.B) dashed evenly;

draw z.a--z.b--z.B--z.A--cycle;
draw z.m--z.M;
draw z.n--z.N;

dOt z.a,z.b,z.A,z.B,z.m,z.M,z.n,z.N;

label.lft(btex $a$ etex, z.a);
label.rt(btex $b$ etex, z.b);
label.bot(btex $m$ etex, z.m);
label.bot(btex $n$ etex, z.n);

label.lft(btex $A$ etex, z.A);
label.rt(btex $B$ etex, z.B);
label.top(btex $M$ etex, z.M);
label.top(btex $N$ etex, z.N);

label.ulft(btex $P$ etex, z.x);
label(btex $Q$ etex, .6[z.n,z.B]);

endfig;

beginfig(36)
save u;
u:=1.2cm;

z.x=(2,0)*u;
z.y=(.7,1)*u;
z.z=(0,1.8)*u;

z.C=.8*z.x+.7*z.y;
z.A= z.C+z.z;
z.B=.2*z.x+.6*z.y;
z.D=.75*z.x+.3*z.y;


save p; path p[];

p0=origin--z.x--z.x+z.y--z.y--cycle;

arcs(z.A,z.B,z.C,10);

draw p0;

draw z.A--z.C--z.B--z.D--cycle;
draw z.A--z.B;

rimmark(z.B--z.C,z.B--z.D);

label.top(btex $A$ etex, z.A);
label.lft(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);

label.urt(btex $P$ etex, origin+(5,0));

endfig;

beginfig(37)
save u;
u:=1cm;

z.S=origin;
z.B=(-1.5,0)*u;
z.A=z.B rotated -30;
z.C=z.B rotated 50;
z.D=z.B rotated 100;
z.E=z.B rotated 130;
z.F=z.B rotated 190;

draw z.S--z.A;
draw z.S--z.B;
draw z.S--z.C;
draw z.S--z.D;
draw z.S--z.E;
draw z.S--z.F;


label.ulft(btex $A$ etex, z.A);
label.lft(btex $B$ etex, z.B);
label.llft(btex $C$ etex, z.C);
label.bot(btex $D$ etex, z.D);
label.lrt(btex $E$ etex, z.E);
label.rt(btex $F$ etex, z.F);
label.top(btex $S$ etex, z.S+(2,0));
endfig;

beginfig(38)
save u,k;
u:=1cm;
k:=.7;

z.S=origin;
z.A=(-1,-2)*u;
z.B=(-.5,-2.2)*u;
z.C=(1,-2.1)*u;
z.D=(1.4,-1.8)*u;
z.E=(.2,-1.7)*u;

z.a=k*z.A;
z.b=k*z.B;
z.c=k*z.C;
z.d=k*z.D;
z.e=k*z.E;

draw z.S--z.A;
draw z.S--z.B;
draw z.S--z.C;
draw z.S--z.D;
draw z.S--z.E dashed evenly;

draw z.a--z.b--z.c--z.d;
draw z.d--z.e--z.a dashed evenly;


label.llft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.lrt(btex $D$ etex, z.D);
label.bot(btex $E$ etex, z.E);

label.ulft(btex $a$ etex, z.a);
whitelabel.urt(btex $b$ etex, z.b+(1,0));
label.llft(btex $c$ etex, z.c);
label.urt(btex $d$ etex, z.d);
label.urt(btex $e$ etex, z.e);

label.top(btex $S$ etex, z.S);
endfig;

beginfig(39)
save u,k;
u:=1cm;
k:=.7;

z.S=origin;
z.A=(-1,-2)*u;
z.B=(-.2,-1.9)*u;
z.C=(1,-2.1)*u;
z.D=(1.4,-1.8)*u;
z.E=(.4,-1.5)*u;

z.a=k*z.A;
z.b=k*z.B;
z.c=k*z.C;
z.d=k*z.D;
z.e=k*z.E;

draw z.S--z.A;
draw z.S--z.B;
draw z.S--z.C;
draw z.S--z.D;
draw z.S--z.E dashed evenly;

draw z.a--z.b--z.c--z.d;
draw z.d--z.e--z.a dashed evenly;


label.llft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.lrt(btex $D$ etex, z.D);
label.bot(btex $E$ etex, z.E);

label.ulft(btex $a$ etex, z.a);
whitelabel.urt(btex $b$ etex, z.b+(1,0));
label.lrt(btex $c$ etex, z.c+(0,2));
label.urt(btex $d$ etex, z.d);
whitelabel.top(btex $e$ etex, z.e);

label.top(btex $S$ etex, z.S);
endfig;

beginfig(40)
save u;
u:=1.4cm;



z.u=(0,1) rotated -15;
z.v=(0,1) rotated -15 xscaled y.u;
z.w=(0,1) rotated 35 xscaled y.u;

transform V;
V=identity slanted x.v yscaled y.v rotated -140; 
transform W;
W=identity slanted x.w yscaled y.w rotated -140;

save p; path p[];

p0=circle(origin, 14);
p1=p0 transformed V;
p2=p0 transformed W;

z.s=origin;
z.a=(2,0)*u;
z.b=(1.5,1)*u;

z.S= z.s transformed V;
z.A=z.a  transformed V;
z.B=z.b  transformed V;
z.D=z.b  transformed W;
z.C=1.4[z.A,z.D];

rimmark(z.S--z.B,z.S--z.D);
rimmarkS(z.S,z.A);

draw ddline(z.S,z.A)(0,.2);
draw ddline(z.S,z.B)(0,.2);
draw ddline(z.S,z.C)(0,.2);
draw ddline(z.S,z.D)(0,.2) dashed evenly;
draw z.A--z.B--z.C;
draw z.A--z.C dashed evenly;

draw p1 cutafter (z.S--z.B);
draw p2 cutafter (z.S--z.D) dashed evenly;

label.ulft(btex $A$ etex, z.A);
label.lrt(btex $B$ etex, z.B);
label.urt(btex $C$ etex, z.C);
label.urt(btex $D$ etex, z.D+(-1,1));
label.top(btex $S$ etex, z.S);
endfig;

beginfig(41)
save u;
u:=1cm;

z.S=origin;
z.A=(-1.5,-2)*u;
z.B=(-.7,-2.3)*u;
z.C=(.8,-2.2)*u;
z.D=(1.5,-1.9)*u;
z.E=(.1,-1.6)*u;

draw ddline(z.S,z.A)(0,.2);
draw ddline(z.S,z.B)(0,.2);
draw ddline(z.S,z.C)(0,.2);
draw ddline(z.S,z.D)(0,.2);
draw ddline(z.S,z.E)(0,.2) dashed evenly;

draw z.A--z.B--z.C--z.D;
draw z.A--z.E--z.D dashed evenly;

label.ulft(btex $A$ etex, z.A);
label.lrt(btex $B$ etex, z.B);
label.llft(btex $C$ etex, z.C);
label.urt(btex $D$ etex, z.D);
label.ulft(btex $E$ etex, z.E);
label.top(btex $S$ etex, z.S);
endfig;


beginfig(42)
save u;
u:=1cm;

z.u=(0,1) rotated -25;
z.v=(0,1) rotated -15 xscaled y.u;
z.w=(0,1) rotated 35 xscaled y.u;

transform V;
V=identity slanted x.v yscaled y.v rotated -110; 
transform W;
W=identity slanted x.w yscaled y.w rotated -110;
transform T;
T=identity shifted ((2.5,0)*u);

save p; path p[];

p0=circle(origin, 14);
p1=p0 transformed V scaled 1.1;

p2=p0 transformed W scaled .9;
p22=p0 transformed W scaled 1;

z.s=origin;
z.a=(2,0)*u;
z.b=(1.8,1.2)*u;

picture ASB;
ASB:=image(
arcs(z.a,z.s,z.b,14);
);

picture ASC;
ASC:=image(
dashedarcs(z.a,z.s,z.b,14);
);

z.S= z.s transformed V;
z.A=z.a  transformed V;
z.B=z.b  transformed V;
z.C=z.b  transformed W;

draw ASB transformed V; 
draw ASC transformed W; 

draw ddline(z.S,z.A)(0,.2);
draw ddline(z.S,z.B)(0,.2);
draw ddline(z.S,z.C)(0,.2);
draw z.A--z.B--z.C;
draw z.A--z.C dashed evenly;

draw currentpicture transformed T;

label.ulft(btex $A$ etex, z.A);
label.ulft(btex $A_1$ etex, z.A transformed T);
label.rt(btex $B$ etex, z.B);
label.rt(btex $B_1$ etex, z.B transformed T);
label.urt(btex $C$ etex, z.C+(-1,1));
label.urt(btex $C_1$ etex, (z.C+(-1,1)) transformed T);
label.top(btex $S$ etex, z.S );
label.top(btex $S_1$ etex, z.S transformed T);
endfig;

beginfig(43)
save u;
u:=1cm;

z.S=origin;
z.A=(-1.5,-2)*u;
z.B=(-.7,-2.3)*u;
z.C=(.8,-2.2)*u;
z.D=(1.5,-1.9)*u;
z.E=(.1,-1.6)*u;

draw ddline(-z.A,z.A)(.1,.1);
draw ddline(z.S,z.B)(0,.2);
draw ddline(z.S,-z.B)(0,.2) cutbefore -z.B;
draw ddline(z.S,-z.B)(0,.2) cutafter -z.B dashed evenly;
draw ddline(z.S,z.C)(0,.2);
draw ddline(z.S,-z.C)(0,.2) cutbefore -z.C;
draw ddline(z.S,-z.C)(0,.2) cutafter -z.C  dashed evenly;
draw ddline(-z.D,z.D)(.1,.1);
draw ddline(z.S,z.E)(.2,.2) dashed evenly;
draw ddline(z.S,-z.E)(.2,.2);

drawarrow .2[1.1*z.B,1.1*z.C]--.8[1.1*z.B,1.1*z.C];
drawarrow .2[-1.1*z.B,-1.1*z.C]--.8[-1.1*z.B,-1.1*z.C];

draw z.A--z.B--z.C--z.D;
draw z.A--z.E--z.D dashed evenly;
draw (-z.A)--(-z.B)--(-z.C)--(-z.D)--(-z.E)--cycle;

label.ulft(btex $A$ etex, z.A);
label.llft(btex $B$ etex, z.B+(-1,0));
label.lrt(btex $C$ etex, z.C+(1,1));
label.urt(btex $D$ etex, z.D);
label.ulft(btex $E$ etex, z.E);
label.rt(btex $S$ etex, z.S);

label.lrt(btex $A_1$ etex, -z.A);
label.urt(btex $B_1$ etex, -z.B+(0,-1));
label.ulft(btex $C_1$ etex, -z.C+(0,-1));
label.llft(btex $D_1$ etex, -z.D);
label.lrt(btex $E_1$ etex, -z.E);

endfig;

beginfig(73)
save u, k, n;
u:=1cm;
k:=.5;
n:=110;

z.z=(.5,3)*u;

z.R=(1,0)*u;

z.A=z.R rotated (n+72) yscaled k;
z.B=z.R rotated (n) yscaled k;
z.C=z.R rotated (n-72) yscaled k;
z.D=z.R rotated (n-2*72) yscaled k;
z.E=z.R rotated (n+2*72) yscaled k;

z.O1=z.z;
z.O=z.O1-(0,y.z);

draw z.A--z.B--z.C--z.D dashed evenly pensemibold;
draw z.D--z.E--z.A pensemibold;
draw (z.A--z.B--z.C--z.D--z.E--cycle) shifted (z.z) pensemibold;

draw ddline(z.A,z.A+z.z)(.2,.2);
draw ddline(z.B,z.B+z.z)(.2,-1) dashed evenly;
draw ddline(z.C,z.C+z.z)(.2,-1) dashed evenly;
draw ddline(z.B,z.B+z.z)(-1,.2);
draw ddline(z.C,z.C+z.z)(-1,.2);
draw ddline(z.D,z.D+z.z)(.2,.2);
draw ddline(z.E,z.E+z.z)(.2,.2);

draw z.A--z.A+z.z pensemibold;
draw z.B--z.B+z.z pensemibold dashed evenly;
draw z.C--z.C+z.z pensemibold dashed evenly;
draw z.D--z.D+z.z pensemibold;
draw z.E--z.E+z.z pensemibold;

draw z.O--z.O1 dashed evenly;

dOt z.O,z.O1;

draw ddline(z.A,z.D+z.z)(0,0) dashed evenly;

label.lft(btex $A$ etex, z.A);
whitelabel.ulft(btex $B$ etex, z.B);
whitelabel.ulft(btex $C$ etex, z.C);
label.lrt(btex $D$ etex, z.D);
label.lrt(btex $E$ etex, z.E);
label.lft(btex $O$ etex, z.O);

label.lft(btex $A_1$ etex, z.A+z.z);
label.ulft(btex $B_1$ etex, z.B+z.z);
label.ulft(btex $C_1$ etex, z.C+z.z);
label.lrt(btex $D_1$ etex, z.D+z.z);
whitelabel.lrt(btex $E_1$ etex, z.E+z.z);
label.rt(btex $O_1$ etex, z.O1);
endfig;

beginfig(74)
save u;
u:=1cm;

z.x=(2,0)*u;
z.y=(.5,1)*u;
z.z=(-.7,2)*u;

draw origin--z.x--z.x+z.z--z.z--cycle pensemibold;

draw z.x+z.y--z.x+z.z+z.y--z.z+z.y pensemibold;
draw z.z+z.y--z.y--z.x+z.y dashed evenly pensemibold;

draw origin--z.y dashed evenly pensemibold;
draw z.x--z.x+z.y pensemibold;
draw z.x+z.z--z.x+z.z+z.y pensemibold;
draw z.z--z.z+z.y pensemibold;
endfig;

beginfig(75)
save u;
u:=1cm;

z.x=(2,0)*u;
z.y=(.5,1)*u;
z.z=(0,2)*u;

mark_rt_angle(z.x,z.x+z.z,z.z);
mark_rt_angle(z.x,z.x+z.z,z.x+z.y+z.z);
mark_rt_angle(z.z,z.x+z.z,z.x+z.y+z.z);

draw origin--z.x--z.x+z.z--z.z--cycle pensemibold;

draw z.x+z.y--z.x+z.z+z.y--z.z+z.y pensemibold;
draw z.z+z.y--z.y--z.x+z.y dashed evenly pensemibold;

draw origin--z.y dashed evenly pensemibold;
draw z.x--z.x+z.y pensemibold;
draw z.x+z.z--z.x+z.z+z.y pensemibold;
draw z.z--z.z+z.y pensemibold;
endfig;

beginfig(76)
save u;
u:=1cm;

z.x=(1,0)*u;
z.y=(.3,.4)*u;
z.z=(0,2.5)*u;

z.A=-z.x-z.y;
z.B=z.x-z.y;
z.C=.7*z.x+z.y;
z.D=-.7*z.x+z.y;
z.S=z.z;
z.O=origin;

draw z.A--z.B--z.C pensemibold;
draw z.C--z.D--z.A dashed evenly pensemibold;
draw ddline(z.S,z.A)(0,0) pensemibold;
draw ddline(z.S,z.B)(0,0) pensemibold;
draw ddline(z.S,z.C)(0,0) pensemibold;
draw ddline(z.S,z.D)(0,0) dashed evenly pensemibold;
draw ddline(z.S,z.A)(-1,.2);
draw ddline(z.S,z.B)(-1,.2);
draw ddline(z.S,z.C)(-1,.2);
draw ddline(z.S,z.D)(-1,.2) dashed evenly;
draw z.S--z.O dashed linedot;

dOt z.O;

label.lft(btex $A$ etex, z.A);
label.rt(btex $B$ etex, z.B);
label.urt(btex $C$ etex, z.C);
label.ulft(btex $D$ etex, z.D);
label.top(btex $S$ etex, z.S);
label.rt(btex $O$ etex, z.O);

endfig;

beginfig(77)
save u;
u:=1cm;

z.A=origin;
z.B=(.5,-1)*u;
z.C=(2,0)*u;
z.S=(1,2)*u;

draw z.A--z.S--z.C--z.B--cycle pensemibold;
draw z.A--z.C pensemibold dashed evenly;
draw z.S--z.B pensemibold;

label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.top(btex $S$ etex, z.S);

endfig;

beginfig(78)
save u, k, n;
u:=2cm;
k:=.5;
n:=80;

z.z=(.5,3)*u;

z.R=(1,0)*u;

z.A=z.R rotated (n+72) yscaled k;
z.E=z.R rotated (n) yscaled k;
z.D=z.R rotated (n-72) yscaled k;
z.C=z.R rotated (n-2*72) yscaled k;
z.B=z.R rotated (n+2*72) yscaled k;

z.S=(0,2.5)*u;
z.M=.5[z.C,z.D];
z.O=origin;

mark_rt_angle(z.C,z.M,z.S);

draw z.A--z.B--z.C--z.D pensemibold;
draw z.D--z.E--z.A dashed evenly pensemibold;
draw z.B--z.D dashed evenly;

draw z.S--z.A pensemibold;
draw z.S--z.B pensemibold;
draw z.S--z.C pensemibold;
draw z.S--z.D pensemibold;
draw z.S--z.E dashed evenly pensemibold;
draw z.S--z.M;
draw z.S--z.O dashed linedot;

dOt z.O;

label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);
whitelabel.ulft(btex $E$ etex, z.E);
label.lrt(btex $M$ etex, z.M);
label.top(btex $S$ etex, z.S);
label.rt(btex $O$ etex, z.O);
endfig;

beginfig(79)
save u, k, n, m;
u:=2cm;
k:=.5;
n:=80;
m:=.5;

z.z=(.5,3)*u;

z.R=(1,0)*u;

z.A=z.R rotated (n+72) yscaled k;
z.E=(z.R rotated (n) yscaled k)+(.3,0)*u;
z.D=z.R rotated (n-72) yscaled k;
z.C=z.R rotated (n-2*72) yscaled k;
z.B=z.R rotated (n+2*72) yscaled k;

z.S=(0,2.5)*u;
z.O=origin;

z.A1=m[z.S,z.A];
z.E1=m[z.S,z.E];
z.D1=m[z.S,z.D];
z.C1=m[z.S,z.C];
z.B1=m[z.S,z.B];
z.O1=m[z.S,z.O];

draw z.A--z.B--z.C--z.D pensemibold;
draw z.D--z.E--z.A dashed evenly pensemibold;
draw z.A1--z.B1--z.C1--z.D1--z.E1--cycle pensemibold;

draw z.A1--z.A pensemibold;
draw z.B1--z.B pensemibold;
draw z.C1--z.C pensemibold;
draw z.D1--z.D pensemibold;
draw z.E1--z.E dashed evenly pensemibold;
draw z.S--z.A1 penhair;
draw z.S--z.B1 penhair;
draw z.S--z.C1 penhair;
draw z.S--z.D1 penhair;
draw z.S--z.E1 dashed evenly penhair;
draw z.O1--z.O dashed evenly;

dOt z.O, z.O1;

label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);
label.urt(btex $E$ etex, z.E);


label.top(btex $S$ etex, z.S);
label.rt(btex $O$ etex, z.O);

label.lft(btex $A_1$ etex, z.A1);
label.lrt(btex $B_1$ etex, z.B1+(-1,-1));
whitelabel.lrt(btex $C_1$ etex, z.C1+(0,1));
label.rt(btex $D_1$ etex, z.D1);
whitelabel.top(btex $E_1$ etex, z.E1);
whitelabel.rt(btex $O_1$ etex, z.O1);
endfig;

beginfig(80)
save u;
u:=1cm;

z.x=(1,-.6)*u;
z.y=(1.5,.7)*u;
z.z=(0,1.8)*u;

z.yy=(1.5,.4)*u;

transform T[];
origin =origin transformed T0;
z.z=z.z transformed T0;
z.yy=z.y transformed T0;

origin =origin transformed T1;
z.z=z.z transformed T1;
z.y=z.yy transformed T1;

picture BBC[];

BBC0=image(arcs(z.x transformed T0,(z.x+z.z) transformed T0,(z.x+z.y+z.z) transformed T0,10););
BBC1=image(dashedarcs(z.x transformed T0,(z.x+z.z) transformed T0,(z.x+z.y+z.z) transformed T0,10););

draw BBC0 transformed T1;
draw BBC1 transformed T1 shifted -z.x;

draw origin--z.x--z.x+z.z--z.z--cycle pensemibold;

draw z.x+z.y--z.x+z.z+z.y--z.z+z.y pensemibold;
draw z.z+z.y--z.y--z.x+z.y dashed evenly pensemibold;

draw origin--z.y dashed evenly pensemibold;
draw z.x--z.x+z.y pensemibold;
draw z.x+z.z--z.x+z.z+z.y pensemibold;
draw z.z--z.z+z.y pensemibold;

rimmark(z.x+z.z--z.x+z.y+z.z,z.z--z.y+z.z);
rimmark2(origin--z.z,z.x--z.x+z.z);

label.lft(btex $A$ etex, origin);
label.bot(btex $B$ etex, z.x);
label.rt(btex $C$ etex, z.x+z.y);
label.urt(btex $D$ etex, z.y);

label.lft(btex $A_1$ etex, z.z);
label.llft(btex $B_1$ etex, z.x+z.z);
label.rt(btex $C_1$ etex, z.x+z.y+z.z);
label.top(btex $D_1$ etex, z.y+z.z);
endfig;

beginfig(81)
save u;
u:=1cm;

z.x=(.3,-1)*u;
z.y=(1.5,.2)*u;
z.z=(.6,1.8)*u;



draw origin--z.x--z.x+z.z--z.z--cycle pensemibold;

draw z.x+z.y--z.x+z.z+z.y--z.z+z.y pensemibold;
draw z.z+z.y--z.y--z.x+z.y dashed evenly pensemibold;

draw origin--z.y dashed evenly pensemibold;
draw z.x--z.x+z.y pensemibold;
draw z.x+z.z--z.x+z.z+z.y pensemibold;
draw z.z--z.z+z.y pensemibold;

draw origin--z.x+z.y+z.z dashed evenly;
draw z.x--z.y+z.z dashed evenly;
draw z.x+z.y--z.z dashed evenly;
draw z.x+z.z--z.y dashed evenly;

draw origin--z.y+z.z dashed evenly;
draw z.x--z.x+z.y+z.z;

label.lft(btex $A$ etex, origin);
label.bot(btex $B$ etex, z.x);
label.rt(btex $C$ etex, z.x+z.y);
label.urt(btex $D$ etex, z.y);

label.lft(btex $A_1$ etex, z.z);
label.llft(btex $B_1$ etex, z.x+z.z);
label.rt(btex $C_1$ etex, z.x+z.y+z.z);
label.top(btex $D_1$ etex, z.y+z.z);
endfig;

beginfig(82)
save u;
u:=1cm;

z.x=(1.7,-.3)*u;
z.y=(.8,.8)*u;
z.z=(0,1.8)*u;

markdashed_rt_angle_withsize(origin, z.x, z.x+z.y,7);
markdashed_rt_angle_withsize(z.z, origin, z.x+z.y,7);

draw origin--z.x--z.x+z.z--z.z--cycle pensemibold;

draw z.x+z.y--z.x+z.z+z.y--z.z+z.y pensemibold;
draw z.z+z.y--z.y--z.x+z.y dashed evenly pensemibold;

draw origin--z.y dashed evenly pensemibold;
draw z.x--z.x+z.y pensemibold;
draw z.x+z.z--z.x+z.z+z.y pensemibold;
draw z.z--z.z+z.y pensemibold;

draw origin--z.x+z.y dashed evenly;
draw z.z--z.x+z.y dashed evenly;

label.lft(btex $C$ etex, origin);
label.bot(btex $B$ etex, z.x);
label.rt(btex $A$ etex, z.x+z.y);
label.bot(btex $D$ etex, z.y+(1,0));

label.lft(btex $C_1$ etex, z.z);
label.top(btex $B_1$ etex, z.x+z.z+(-2,0));
label.rt(btex $A_1$ etex, z.x+z.y+z.z);
label.top(btex $D_1$ etex, z.y+z.z);
endfig;



beginfig(83)
save u, k, n, m;
u:=1.4cm;
k:=.5;
n:=80;
m:=.6;

z.z=(.5,3)*u;

z.R=(1,0)*u;

z.A=z.R rotated (n+72) yscaled k;
z.E=(z.R rotated (n) yscaled k);
z.D=z.R rotated (n-72) yscaled k;
z.C=z.R rotated (n-2*72) yscaled k;
z.B=z.R rotated (n+2*72) yscaled k;

z.S=(0,2.5)*u;
z.O=origin;

z.A1=m[z.S,z.A];
z.E1=m[z.S,z.E];
z.D1=m[z.S,z.D];
z.C1=m[z.S,z.C];
z.B1=m[z.S,z.B];
z.O1=m[z.S,z.O];

draw z.A--z.B--z.C--z.D pensemibold;
draw z.D--z.E--z.A dashed evenly pensemibold;
draw z.A1--z.B1--z.C1--z.D1;
draw z.D1--z.E1--z.A1 dashed evenly;

draw z.S--z.A pensemibold;
draw z.S--z.B pensemibold;
draw z.S--z.C pensemibold;
draw z.S--z.D pensemibold;
draw z.S--z.E dashed evenly pensemibold;
draw z.S--z.O dashed evenly;
draw z.A--z.O dashed evenly;
draw z.A1--z.O1 dashed evenly;

dOt z.O, z.O1;

label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);
label.bot(btex $E$ etex, z.E);


label.top(btex $S$ etex, z.S);
label.bot(btex $M$ etex, z.O);

label.lft(btex $a$ etex, z.A1);
label.lrt(btex $b$ etex, z.B1+(-1,-1));
whitelabel.lrt(btex $c$ etex, z.C1+(0,1));
label.rt(btex $d$ etex, z.D1);
whitelabel.ulft(btex $e$ etex, z.E1);
whitelabel.llft(btex $m$ etex, z.O1);
endfig;

beginfig(84)
save u, k, n, m;
u:=1.4cm;
k:=.4;
n:=.6;
m:=1.2;

z.z=(0,3)*u;

z.a0=(.5,.5)*u;
z.a1=(6.3,.5)*u;
z.a2=z.a1+z.a3-z.a0;
z.a3=(.5,3.5)*u;

z.b0=(1,1)*u;
z.b1=(3,1)*u;
z.b2=z.b1+z.b3-z.b0;
z.b3=(1,3)*u;

z.B=.5[z.b0,z.b2];

z.c0=(3.5,3)*u;
z.c1=(6,3)*u;
z.c2=(4.75,1)*u;

z.B1=(4.75,2)*u;


transform T[];
T1= identity yscaled k slanted m;

z.S=z.B transformed T1+z.z;
z.S1=z.B1 transformed T1+z.z;

z.bb0=n[z.S,z.b0 transformed T1];
z.bb1=n[z.S,z.b1 transformed T1];
z.bb2=n[z.S,z.b2 transformed T1];
z.bb3=n[z.S,z.b3 transformed T1];

z.BB=n[z.S,z.B transformed T1];
z.BB1=n[z.S1,z.B1 transformed T1];

z.cc0=n[z.S1,z.c0 transformed T1];
z.cc1=n[z.S1,z.c1 transformed T1];
z.cc2=n[z.S1,z.c2 transformed T1];

save p; path p[];

p0=(z.a0--z.a1--z.a2--z.a3--cycle) transformed T1;
p1=z.BB--z.BB1;
p2=(z.B transformed T1)--(z.B1 transformed T1);

markdashed_rt_angle_withsize(z.S, z.BB, z.BB1,5);
markdashed_rt_angle_withsize( z.BB, z.BB1,z.S1,5);
markdashed_rt_angle_withsize(z.S, z.B transformed T1, z.B1 transformed T1,5);
markdashed_rt_angle_withsize( z.B transformed T1, z.B1 transformed T1,z.S1,5);

draw p0 cutafter (z.S1--z.c1 transformed T1);
draw p0 cutbefore (z.S1--z.c1 transformed T1) cutafter (z.S1--z.c0 transformed T1) dashed evenly;
draw p0 cutbefore (z.S1--z.c0 transformed T1)  cutafter (z.S--z.b2 transformed T1);
draw p0 cutbefore  (z.S--z.b2 transformed T1) cutafter (z.S--z.b0 transformed T1) dashed evenly;
draw p0 cutbefore  (z.S--z.b0 transformed T1);

draw (z.b0--z.b1--z.b2) transformed T1 pensemibold;
draw (z.b2--z.b3--z.b0) transformed T1 dashed evenly pensemibold;
draw (z.bb0--z.bb1--z.bb2);
draw (z.bb2--z.bb3--z.bb0) dashed evenly;
draw (z.c1--z.c2--z.c0) transformed T1 pensemibold;
draw (z.c0--z.c1) transformed T1 dashed evenly pensemibold;
draw (z.cc1--z.cc2--z.cc0);
draw (z.cc0--z.cc1) dashed evenly;

draw z.S--(z.b0 transformed T1) pensemibold;
draw z.S--(z.b1 transformed T1) pensemibold;
draw z.S--(z.b2 transformed T1) pensemibold;
draw z.S--(z.b3 transformed T1) dashed evenly pensemibold;

draw z.S1--(z.c0 transformed T1) pensemibold;
draw z.S1--(z.c1 transformed T1) pensemibold;
draw z.S1--(z.c2 transformed T1) pensemibold;

draw z.S--(z.B transformed T1) dashed evenly;
draw z.S1--(z.B1 transformed T1) dashed evenly;
draw p2 cutbefore (z.b1 transformed T1 --z.b2 transformed T1) cutafter (z.c0 transformed T1--z.c2 transformed T1);
draw p2 cutbefore (z.c0 transformed T1--z.c2 transformed T1) dashed evenly;
draw p2 cutafter (z.b1 transformed T1 --z.b2 transformed T1) dashed evenly;

draw p1 cutbefore (z.bb1--z.bb2) cutafter (z.cc0--z.cc2);
draw p1 cutbefore  (z.cc0--z.cc2) dashed evenly;
draw p1 cutafter (z.bb1--z.bb2) dashed evenly;
draw z.S--z.S1;

drawdblarrow .4[z.BB,z.BB1]--.4[z.S,z.S1];
drawdblarrow .6[z.B transformed T1,z.B1 transformed T1]--.6[z.S,z.S1];

whitelabel(btex $h$ etex, .5[.4[z.BB,z.BB1],.4[z.S,z.S1]]);
whitelabel(btex $H$ etex, .6[.6[z.B transformed T1,z.B1 transformed T1],.6[z.S,z.S1]]);
label.ulft(btex $B$ etex, z.B transformed T1 +(0,-3));
label.urt(btex $B_1$ etex, z.B1 transformed T1+(0,-4));
label.ulft(btex $b$ etex, z.BB+(0,-3));
label.urt(btex $b_1$ etex, z.BB1+(0,-2));
endfig;

beginfig(85)
save u,k,a;
u:=1cm;
k:=-.4;

z.q0=(-.4,2.2)*u;
z.q1=(-.4,-.8)*u;
z.q2=(1.1,-1.4)*u;
z.q3=z.q0-z.q1+z.q2;

z.a=(.5,1.5)*u;
z.b=(0,1)*u;
z.c=(0,0)*u;
z.d=(.5,-.6)*u;
z.e=(.7,.4)*u;

transform T[];

T0= identity shifted ((-2,0)*u) slanted k;
T1= identity shifted ((2,0)*u) slanted k;

z.A= z.a transformed T0;
z.B= z.b transformed T0;
z.C= z.c transformed T0;
z.D= z.d transformed T0;
z.E= z.e transformed T0;

z.A1= z.a transformed T1;
z.B1= z.b transformed T1;
z.C1= z.c transformed T1;
z.D1= z.d transformed T1;
z.E1= z.e transformed T1;

a:=angle (z.C-z.B);
T2= identity rotated (-a);

save p; path p[];

p0=(z.q0--z.q1--z.q2--z.q3--cycle) transformed T2;
p1=(z.q0--z.q1--z.q2--z.q3--cycle) transformed T0 transformed T2;

mark_rt_angle(z.C1 transformed T2,z.c transformed T2,z.d transformed T2);
mark_rt_angle(z.C1 transformed T2,z.c transformed T2,z.b transformed T2);

draw p0 cutafter ((z.d--z.D1) transformed T2);
draw p0 cutbefore ((z.a--z.A1) transformed T2);
draw p0 cutafter ((z.a--z.A1) transformed T2) cutbefore ((z.d--z.D1) transformed T2) dashed evenly;

draw p1 cutafter ((z.d--z.D) transformed T2);
draw p1 cutbefore ((z.a--z.A) transformed T2);
draw p1 cutafter ((z.a--z.A) transformed T2) cutbefore ((z.d--z.D1) transformed T2) dashed evenly;

draw (z.a--z.b--z.c--z.d) transformed T2;
draw (z.d--z.e--z.a) transformed T2 dashed evenly;
draw (z.A--z.B--z.C--z.D) transformed T2;
draw (z.D--z.E--z.A) transformed T2 dashed evenly;
draw (z.A1--z.B1--z.C1--z.D1--z.E1--cycle) transformed T2;

draw (z.a--z.A1) transformed T2;
draw (z.b--z.B1) transformed T2;
draw (z.c--z.C1) transformed T2;
draw (z.d--z.D1) transformed T2;
draw (z.A--z.a) transformed T2 cutbefore p0 dashed evenly;
draw (z.B--z.b) transformed T2 cutbefore p0 dashed evenly;
draw (z.C--z.c) transformed T2 cutbefore p0 dashed evenly;
draw (z.D--z.d) transformed T2 cutbefore p0 dashed evenly;
draw (z.A--z.a) transformed T2 cutafter p0;
draw (z.B--z.b) transformed T2 cutafter p0;
draw (z.C--z.c) transformed T2 cutafter p0;
draw (z.D--z.d) transformed T2 cutafter p0;

draw (z.E--z.E1) transformed T2 dashed evenly;

label.lft(btex $a$ etex, z.a transformed T2);
label.bot(btex $b$ etex, z.b transformed T2);
label.bot(btex $c$ etex, z.c transformed T2);
label.rt(btex $d$ etex, z.d transformed T2);
label.bot(btex $e$ etex, z.e transformed T2);

label.lft(btex $A$ etex, z.A transformed T2);
label.bot(btex $B$ etex, z.B transformed T2);
label.bot(btex $C$ etex, z.C transformed T2);
label.rt(btex $D$ etex, z.D transformed T2);
label.bot(btex $E$ etex, z.E transformed T2);

label.lft(btex $A_1$ etex, z.A1 transformed T2);
label.lrt(btex $B_1$ etex, z.B1 transformed T2);
label.lrt(btex $C_1$ etex, z.C1 transformed T2);
label.rt(btex $D_1$ etex, z.D1 transformed T2);
label.top(btex $E_1$ etex, z.E1 transformed T2);

endfig;

beginfig(86)
save u, k, n, m;
u:=2cm;
k:=.5;
n:=110;
m:=.6;

z.z=(.5,3)*u;

z.R=(1,0)*u;

z.A=z.R rotated (n+72) yscaled k;
z.E=(z.R rotated (n) yscaled k);
z.D=z.R rotated (n-72) yscaled k;
z.C=z.R rotated (n-2*72) yscaled k;
z.B=z.R rotated (n+2*72) yscaled k;

z.M=.5[z.A,z.B];

z.S=(0,2.5)*u;
z.O=origin;

z.A1=m[z.S,z.A];
z.E1=m[z.S,z.E];
z.D1=m[z.S,z.D];
z.C1=m[z.S,z.C];
z.B1=m[z.S,z.B];
z.O1=m[z.S,z.O];
z.m=m[z.S,z.M];

draw z.A--z.B--z.C--z.D pensemibold;
draw z.D--z.E--z.A dashed evenly pensemibold;
draw z.A1--z.B1--z.C1--z.D1 pensemibold;
draw z.D1--z.E1--z.A1 pensemibold dashed evenly;

draw z.S--z.A pensemibold;
draw z.S--z.B pensemibold;
draw z.S--z.C pensemibold;
draw z.S--z.D pensemibold;
draw z.S--z.E dashed evenly pensemibold;
draw z.S--z.M;


label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);
label.bot(btex $E$ etex, z.E);


label.top(btex $S$ etex, z.S);
label.llft(btex $M$ etex, z.M);

label.lft(btex $a$ etex, z.A1);
label.urt(btex $b$ etex, z.B1);
label.llft(btex $c$ etex, z.C1);
label.rt(btex $d$ etex, z.D1);
whitelabel.ulft(btex $e$ etex, z.E1);
whitelabel.urt(btex $m$ etex, z.m);
endfig;

beginfig(87)
save u;
u:=.7cm;

z.x=(1,-.5)*u;
z.y=(1.7,.3)*u;
z.z=(0,2)*u;

z.shift=(2.5,-.2)*u;


draw origin--z.x--z.x+z.z--z.z--cycle pensemibold;

draw z.x+z.y--z.x+z.z+z.y--z.z+z.y pensemibold;
draw z.z+z.y--z.y--z.x+z.y dashed evenly pensemibold;

draw z.x+z.z--z.y+z.z pensemibold;
draw z.x--z.y  dashed evenly pensemibold;

draw origin--z.y dashed evenly pensemibold;
draw z.x--z.x+z.y pensemibold;
draw z.x+z.z--z.x+z.z+z.y pensemibold;
draw z.z--z.z+z.y pensemibold;

%

draw (z.x--z.x+z.z--z.z+z.y--z.x+z.z+z.y--z.x+z.y--cycle) shifted z.shift pensemibold;
draw (z.x+z.z--z.x+z.z+z.y) shifted z.shift pensemibold;
draw (z.z+z.y--z.z+2*z.y--2*z.y--z.x+z.y) shifted z.shift pensemibold;
draw (z.x+z.z+z.y--z.z+2*z.y) shifted z.shift pensemibold;
draw (z.z+z.y--z.y--z.x+z.y) shifted z.shift dashed evenly pensemibold;
draw (z.x--z.y--2*z.y) shifted z.shift dashed evenly pensemibold;


label.rt(btex $P$ etex, .5*z.z);
label.lft(btex $Q$ etex, z.x+z.y+.5*z.z);
label.lft(btex $P$ etex, 2*z.y+.4*z.z+z.shift);
label.rt(btex $Q$ etex, z.x+.6*z.z+z.shift);
endfig;

beginfig(88)
save u;
u:=.5cm;

z.x=(4,0)*u;
z.y=(1,1)*u;
z.z=(0,5)*u;

z.A=origin;
z.B=z.x;
z.C=z.x+z.y;
z.D=z.x+z.z;

draw z.A--z.B--z.C--z.x+z.y+z.z--z.y+z.z--z.z--cycle pensemibold;
draw z.B--z.D--z.x+z.y+z.z pensemibold;
draw z.z--z.D pensemibold;

draw z.A+(0,1)*u--z.B+(0,1)*u--z.C+(0,1)*u;
draw z.A+(1,0)*u--z.A+(1,1)*u;
draw z.A+(2,0)*u--z.A+(2,1)*u;
draw z.A+(3,0)*u--z.A+(3,1)*u;

draw z.A+(1,1)*u+z.y--z.A+(1,1)*u dashed evenly;
draw z.A+(2,1)*u+z.y--z.A+(2,1)*u dashed evenly;
draw z.A+(3,1)*u+z.y--z.A+(3,1)*u dashed evenly;

draw z.A+z.x+.5*z.y--z.A+z.x+.5*z.y+(0,1)*u;
draw z.A+(0,1)*u+.5*z.y--z.A+z.x+.5*z.y+(0,1)*u dashed evenly;

draw z.A+(0,1)*u--z.y+(0,1)*u--z.C+(0,1)*u dashed evenly;
draw z.y+(0,1)*u--z.y+z.z dashed evenly;

label.llft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.ulft(btex $D$ etex, z.D);

label.bot(btex $a$ etex, .5[z.A,z.B]);
label.lrt(btex $b$ etex, .5[z.B,z.C]);
label.rt(btex $c$ etex, .6[z.B,z.D]);

endfig;

beginfig(89)
save u;
u:=.8cm;

z.x=(-1,0)*u;
z.y=(.6,.4)*u;
z.z=(0,1)*u;

z.A=origin;

z.B1=3*z.x;
z.B=3.4*z.x;
z.B2=4*z.x;

z.C1=2*z.y;
z.C=2.4*z.y;
z.C2=3*z.y;

z.D1=4*z.z;
z.D=4.4*z.z;
z.D2=5*z.z;

draw z.A--z.B2--z.B2+z.D2--z.B2+z.D2+z.C2--z.D2+z.C2--z.C2--cycle;
draw z.A--z.D2--z.B2+z.D2;
draw z.D2--z.C2+z.D2;
draw z.B2--z.B2+z.C2--z.C2 dashed evenly;
draw z.B2+z.C2--z.B2+z.C2+z.D2 dashed evenly;

draw z.B--z.B+z.D--z.D--z.D+z.C--z.C pensemibold;
draw z.B+z.D--z.B+z.C+z.D--z.D+z.C dashed evenly pensemibold;
draw z.B--z.B+z.C--z.C dashed evenly pensemibold;
draw z.B+z.C--z.B+z.C+z.D dashed evenly pensemibold;
draw z.A--z.B pensemibold;
draw z.A--z.C pensemibold;
draw z.A--z.D pensemibold;

draw z.B1--z.B1+z.D1--z.D1--z.D1+z.C1--z.C1;
draw z.B1+z.D1--z.B1+z.C1+z.D1--z.D1+z.C1 dashed evenly;
draw z.B1--z.B1+z.C1--z.C1 dashed evenly;
draw z.B1+z.C1--z.B1+z.C1+z.D1 dashed evenly;

label.bot(btex $A$ etex, z.A);

label.bot(btex $B$ etex, z.B);
label.lrt(btex $C$ etex, z.C);
whitelabel.ulft(btex $D$ etex, z.D);

label.lrt(btex $B_1$ etex, z.B1);
label.bot(btex $C_1$ etex, z.C1+(0,-1));
label.llft(btex $D_1$ etex, z.D1);

label.llft(btex $B_2$ etex, z.B2+(2,0));
label.rt(btex $C_2$ etex, z.C2);
whitelabel.ulft(btex $D_2$ etex, z.D2+(0,1));

label.lrt(btex $Q$ etex, z.B+z.D);
label.lrt(btex $Q_1$ etex, z.B1+z.D1);
label.lrt(btex $Q_2$ etex, z.B2+z.D2);
endfig;

beginfig(91)
save u;
u:=.5cm;

z.x=(-1,0)*u;
z.y=(.5,.5)*u;
z.z=(0,1)*u;

z.shift=-3*z.x;

draw 3*z.x--origin--3*z.y--3*z.y+3*z.z--3*z.y+3*z.z+3*z.x--3*z.z+3*z.x--cycle;

draw 3*z.x+z.z--z.z--3*z.y+z.z;
draw 3*z.x+2*z.z--2*z.z--3*z.y+2*z.z;
draw 3*z.x+3*z.z--3*z.z--3*z.y+3*z.z;

draw 3*z.x+3*z.z+z.y--3*z.z+z.y--z.y;
draw 3*z.x+3*z.z+2*z.y--3*z.z+2*z.y--2*z.y;
draw 3*z.z--origin;

draw z.x--3*z.z+z.x--3*z.z+3*z.y+z.x;
draw 2*z.x--3*z.z+2*z.x--3*z.z+3*z.y+2*z.x;

draw (z.x--origin--z.y--z.y+z.z--z.y+z.z+z.x--z.z+z.x--cycle) shifted z.shift;
draw (origin--z.z--z.z+z.y) shifted z.shift;
draw (z.z--z.z+z.x) shifted z.shift;

endfig;

beginfig(92)
save u,k,a;
u:=1cm;
k:=-.4;

z.q0=(-.4,2.2)*u;
z.q1=(-.4,-.8)*u;
z.q2=(1.1,-1.4)*u;
z.q3=z.q0-z.q1+z.q2;

z.a=(.5,1.5)*u;
z.b=(0,1)*u;
z.c=(0,0)*u;
z.d=(.5,-.6)*u;
z.e=(.7,.4)*u;

transform T[];

T0= identity shifted ((1.5,0)*u) slanted k;
T1= identity shifted ((3,0)*u) slanted k;
T5= identity shifted ((-1.5,0)*u);

z.A= z.a transformed T0;
z.B= z.b transformed T0;
z.C= z.c transformed T0;
z.D= z.d transformed T0;
z.E= z.e transformed T0;

z.A1= z.a transformed T1;
z.B1= z.b transformed T1;
z.C1= z.c transformed T1;
z.D1= z.d transformed T1;
z.E1= z.e transformed T1;

z.a1= z.a transformed T5;
z.b1= z.b transformed T5;
z.c1= z.c transformed T5;
z.d1= z.d transformed T5;
z.e1= z.e transformed T5;

a:=angle (z.C-z.B);
T2= identity rotated (-a);

save p; path p[];

p0=(z.q0--z.q1--z.q2--z.q3--cycle) transformed T2;
p1=(z.q0--z.q1--z.q2--z.q3--cycle) transformed T0 transformed T2;

mark_rt_angle(z.C1 transformed T2,z.c transformed T2,z.d transformed T2);
mark_rt_angle(z.C1 transformed T2,z.c transformed T2,z.b transformed T2);

%draw p0 cutafter ((z.d--z.D1) transformed T2);
%draw p0 cutbefore ((z.a--z.A1) transformed T2);
%draw p0 cutafter ((z.a--z.A1) transformed T2) cutbefore ((z.d--z.D1) transformed T2) dashed evenly;

%draw p1 cutafter ((z.d--z.D) transformed T2);
%draw p1 cutbefore ((z.a--z.A) transformed T2);
%draw p1 cutafter ((z.a--z.A) transformed T2) cutbefore ((z.d--z.D1) transformed T2) dashed evenly;

draw (z.a--z.b--z.c--z.d--z.e--cycle) transformed T2 pensemibold;

draw (z.a1--z.b1--z.c1--z.d1) transformed T2 pensemibold;
draw (z.d1--z.e1--z.a1) transformed T2 dashed evenly pensemibold;

draw (z.A--z.B--z.C--z.D) transformed T2 pensemibold;
draw (z.D--z.E--z.A) transformed T2 dashed evenly pensemibold;
draw (z.A1--z.B1--z.C1--z.D1--z.E1--cycle) transformed T2 pensemibold;

draw (z.a1--z.a) transformed T2 pensemibold;
draw (z.b1--z.b) transformed T2 pensemibold;
draw (z.c1--z.c) transformed T2 pensemibold;
draw (z.d1--z.d) transformed T2 pensemibold;
draw (z.e1--z.e) transformed T2 dashed evenly pensemibold;

draw (z.A--z.a) transformed T2  penhair;
draw (z.B--z.b) transformed T2  penhair;
draw (z.C--z.c) transformed T2  penhair;
draw (z.D--z.d) transformed T2  penhair;
draw ((z.E--z.e) cutbefore (z.B--z.C)) transformed T2 penhair;
draw ((z.E--z.e) cutafter (z.B--z.C)) transformed T2  dashed evenly penhair;

draw (z.A--z.A1) transformed T2 pensemibold;
draw (z.B--z.B1) transformed T2 pensemibold;
draw (z.C--z.C1) transformed T2 pensemibold;
draw (z.D--z.D1) transformed T2 pensemibold;
draw (z.E--z.E1) transformed T2 dashed evenly pensemibold;

label.lft(btex $a$ etex, z.a transformed T2);
label.bot(btex $b$ etex, z.b transformed T2+(1,0));
label.bot(btex $c$ etex, z.c transformed T2+(1,0));
label.rt(btex $d$ etex, z.d transformed T2);
whitelabel.bot(btex $e$ etex, z.e transformed T2);

label.lft(btex $a_1$ etex, z.a1 transformed T2);
label.bot(btex $b_1$ etex, z.b1 transformed T2);
label.bot(btex $c_1$ etex, z.c1 transformed T2);
label.rt(btex $d_1$ etex, z.d1 transformed T2);
label.bot(btex $e_1$ etex, z.e1 transformed T2);

label.lft(btex $A_1$ etex, z.A transformed T2);
label.lrt(btex $B_1$ etex, z.B transformed T2+(-2,0));
label.lrt(btex $C_1$ etex, z.C transformed T2+(-2,0));
label.rt(btex $D_1$ etex, z.D transformed T2);
whitelabel.bot(btex $E_1$ etex, z.E transformed T2);

label.lft(btex $A$ etex, z.A1 transformed T2);
label.lrt(btex $B$ etex, z.B1 transformed T2 +(-2,0));
label.lrt(btex $C$ etex, z.C1 transformed T2+(-2,0));
label.rt(btex $D$ etex, z.D1 transformed T2);
label.top(btex $E$ etex, z.E1 transformed T2);

endfig;

beginfig(93)
save u;
u:=.9cm;

z.x=(3.4,0)*u;
z.y=(-.7,1)*u;
z.z=(0,2)*u;
z.shift=-.3*z.x;

z.A=z.y+z.shift;
z.B=origin;
z.C=z.x;
z.D=z.x+z.y+z.shift;

z.A1=z.A+z.z;
z.B1=z.B+z.z;
z.C1=z.C+z.z;
z.D1=z.D+z.z;

z.M=.4*z.x;
z.N=z.M+z.z;
z.Q=z.M+z.y;
z.P=z.Q+z.z;

mark_rt_angle(z.P,z.N,z.C1);
mark_rt_angle(z.M,z.N,z.C1);

draw z.A--z.B--z.C--z.C1--z.D1--z.A1--cycle pensemibold;
draw z.B--z.B1--z.C1 pensemibold;
draw z.B1--z.A1 pensemibold;

draw z.A--z.D--z.D1 dashed evenly pensemibold;
draw z.D--z.C dashed evenly pensemibold;

draw z.M--z.N--z.P;
draw z.P--z.Q--z.M dashed evenly;

label.lft(btex $A$ etex, z.A );
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.urt(btex $D$ etex, z.D);


label.lft(btex $A_1$ etex, z.A1);
label.llft(btex $B_1$ etex, z.B1);
label.rt(btex $C_1$ etex, z.C1);
label.top(btex $D_1$ etex, z.D1);

label.bot(btex $M$ etex, z.M );
label.llft(btex $N$ etex, z.N);
label.top(btex $P$ etex, z.P);
label.urt(btex $Q$ etex, z.Q);

endfig;

beginfig(94)
save u;
u:=1.6cm;

z.x=(4,0)*u;
z.y=(-.3,1)*u;
z.z=(0,2)*u-1.3*z.y;
z.shift=-.2*z.x;

z.A=z.y+z.shift;
z.B=origin;
z.C=z.x;
z.D=z.x+z.y+z.shift;

z.A1=z.A+z.z;
z.B1=z.B+z.z;
z.C1=z.C+z.z;
z.D1=z.D+z.z;

z.M=.4*z.x;
z.N=z.M+z.z;
z.Q=z.M+z.y;
z.P=z.Q+z.z;

z.R=.4[z.N,z.P];
z.S=.6[z.M,z.Q];

mark_rt_angle(z.P,z.N,z.C1);
mark_rt_angle(z.M,z.N,z.C1);
markdashed_rt_angle_withsize( z.M, z.S,z.R,5);

draw z.A--z.B--z.C--z.C1--z.D1--z.A1--cycle pensemibold;
draw z.B--z.B1--z.C1 pensemibold;
draw z.B1--z.A1 pensemibold;

draw z.A--z.D--z.D1 dashed evenly pensemibold;
draw z.D--z.C dashed evenly pensemibold;

draw z.M--z.N--z.P;
draw z.P--z.Q--z.M dashed evenly;

draw z.R--z.S dashed evenly;

label.lft(btex $A$ etex, z.A );
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);


label.lft(btex $A_1$ etex, z.A1);
label.lft(btex $B_1$ etex, z.B1);
label.rt(btex $C_1$ etex, z.C1);
label.top(btex $D_1$ etex, z.D1);

label.bot(btex $M$ etex, z.M );
label.llft(btex $N$ etex, z.N+(-1,0));
label.top(btex $P$ etex, z.P);
label.ulft(btex $Q$ etex, z.Q);

label.urt(btex $R$ etex, z.R);
label.llft(btex $S$ etex, z.S);

endfig;

beginfig(95)
save u;
u:=1cm;

z.x=(2,0)*u;
z.y=(1,1)*u;
z.z=(.5,3)*u;

z.A=origin;
z.B=z.x;
z.C=z.x+z.y;
z.D=z.y;

z.A1=z.A+z.z;
z.B1=z.B+z.z;
z.C1=z.C+z.z;
z.D1=z.D+z.z;

z.a=.6[z.A,z.A1];
z.b=.5[z.B,z.B1];
z.c=.4[z.C,z.C1];
z.d=z.a-z.b+z.c;

mark_rt_angle(z.B1,z.b,z.c);
mark_rt_angle(z.B1,z.b,z.a);

draw z.A--z.B--z.C--z.C1--z.B1--z.A1--cycle pensemibold;
draw z.B--z.B1;
draw z.A1--z.C1 pensemibold;

draw z.D--z.C dashed evenly;
draw z.A--z.D--z.D1--z.A1 dashed evenly;
draw z.C--z.A dashed evenly pensemibold;
draw z.C1--z.D1 dashed evenly;

draw z.a--z.b--z.c;
draw z.a--z.d--z.c--cycle dashed evenly;

label.lft(btex $A$ etex, z.A );
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.urt(btex $D$ etex, z.D);


label.lft(btex $A_1$ etex, z.A1);
label.ulft(btex $B_1$ etex, z.B1);
label.rt(btex $C_1$ etex, z.C1);
label.top(btex $D_1$ etex, z.D1);

label.lft(btex $a$ etex, z.a);
label.lrt(btex $b$ etex, z.b);
label.rt(btex $c$ etex, z.c);
label.urt(btex $d$ etex, z.d);
endfig;

beginfig(96)
save u;
u:=1cm;

z.z=(0,2.5)*u;

z.A=(0,0)*u;
z.B=(1,-.3)*u;
z.C=(2,.2)*u;
z.D=(1.4,1)*u;
z.E=(.4,.8)*u;

z.A1=z.A+z.z;
z.B1=z.B+z.z;
z.C1=z.C+z.z;
z.D1=z.D+z.z;
z.E1=z.E+z.z;

draw z.A--z.B--z.C--z.C1--z.D1--z.E1--z.A1--cycle pensemibold;
draw z.A1--z.D1;
draw z.A1--z.C1;
draw z.A1--z.B1 pensemibold;
draw z.C1--z.B1--z.B pensemibold;

draw z.E--z.E1 dashed evenly pensemibold;
draw z.D--z.D1 dashed evenly pensemibold;
draw z.A--z.E--z.D--z.C dashed evenly pensemibold;
draw z.C--z.A--z.D  dashed evenly;

label.lft(btex $A$ etex, z.A );
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.urt(btex $D$ etex, z.D);
label.ulft(btex $E$ etex, z.E);

label.lft(btex $A_1$ etex, z.A1);
whitelabel.lrt(btex $B_1$ etex, z.B1);
label.rt(btex $C_1$ etex, z.C1);
label.top(btex $D_1$ etex, z.D1);
label.ulft(btex $E_1$ etex, z.E1);
endfig;



beginfig(97)
save u;
u:=.5cm;

z.a0=(0,0)*u;
z.a1=(0,-2)*u;
z.a2=(2,-2)*u;
z.a3=(2,0)*u;

z.b0=(3-1/3,0)*u;
z.b1=(4.5-1/3,-8/3)*u;
z.b2=(5-1/3,0)*u;

z.c0=(-1,1)*u;
z.c1=(6-1/3,1)*u;
z.c2=(6-1/3,-10/3)*u;
z.c3=z.c0-z.c1+z.c2;

z.z1=(0,3)*u;
z.z2=(0,5)*u;

transform T[];

T0=identity yscaled .5 slanted .7 xscaled 1.3;
T1=identity shifted z.z1;
T2=identity shifted z.z2;

save p; path p[];

p0=(z.a1--z.a2--z.a3--z.a0--cycle) transformed T0;
p1=(z.b0--z.b1--z.b2--cycle) transformed T0;
p2=(z.c0--z.c1--z.c2--z.c3--cycle) transformed T0;

draw subpath (0,2) of p0 pensemibold;
draw subpath (2,4) of p0 dashed evenly pensemibold;
draw subpath (0,2) of p1 pensemibold;
draw subpath (2,3) of p1 dashed evenly pensemibold;

draw (subpath (0,2) of p0 transformed T1);
draw (subpath (2,4) of p0 transformed T1) dashed evenly;
draw (subpath (0,2) of p1 transformed T1);
draw (subpath (2,3) of p1 transformed T1) dashed evenly;

draw (p0 transformed T2) pensemibold;
draw (p1 transformed T2) pensemibold;

draw (point 0 of p0 -- point 0 of p0 + z.z1) cutbefore (p2 transformed T1) dashed evenly pensemibold;
draw (point 1 of p0 -- point 1 of p0 + z.z1) cutbefore (p2 transformed T1) dashed evenly pensemibold;
draw (point 2 of p0 -- point 2 of p0 + z.z1) cutbefore (p2 transformed T1) dashed evenly pensemibold;

draw (point 3 of p0 -- point 3 of p0 + z.z2) dashed evenly pensemibold;

draw (point 0 of p1 -- point 0 of p1 + z.z1) cutbefore (p2 transformed T1) dashed evenly pensemibold;
draw (point 1 of p1 -- point 1 of p1 + z.z1) cutbefore (p2 transformed T1) dashed evenly pensemibold;
draw (point 2 of p1 -- point 2 of p1 + z.z1) cutbefore (p2 transformed T1) dashed evenly pensemibold;

draw (point 0 of p0 -- point 0 of p0 + z.z1) cutafter (p2 transformed T1) pensemibold;
draw (point 1 of p0 -- point 1 of p0 + z.z1) cutafter (p2 transformed T1) pensemibold;
draw (point 2 of p0 -- point 2 of p0 + z.z1) cutafter (p2 transformed T1) pensemibold;


draw (point 0 of p1 -- point 0 of p1 + z.z1) cutafter (p2 transformed T1) pensemibold;
draw (point 1 of p1 -- point 1 of p1 + z.z1) cutafter (p2 transformed T1) pensemibold;
draw (point 2 of p1 -- point 2 of p1 + z.z1) cutafter (p2 transformed T1) pensemibold;

draw (point 0 of p0 + z.z2 -- point 0 of p0 + z.z1) pensemibold;
draw (point 1 of p0 + z.z2 -- point 1 of p0 + z.z1) pensemibold;
draw (point 2 of p0 + z.z2 -- point 2 of p0 + z.z1) pensemibold;

draw (point 0 of p1 + z.z2 -- point 0 of p1 + z.z1) pensemibold;
draw (point 1 of p1 + z.z2 -- point 1 of p1 + z.z1) pensemibold;
draw (point 2 of p1 + z.z2 -- point 2 of p1 + z.z1) pensemibold;

picture Q;

Q=image(
draw (p2 transformed T1) cutbefore (point 2 of p1 + z.z2 -- point 2 of p1 + z.z1) cutafter (point 0 of p0 + z.z2 -- point 0 of p0 + z.z1);
draw (p2 transformed T1) cutbefore (point 2 of p0 + z.z2 -- point 2 of p0 + z.z1) cutafter (point 0 of p1 + z.z2 -- point 0 of p1 + z.z1);

%draw (p2 transformed T1) cutbefore (point 1 of p0 + z.z2 -- point 1 of p0 + z.z1) dashed evenly;
%draw (p2 transformed T1) cutafter (point 3 of p0 + z.z2 -- point 3 of p0 + z.z1) dashed evenly;
%draw (p2 transformed T1) cutbefore (point 0 of p1 + z.z2 -- point 0 of p1 + z.z1) cutafter (point 2 of p1 + z.z2 -- point 2 of p1 + z.z1) dashed evenly;
);

draw Q;
draw Q shifted -z.z1;
endfig;

beginfig(98)
save u;
u:=1cm;

z.a=(-1,0)*u;
z.b=(-.4,2)*u;
z.b1=(-2,2)*u;

z.shift=(2,0)*u;

save p; path p[];
p0=origin--z.a--z.a+z.b--z.b--cycle;
p1=origin--z.a--z.a+z.b1--z.b1--cycle;
p2=z.shift--z.a+z.shift--z.b+z.shift--cycle;
p3=z.shift--z.a+z.shift--z.b1+z.shift--cycle;

draw p0;
draw p1;
draw p2;
draw p3;

hatchfill p0  withcolor (0, 1mm, -.5bp);
hatchfill p1  withcolor (0, 1mm, -.5bp);
hatchfill p2  withcolor (0, 1mm, -.5bp);
hatchfill p3  withcolor (0, 1mm, -.5bp);
endfig;

beginfig(99)
save u;
u:=1cm;

z.z=(0,3)*u;
z.shift=(2,0)*u;

transform T;
T=identity slanted .5 yscaled .5;

z.A=(.5,1.7)*u transformed T;
z.B=(3,.5)*u transformed T;
z.C=(2.5,3.5)*u transformed T;
z.base= (1.5,2)*u transformed T;
z.S=z.base+z.z;

z.A1=(3,2.3)*u transformed T + z.shift;
z.B1=(5,.5)*u transformed T + z.shift;
z.C1=(5.5,3.5)*u transformed T + z.shift;
z.base1= (4,2)*u transformed T + z.shift;
z.S1=z.base1+z.z;

save p;
path p[];

p0=((0,-.5)*u--(0,4)*u--(6.3,4)*u+ z.shift--(6.3,-.5)*u+ z.shift--cycle) transformed T;

markdashed_rt_angle_withsize( z.S, z.base,z.base1,5);
markdashed_rt_angle_withsize(z.base,z.base1, z.S1, 5);

draw p0 cutafter (z.A--z.S);
draw p0 cutbefore (z.C--z.S) cutafter (z.A1--z.S1);
draw p0 cutbefore (z.C1--z.S1);

draw z.A--z.B--z.C--z.S--cycle pensemibold;
draw z.B--z.S pensemibold;
draw z.A--z.C pensemibold dashed evenly;

draw .25[z.S,z.A]--.25[z.S,z.B]--.25[z.S,z.C] penhair;
draw (.25[z.S,z.B]--.25[z.S,z.C]) shifted (.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .25[z.S,z.A]--.25[z.S,z.C] penhair dashed evenly;

draw .5[z.S,z.A]--.5[z.S,z.B]--.5[z.S,z.C] penhair;
draw (.5[z.S,z.B]--.5[z.S,z.C]) shifted (.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .5[z.S,z.A]--.5[z.S,z.C] penhair dashed evenly;

draw .75[z.S,z.A]--.75[z.S,z.B]--.75[z.S,z.C] penhair;
draw (.75[z.S,z.B]--.75[z.S,z.C]) shifted (.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .75[z.S,z.A]--.75[z.S,z.C] penhair dashed evenly;

draw .25[z.S,z.B]--(.25[z.S,z.B]+.25[z.S,z.A]-z.S) penhair;
draw .5[z.S,z.B]--(.5[z.S,z.B]+.25[z.S,z.A]-z.S) penhair;
draw .75[z.S,z.B]--(.75[z.S,z.B]+.25[z.S,z.A]-z.S) penhair;

draw .25[z.S,z.C]--(.25[z.S,z.C]+.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .5[z.S,z.C]--(.5[z.S,z.C]+.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .75[z.S,z.C]--(.75[z.S,z.C]+.25[z.S,z.A]-z.S) penhair dashed evenly;

%%%%%%%%%%%%%
draw z.S1--z.base1--z.base--z.S penhair dashed evenly;
draw z.S1--z.S penhair;
drawdblarrow .6[z.S,z.S1]--.6[z.S,z.S1]-z.z;
%%%%%%%%%%%%%

draw z.A1--z.B1--z.C1--z.S1--cycle pensemibold;
draw z.B1--z.S1 pensemibold;
draw z.A1--z.C1 pensemibold dashed evenly;

draw .25[z.S1,z.A1]--.25[z.S1,z.B1]--.25[z.S1,z.C1] penhair;
draw (.25[z.S1,z.B1]--.25[z.S1,z.C1]) shifted (.25[z.S1,z.A1]-z.S1) penhair dashed evenly;
draw .25[z.S1,z.A1]--.25[z.S1,z.C1] penhair dashed evenly;

draw .5[z.S1,z.A1]--.5[z.S1,z.B1]--.5[z.S1,z.C1] penhair;
draw (.5[z.S1,z.B1]--.5[z.S1,z.C1]) shifted (.25[z.S1,z.A1]-z.S1) penhair dashed evenly;
draw .5[z.S1,z.A1]--.5[z.S1,z.C1] penhair dashed evenly;

draw .75[z.S1,z.A1]--.75[z.S1,z.B1]--.75[z.S1,z.C1] penhair;
draw (.75[z.S1,z.B1]--.75[z.S1,z.C1]) shifted (.25[z.S1,z.A1]-z.S1) penhair dashed evenly;
draw .75[z.S1,z.A1]--.75[z.S1,z.C1] penhair dashed evenly;

draw .25[z.S1,z.B1]--(.25[z.S1,z.B1]+.25[z.S1,z.A1]-z.S1) penhair;
draw .5[z.S1,z.B1]--(.5[z.S1,z.B1]+.25[z.S1,z.A1]-z.S1) penhair;
draw .75[z.S1,z.B1]--(.75[z.S1,z.B1]+.25[z.S1,z.A1]-z.S1) penhair;

draw .25[z.S1,z.C1]--(.25[z.S1,z.C1]+.25[z.S1,z.A1]-z.S1) penhair dashed evenly;
draw .5[z.S1,z.C1]--(.5[z.S1,z.C1]+.25[z.S1,z.A1]-z.S1) penhair dashed evenly;
draw .75[z.S1,z.C1]--(.75[z.S1,z.C1]+.25[z.S1,z.A1]-z.S1) penhair dashed evenly;

label.lft(btex $A$ etex, z.A );
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.top(btex $S$ etex, z.S);

label.lft(btex $A_1$ etex, z.A1+(0,1) );
label.bot(btex $B_1$ etex, z.B1);
label.rt(btex $C_1$ etex, z.C1);
label.top(btex $S_1$ etex, z.S1);

label.rt(btex $H$ etex,.6[z.S,z.S1]-.5*z.z);

whitelabel.bot(btex $p_1$ etex, .25[z.S,z.A]+(2,-6));
whitelabel.bot(btex $p_2$ etex, .5[z.S,z.A]+(2,-6));
whitelabel.bot(btex $p_3$ etex, .75[z.S,z.A]+(2,-6));

whitelabel.bot(btex $q_1$ etex, .25[z.S1,z.A1]+(2,-6));
whitelabel.bot(btex $q_2$ etex, .5[z.S1,z.A1]+(2,-6));
whitelabel.bot(btex $q_3$ etex, .75[z.S1,z.A1]+(2,-6));
endfig;

beginfig(100)
save u;
u:=1cm;

z.z=(0,3)*u;
z.shift=(2,0)*u;

transform T;
T=identity slanted .5 yscaled .5;

z.A=(.5,1.7)*u transformed T;
z.B=(3,.5)*u transformed T;
z.C=(2.5,3.5)*u transformed T;
z.base= (1.5,2)*u transformed T;
z.S=z.base+z.z;


draw z.S--z.A--z.B--z.C pensemibold;
draw z.B--z.S pensemibold;
draw z.A--z.C--z.S pensemibold dashed evenly;

draw .25[z.S,z.A]--.25[z.S,z.B]--.25[z.S,z.C] penhair;
draw (.25[z.S,z.B]--.25[z.S,z.C]) shifted (.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .25[z.S,z.A]--.25[z.S,z.C] penhair dashed evenly;

draw z.S--z.S-.25[z.S,z.A]+.25[z.S,z.B]--.25[z.S,z.B] penhair;
draw z.S--z.S-.25[z.S,z.A]+.25[z.S,z.C]--.25[z.S,z.C] penhair;
draw z.S-.25[z.S,z.A]+.25[z.S,z.B]--z.S-.25[z.S,z.A]+.25[z.S,z.C] penhair;

draw .5[z.S,z.A]--.5[z.S,z.B]--.5[z.S,z.C] penhair;
draw (.5[z.S,z.B]--.5[z.S,z.C]) shifted (.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .5[z.S,z.A]--.5[z.S,z.C] penhair dashed evenly;

draw .25[z.S,z.B]--z.S-.25[z.S,z.A]+.5[z.S,z.B]--.5[z.S,z.B] penhair;
draw .25[z.S,z.C]--z.S-.25[z.S,z.A]+.5[z.S,z.C]--.5[z.S,z.C] penhair;
draw z.S-.25[z.S,z.A]+.5[z.S,z.B]--z.S-.25[z.S,z.A]+.5[z.S,z.C] penhair;

draw .75[z.S,z.A]--.75[z.S,z.B]--.75[z.S,z.C] penhair;
draw (.75[z.S,z.B]--.75[z.S,z.C]) shifted (.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .75[z.S,z.A]--.75[z.S,z.C] penhair dashed evenly;

draw .5[z.S,z.B]--z.S-.25[z.S,z.A]+.75[z.S,z.B]--.75[z.S,z.B] penhair;
draw .5[z.S,z.C]--z.S-.25[z.S,z.A]+.75[z.S,z.C]--.75[z.S,z.C] penhair;
draw z.S-.25[z.S,z.A]+.75[z.S,z.B]--z.S-.25[z.S,z.A]+.75[z.S,z.C] penhair;

draw .25[z.S,z.B]--(.25[z.S,z.B]+.25[z.S,z.A]-z.S) penhair;
draw .5[z.S,z.B]--(.5[z.S,z.B]+.25[z.S,z.A]-z.S) penhair;
draw .75[z.S,z.B]--(.75[z.S,z.B]+.25[z.S,z.A]-z.S) penhair;

draw .75[z.S,z.B]--z.S-.25[z.S,z.A]+1[z.S,z.B]--1[z.S,z.B] penhair;
draw .75[z.S,z.C]--z.S-.25[z.S,z.A]+1[z.S,z.C]--1[z.S,z.C] penhair;
draw z.S-.25[z.S,z.A]+1[z.S,z.B]--z.S-.25[z.S,z.A]+1[z.S,z.C] penhair;

draw .25[z.S,z.C]--(.25[z.S,z.C]+.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .5[z.S,z.C]--(.5[z.S,z.C]+.25[z.S,z.A]-z.S) penhair dashed evenly;
draw .75[z.S,z.C]--(.75[z.S,z.C]+.25[z.S,z.A]-z.S) penhair dashed evenly;





label.lft(btex $A$ etex, z.A );
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.top(btex $S$ etex, z.S);

whitelabel.bot(btex $p_1$ etex, .25[z.S,z.A]+(2,-6));
whitelabel.bot(btex $p_2$ etex, .5[z.S,z.A]+(2,-6));
whitelabel.bot(btex $p_3$ etex, .75[z.S,z.A]+(2,-6));

whitelabel.rt(btex $p_1'$ etex, 0[z.S,z.C]+.25(z.C-z.A));
whitelabel.rt(btex $p_2'$ etex, .25[z.S,z.C]+.25(z.C-z.A));
whitelabel.rt(btex $p_3'$ etex, .5[z.S,z.C]+.25(z.C-z.A));
whitelabel.rt(btex $p_4'$ etex, .75[z.S,z.C]+.25(z.C-z.A));
endfig;

beginfig(101)
save u;
u:=.6cm;

z.z=(0,3)*u;
z.shift=(.5,0)*u;

transform T;
T=identity slanted .5 yscaled .3;

z.A=(.5,1.7)*u transformed T;
z.B=(3,.5)*u transformed T;
z.C=(2.5,3.5)*u transformed T;
z.base= (1.5,2)*u transformed T;
z.S=z.base+z.z;

z.A1=(3,2.3)*u transformed T + z.shift;
z.B1=(5,.5)*u transformed T + z.shift;
z.C1=(5.5,3.5)*u transformed T + z.shift;
z.base1= (4,2)*u transformed T + z.shift;
z.S1=z.base1+z.z;

save p;
path p[];

p0=((0,-.5)*u--(0,4)*u--(6.3,4)*u+ z.shift--(6.3,-.5)*u+ z.shift--cycle) transformed T;
p1=p0 shifted (z.z/2);

draw p0 cutafter (z.A--z.S);
draw p0 cutbefore (z.C--z.S) cutafter (z.A1--z.S1);
draw p0 cutbefore (z.C1--z.S1);

draw subpath (0,2) of p1 cutafter (z.A--z.S) cutafter (z.A--z.S);
draw p1 cutbefore (z.C--z.S) cutafter (.4[z.S1,z.A1]--z.S1) ;
draw p1 cutbefore (z.C1--z.S1);

draw z.S--.5[z.S,z.A] pensemibold;
draw z.S--.5[z.S,z.B] pensemibold;
draw z.S--.5[z.S,z.C] pensemibold;

draw z.A--.5[z.S,z.A] cutbefore p1 pensemibold dashed evenly;
draw z.B--.5[z.S,z.B] cutbefore p1 pensemibold dashed evenly;
draw z.C--.5[z.S,z.C] cutbefore p1 pensemibold dashed evenly;

draw z.A--.5[z.S,z.A] cutafter p1 pensemibold;
draw z.B--.5[z.S,z.B] cutafter p1 pensemibold;
draw z.C--.5[z.S,z.C] cutafter p1 pensemibold;

draw z.A--z.B--z.C pensemibold;
draw z.A--z.C pensemibold dashed evenly;


draw .5[z.S,z.A]--.5[z.S,z.B]--.5[z.S,z.C] penhair;
draw .5[z.S,z.A]--.5[z.S,z.C] penhair dashed evenly;


%%%%%%%%%%%%%

draw z.S1--.5[z.S1,z.A1] pensemibold;
draw z.S1--.5[z.S1,z.B1] pensemibold;
draw z.S1--.5[z.S1,z.C1] pensemibold;

draw z.A1--.5[z.S1,z.A1] cutbefore p1 pensemibold dashed evenly;
draw z.B1--.5[z.S1,z.B1] cutbefore p1 pensemibold dashed evenly;
draw z.C1--.5[z.S1,z.C1] cutbefore p1 pensemibold dashed evenly;

draw z.A1--.5[z.S1,z.A1] cutafter p1 pensemibold;
draw z.B1--.5[z.S1,z.B1] cutafter p1 pensemibold;
draw z.C1--.5[z.S1,z.C1] cutafter p1 pensemibold;

draw z.A1--z.B1--z.C1 pensemibold;
draw z.A1--z.C1 pensemibold dashed evenly;

draw .5[z.S1,z.A1]--.5[z.S1,z.B1]--.5[z.S1,z.C1] penhair;
draw .5[z.S1,z.A1]--.5[z.S1,z.C1] penhair dashed evenly;

label.top(btex $P$ etex, point 3.8 of p0);
label.top(btex $Q$ etex, point 3.8 of p1);

endfig;


beginfig(102)
save u;
u:=1cm;

z.B=(0,0)*u;
z.A=(-1,.5)*u;
z.C=(.7,.5)*u;
z.S=(0,2)*u;
z.D=z.A+z.S-z.B;
z.E=z.C+z.S-z.B;

z.shift=(3,0)*u;

draw z.S--z.A pensemibold;
draw z.S--z.B pensemibold;
draw z.S--z.C pensemibold;
draw z.A--z.B--z.C pensemibold;
draw z.A--z.C pensemibold dashed evenly;

draw z.A--z.D--z.E--z.C;
draw z.D--z.S--z.E;
draw z.D--z.C dashed evenly;

draw z.S+z.shift--z.A+z.shift pensemibold;
draw z.S+z.shift--z.C+z.shift pensemibold;
draw z.A+z.shift--z.C+z.shift pensemibold;


draw z.A+z.shift--z.D+z.shift--z.E+z.shift--z.C+z.shift pensemibold;
draw z.D+z.shift--z.S+z.shift--z.E+z.shift pensemibold;
draw z.D+z.shift--z.C+z.shift pensemibold dashed evenly;

label.lft(btex $A$ etex, z.A );
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.lft(btex $D$ etex, z.D);
label.rt(btex $E$ etex, z.E);
label.top(btex $S$ etex, z.S);

label.lft(btex $A$ etex, z.A+z.shift );
label.rt(btex $C$ etex, z.C+z.shift);
label.lft(btex $D$ etex, z.D+z.shift);
label.rt(btex $E$ etex, z.E+z.shift);
label.top(btex $S$ etex, z.S+z.shift);

endfig;

beginfig(103)
save u, k, n;
u:=1.4cm;
k:=.5;
n:=85;

z.z=(.5,3)*u;

z.R=(1,0)*u;

z.A=z.R rotated (n+72) yscaled k;
z.E=z.R rotated (n) yscaled k +(-.2,0)*u;
z.D=z.R rotated (n-72) yscaled k;
z.C=z.R rotated (n-2*72) yscaled k;
z.B=z.R rotated (n+2*72) yscaled k;

z.S=(0,1.5)*u;
z.M=.5[z.C,z.D];
z.O=origin;

draw z.A--z.B--z.C--z.D pensemibold;
draw z.D--z.E--z.A dashed evenly pensemibold;
draw z.E--z.B dashed evenly;
draw z.E--z.C dashed evenly;

draw z.S--z.A pensemibold;
draw z.S--z.B pensemibold;
draw z.S--z.C pensemibold;
draw z.S--z.D pensemibold;
draw z.S--z.E dashed evenly pensemibold;

label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);
label.urt(btex $E$ etex, z.E);
label.top(btex $S$ etex, z.S);

label.urt(btex $b_1$ etex, .5[z.A,z.B]+(-2,0));
label.top(btex $b_2$ etex, .5[z.B,z.C]);
label.top(btex $b_3$ etex, .5[z.C,z.D]+(-1,0));
endfig;

beginfig(104)
save u, k;
u:=1cm;
k:=.5;

z.x=(1,0)*u;
z.y=(.4,.5)*u;
z.z=(0,3)*u;

z.S=origin;

draw -z.x-z.y-z.z--z.x-z.y-z.z--z.x+z.y-z.z pensemibold;
draw -z.x-z.y-z.z--(-z.x+z.y-z.z)--z.x+z.y-z.z dashed evenly pensemibold;
draw k*(-z.x-z.y-z.z)--k*(z.x-z.y-z.z)--k*(z.x+z.y-z.z)--k*(-z.x+z.y-z.z)--cycle pensemibold;

draw k*(-z.x-z.y-z.z)--(-z.x-z.y-z.z) pensemibold;
draw k*(-z.x+z.y-z.z)--(-z.x+z.y-z.z) dashed evenly pensemibold;
draw k*(z.x-z.y-z.z)--(z.x-z.y-z.z) pensemibold;
draw k*(z.x+z.y-z.z)--(z.x+z.y-z.z) pensemibold;

draw k*(-z.x-z.y-z.z)--z.S penhair;
draw k*(-z.x+z.y-z.z)--z.S penhair;
draw k*(z.x-z.y-z.z)--z.S penhair;
draw k*(z.x+z.y-z.z)--z.S penhair;

draw k*(-z.z)--z.S penhair;
draw k*(-z.z)--(-z.z) dashed evenly penhair;

z.r=2*z.x;

draw (-z.z--(-z.z+z.r)) cutbefore ((z.x-z.y-z.z)--(z.x+z.y-z.z));
draw (-z.z--(-z.z+z.r)) cutafter ((z.x-z.y-z.z)--(z.x+z.y-z.z)) dashed evenly;
draw k*(-z.z)--(k*(-z.z)+z.r);
draw z.S--z.r;

drawdblarrow .9*z.r--(k*(-z.z)+.9*z.r);
drawdblarrow (-z.z+.85*z.r)--(k*(-z.z)+.85*z.r);

dOt k*(-z.z), -z.z;

label.top(btex $b$ etex, k*(-.0*z.x-z.y-z.z));
label.top(btex $B$ etex, -.0*z.x-z.y-z.z);

label.rt(btex $x$ etex, .5[.9*z.r,(k*(-z.z)+.9*z.r)]);
label.rt(btex $H$ etex, .5[(-z.z+.85*z.r),(k*(-z.z)+.85*z.r)]);
endfig;



beginfig(105)
save u, k, n, m;
u:=1.6cm;
k:=.4;
n:=80;
m:=.5;

z.z=(.5,3)*u;

z.R=(1,0)*u;

z.A=z.R rotated (n+72) yscaled k;
z.E=(z.R rotated (n) yscaled k);
z.D=z.R rotated (n-72) yscaled k;
z.C=z.R rotated (n-2*72) yscaled k;
z.B=z.R rotated (n+2*72) yscaled k;

z.S=(0,2.5)*u;
z.O=origin;

z.A1=m[z.S,z.A];
z.E1=m[z.S,z.E];
z.D1=m[z.S,z.D];
z.C1=m[z.S,z.C];
z.B1=m[z.S,z.B];
z.O1=m[z.S,z.O];

draw z.A--z.B--z.C--z.D pensemibold;
draw z.D--z.E--z.A dashed evenly pensemibold;
draw z.A1--z.B1--z.C1--z.D1 pensemibold;
draw z.D1--z.E1--z.A1 dashed evenly pensemibold;

draw z.S--z.A pensemibold;
draw z.S--z.B pensemibold;
draw z.S--z.C pensemibold;
draw z.S--z.D pensemibold;
draw z.S--z.E dashed evenly pensemibold;


label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);
label.bot(btex $E$ etex, z.E);


label.top(btex $S$ etex, z.S);

label.lft(btex $A_1$ etex, z.A1);
label.lrt(btex $B_1$ etex, z.B1+(-1,-1));
whitelabel.lrt(btex $C_1$ etex, z.C1+(0,1));
label.rt(btex $D_1$ etex, z.D1);
whitelabel.ulft(btex $E_1$ etex, z.E1);
endfig;

beginfig(107)
save u,ang, k;
u:=1cm;
ang:=60;
k:=.9;

z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);

draw z.x-z.y-z.z--(-z.x-z.y+z.z)--(-z.x+z.y-z.z)--z.x+z.y+z.z--cycle pensemibold;
draw z.x-z.y-z.z--(-z.x+z.y-z.z) dashed evenly pensemibold;
draw (-z.x-z.y+z.z)--z.x+z.y+z.z pensemibold;
endfig;

beginfig(108)
save u,ang, k;
u:=1.6cm;
ang:=60;
k:=.9;

z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);

draw z.x--z.y--z.z--(-z.x)--(-z.y)--z.z--cycle pensemibold;
draw z.x--(-z.y) pensemibold;
draw (-z.x)--z.y pensemibold;
draw (-z.y)--(-z.z)--z.x dashed evenly pensemibold;
draw z.y--(-z.z)--(-z.x) dashed evenly pensemibold;
endfig;

beginfig(109)
save u,ang, k, phi;
u:=.7cm;
ang:=55;
k:=.95;
phi:=.5*(1+sqrt(5));

z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);

draw phi*z.x+z.y--phi*z.x-z.y pensemibold;
draw -phi*z.x+z.y--(-phi)*z.x-z.y pensemibold;

draw phi*z.y+z.z--phi*z.y-z.z dashed evenly pensemibold;
draw -phi*z.y+z.z--(-phi)*z.y-z.z pensemibold;

draw phi*z.z+z.x--phi*z.z-z.x pensemibold;
draw -phi*z.z+z.x--(-phi)*z.z-z.x dashed evenly pensemibold;

draw phi*z.x+z.y--phi*z.y+z.z--phi*z.z+z.x--cycle pensemibold;

draw phi*(-z.x)+z.y--phi*z.y+z.z--phi*z.z-z.x--cycle pensemibold;
draw phi*z.x-z.y--phi*(-z.y)+z.z--phi*z.z+z.x--cycle pensemibold;
draw phi*z.x+z.y--phi*z.y-z.z--phi*(-z.z)+z.x--cycle dashed evenly pensemibold;

draw phi*(z.x)-z.y--phi*(-z.y)-z.z pensemibold;
draw phi*(-z.y)-z.z--phi*(-z.z)+z.x--phi*(z.x)-z.y dashed evenly pensemibold;
draw phi*(-z.x)+z.y--phi*(z.y)-z.z--phi*(-z.z)-z.x--cycle dashed evenly pensemibold;
draw phi*(-z.x)-z.y--phi*(-z.y)+z.z--phi*z.z-z.x--cycle pensemibold;


draw phi*(-z.x)-z.y--phi*(-z.y)-z.z pensemibold;
draw phi*(-z.y)-z.z--phi*(-z.z)-z.x--phi*(-z.x)-z.y dashed evenly pensemibold;
endfig;

beginfig(110)
save u,ang, k;
u:=.9cm;
ang:=205;
k:=.3;

z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);

draw z.x+z.y+z.z--(z.x-z.y+z.z)--(-z.x-z.y+z.z)--(-z.x+z.y+z.z)--cycle pensemibold;
draw (z.x-z.y-z.z)--(-z.x-z.y-z.z)--(-z.x+z.y-z.z) dashed evenly pensemibold;
draw (-z.x+z.y-z.z)--z.x+z.y-z.z--z.x-z.y-z.z pensemibold;
draw (z.x+z.y-z.z)--(z.x+z.y+z.z) pensemibold;
draw (z.x-z.y-z.z)--(z.x-z.y+z.z) pensemibold;
draw (-z.x+z.y-z.z)--(-z.x+z.y+z.z) pensemibold;
draw (-z.x-z.y-z.z)--(-z.x-z.y+z.z) dashed evenly pensemibold;
endfig;

beginfig(111)

save u,ang, k,phi;
u:=.8cm;
ang:=190;
k:=.3;
phi:=.5*(1+sqrt(5));

z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);


draw z.x+z.y+z.z--(phi*z.x+(1/phi)*z.z)--(z.x-z.y+z.z)--(-(1/phi)*z.y+phi*z.z)--(-z.x-z.y+z.z)--(-phi*z.x+(1/phi)*z.z)--(-z.x+z.y+z.z)--((1/phi)*z.y+phi*z.z)--cycle pensemibold;

draw (-phi*z.x-(1/phi)*z.z)--(-z.x+z.y-z.z)--((1/phi)*z.y-phi*z.z)--(z.x+z.y-z.z)--(phi*z.x-(1/phi)*z.z) pensemibold;
draw (phi*z.x-(1/phi)*z.z)--(z.x-z.y-z.z)--(-(1/phi)*z.y-phi*z.z)--(-z.x-z.y-z.z)--(-phi*z.x-(1/phi)*z.z) dashed evenly pensemibold;

draw (-(1/phi)*z.y+phi*z.z)--((1/phi)*z.y+phi*z.z) pensemibold;
draw ((1/phi)*z.y-phi*z.z)--(-(1/phi)*z.y-phi*z.z) dashed evenly pensemibold;

draw (phi*z.x+(1/phi)*z.z)--(phi*z.x-(1/phi)*z.z) pensemibold;
draw (-phi*z.x-(1/phi)*z.z)--(-phi*z.x+(1/phi)*z.z) pensemibold;
draw (phi*z.y+(1/phi)*z.x)--(phi*z.y-(1/phi)*z.x) pensemibold;
draw (-phi*z.y-(1/phi)*z.x)--(-phi*z.y+(1/phi)*z.x) dashed evenly pensemibold;

draw (z.x+z.y-z.z)--(phi*z.y+(1/phi)*z.x)--(z.x+z.y+z.z) pensemibold;
draw (z.x-z.y-z.z)--(-phi*z.y+(1/phi)*z.x)--(z.x-z.y+z.z) dashed evenly pensemibold;
draw (-z.x+z.y-z.z)--(phi*z.y-(1/phi)*z.x)--(-z.x+z.y+z.z) pensemibold;
draw (-z.x-z.y-z.z)--(-phi*z.y-(1/phi)*z.x)--(-z.x-z.y+z.z) dashed evenly pensemibold;
endfig;

beginfig(112)
save u,ang, k;
u:=.9cm;
ang:=230;
k:=.3;

z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);

draw z.x+z.y+z.z--(z.x-z.y+z.z)--(-z.x-z.y+z.z)--(-z.x+z.y+z.z)--cycle;
draw (z.x-z.y-z.z)--(-z.x-z.y-z.z)--(-z.x+z.y-z.z) dashed evenly;
draw (-z.x+z.y-z.z)--z.x+z.y-z.z--z.x-z.y-z.z;
draw (z.x+z.y-z.z)--(z.x+z.y+z.z);
draw (z.x-z.y-z.z)--(z.x-z.y+z.z);
draw (-z.x+z.y-z.z)--(-z.x+z.y+z.z);
draw (-z.x-z.y-z.z)--(-z.x-z.y+z.z) dashed evenly;

draw z.x-z.y-z.z--(-z.x-z.y+z.z)--(-z.x+z.y-z.z)--z.x+z.y+z.z--cycle pensemibold;
draw z.x-z.y-z.z--(-z.x+z.y-z.z)  pensemibold;
draw (-z.x-z.y+z.z)--z.x+z.y+z.z pensemibold;




hatchfill (-z.x-z.y+z.z)--(-z.x+z.y-z.z)--z.x+z.y+z.z--cycle  
withcolor 
(angle(z.x+z.y), 
abs(altitude((-z.x-z.y+z.z),(-z.x+z.y-z.z),z.x+z.y+z.z)-(-z.x+z.y-z.z))/10, -.5bp);

hatchfill (-z.x-z.y+z.z)--(z.x-z.y-z.z)--z.x+z.y+z.z--cycle  withcolor 
(angle(z.x+z.y), 
abs(altitude((-z.x-z.y+z.z),(z.x-z.y-z.z),z.x+z.y+z.z)-(z.x-z.y-z.z))/10, -.5bp);

hatchfill (z.x+z.y+z.z)--(z.x-z.y-z.z)--(-z.x+z.y-z.z)--cycle  withcolor 
(angle(z.x-z.y), 
abs(altitude((z.x-z.y-z.z),(z.x+z.y+z.z),-z.x+z.y-z.z)-(z.x-z.y-z.z))/10, -.5bp);

whitelabel.bot(btex $A$ etex, z.x+z.y+z.z);
label.lft(btex $B$ etex, z.x-z.y-z.z);
label.rt(btex $C$ etex, -z.x+z.y-z.z);
label.top(btex $D$ etex, -z.x-z.y+z.z);
endfig;

beginfig(113)
save u,ang, k;
u:=.9cm;
ang:=230;
k:=.3;

z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);

draw z.x+z.y+z.z--(z.x-z.y+z.z)--(-z.x-z.y+z.z)--(-z.x+z.y+z.z)--cycle;
draw (z.x-z.y-z.z)--(-z.x-z.y-z.z)--(-z.x+z.y-z.z) dashed evenly;
draw (-z.x+z.y-z.z)--z.x+z.y-z.z--z.x-z.y-z.z;
draw (z.x+z.y-z.z)--(z.x+z.y+z.z);
draw (z.x-z.y-z.z)--(z.x-z.y+z.z);
draw (-z.x+z.y-z.z)--(-z.x+z.y+z.z);
draw (-z.x-z.y-z.z)--(-z.x-z.y+z.z) dashed evenly;

draw (-z.y)--z.z--z.x--z.y--z.z--(-z.x) pensemibold;
draw z.x--(-z.y) pensemibold;
draw (-z.x)--z.y pensemibold;
draw (-z.y)--(-z.z)--(-z.x)--cycle dashed evenly pensemibold;
draw z.y--(-z.z)--(z.x)  pensemibold;

hatchfill z.x--z.y--z.z--cycle  withcolor 
(angle(z.x-z.y), 
abs(altitude(z.x,z.z,z.y)-z.z)/10, -.5bp);

hatchfill z.x--(-z.y)--z.z--cycle  withcolor 
(angle(z.x+z.y), 
abs(altitude(z.x,z.z,-z.y)-z.z)/10, -.5bp);

hatchfill (-z.x)--z.y--z.z--cycle  withcolor 
(angle(z.x+z.y), 
abs(altitude(-z.x,z.z,+z.y)-z.z)/10, -.5bp);

hatchfill z.x--z.y--(-z.z)--cycle  withcolor 
(angle(z.x-z.y), 
abs(altitude(z.x,-z.z,z.y)+z.z)/10, -.5bp);

endfig;

beginfig(114)
save u;
u:=1cm;

z.A=(1,.2)*u;
z.O=origin;

draw -z.A--z.A;
rimmark(z.O--z.A,z.O--(-z.A));
dOt z.A,z.O,-z.A;

label.top(btex $O$ etex, z.O);
label.top(btex $A$ etex, z.A);
label.top(btex $A'$ etex, -z.A);

endfig;

beginfig(115)
save u;
u:=1.4cm;

z.X=(1,-.2)*u;
z.Y=(-1,-.3)*u;
z.Z=(0,1)*u;
z.O=origin;

mark_rt_angle(z.X,z.O,z.Y);
mark_rt_angle(z.X,z.O,z.Z);
mark_rt_angle(z.Z,z.O,z.Y);

draw z.X--z.O;
draw z.Y--z.O;
draw z.Z--z.O;

draw -z.X--z.O dashed evenly;
draw -z.Y--z.O dashed evenly;
draw -z.Z--z.O dashed evenly;

label.urt(btex $O$ etex, z.O+(2,3));

label.rt(btex $X$ etex, z.X);
label.lft(btex $Y$ etex, z.Y);
label.top(btex $Z$ etex, z.Z);

label.lft(btex $X'$ etex, -z.X);
label.rt(btex $Y'$ etex, -z.Y);
label.bot(btex $Z'$ etex, -z.Z);
endfig;

beginfig(116)
save u;
u:=1cm;

z.x=(1,0)*u;
z.y=(-.5,-.5)*u;
z.z=(0,1)*u;

z.C=0*z.x;
z.D=1*z.x;
z.A=z.C+1.1*z.z;
z.B=z.D+1.4*z.z;
z.AA=2*z.C-z.A;
z.BB=2*z.D-z.B;

save p;
path p[];

p0=z.C-.7*z.x+z.y--z.D+.7*z.x +z.y--z.D+.7*z.x -z.y--z.C-.7*z.x-z.y--cycle;

mark_rt_angle(z.A,z.C,z.D);
mark_rt_angle(z.C,z.D,z.B);
draw p0 cutafter (z.D--z.B);
draw p0 cutbefore (z.C--z.A);
draw p0 cutbefore (z.D--z.B) cutafter (z.C--z.A) dashed evenly;
draw z.A--z.B pensemibold;
draw z.AA--z.BB pensemibold;
draw z.C--z.D;
draw z.C--z.A;
draw z.D--z.B;
draw z.C--z.AA cutafter p0 dashed evenly;
draw z.D--z.BB cutafter p0 dashed evenly;
draw z.C--z.AA cutbefore p0;
draw z.D--z.BB cutbefore p0;

label.ulft(btex $A$ etex, z.A);
label.urt(btex $B$ etex, z.B);
label.llft(btex $A'$ etex, z.AA);
label.lrt(btex $B'$ etex, z.BB);
label.lft(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);
label.urt(btex $P$ etex, z.C-.7*z.x+z.y+(7,0));
endfig;

beginfig(117)
save u;
u:=1cm;

z.x=(-1.3,0)*u;
z.y=(.5,-.3)*u;
z.z=(0,1)*u;

z.xx=(-.2,0)*u;
z.yy=.2*z.y;
z.zz=.2*z.z;

save p;
path p[];

p1=-z.x+z.z--z.x+z.z--z.x-z.z--(-z.x)-z.z--cycle;
p2=-z.y+z.z--z.y+z.z--z.y-z.z--(-z.y)-z.z--cycle;
p3=-z.x+z.y--z.x+z.y--z.x-z.y--(-z.x)-z.y--cycle;

draw p1 cutafter (z.x-(-z.y)-z.z-z.yy--z.x-(-z.y)-z.zz-z.yy);
draw p1 cutafter (z.x-(-z.y)-z.z-z.xx--z.x-(-z.y)-z.zz-z.xx) cutbefore (z.x-(-z.y)-z.z-z.yy--z.x-(-z.y)-z.zz-z.yy) dashed evenly;
draw p1 cutbefore (z.x-(-z.y)-z.z-z.xx--z.x-(-z.y)-z.zz-z.xx) cutafter (subpath (0,2) of p3 shifted -z.zz);
draw p1 cutbefore  (-z.x);
draw p1 cutafter  (-z.x) cutbefore (subpath (0,1) of p3 shifted -z.zz) dashed evenly;

draw p2 cutbefore -z.z cutafter (z.x+z.z--z.z-z.x) dashed evenly;
draw p2 cutafter  -z.z;
draw p2 cutbefore (z.x+z.z--z.z+.1*z.x);

draw p3  cutafter (z.x+.1*z.z--z.x+z.z) pensemibold;
draw p3  cutbefore (z.x+.1*z.z--z.x+z.z) cutafter (-z.x) pensemibold dashed evenly;
draw p3  cutbefore (-z.x) pensemibold;
draw subpath (0,2) of p3 shifted -z.zz pensemibold;
draw z.x-z.y--z.x-z.y-z.z--z.x-z.y-z.z+z.yy--z.x-z.y-z.zz+z.yy pensemibold;
draw z.x-(-z.y)--z.x-(-z.y)-z.z--z.x-(-z.y)-z.z-z.yy--z.x-(-z.y)-z.zz-z.yy pensemibold;
draw (-z.x)-(-z.y)--(-z.x)-(-z.y)-z.z--(-z.x)-(-z.y)-z.z+z.xx--(-z.x)-(-z.y)-z.zz+z.xx pensemibold;
draw (-z.x)-(-z.y)-z.z+z.xx--(-z.x)-(-z.y)-z.z+z.xx-z.yy--(-z.x)-(-z.y)+z.xx-z.yy cutafter (subpath (0,2) of p3 shifted -z.zz) pensemibold;
draw (z.x)-(-z.y)-z.z--(z.x)-(-z.y)-z.z-z.xx--(z.x)-(-z.y)-z.zz-z.xx pensemibold;
draw (z.x)-(z.y)-z.z+z.yy--(z.x)-(z.y)-z.z-z.xx+z.yy--(z.x)-(z.y)-z.zz-z.xx+z.yy cutafter (subpath (0,2) of p3 shifted -z.zz) pensemibold;

draw -z.x-z.y+z.xx+z.yy--(-z.x-z.y+z.xx+z.yy-z.z)--(-z.x-z.y+z.yy-z.z)--(-z.x-z.y+z.yy) cutafter (subpath (0,2) of p3 shifted -z.zz) cutbefore (subpath (0,2) of p3 shifted -z.zz) pensemibold dashed evenly;
draw (-z.x-z.y+z.xx+z.yy-z.z)--(-z.x-z.y+z.xx-z.z)--(-z.x-z.y+z.xx) cutafter (subpath (0,2) of p3 shifted -z.zz)  pensemibold dashed evenly;

draw origin--z.x;
draw origin--z.y;
draw origin--z.z;

draw origin--(-z.x) cutafter p2 dashed evenly;
draw origin--(-z.x) cutbefore p2;
draw origin--(-z.y) dashed evenly;
draw origin--(-z.z) cutafter (subpath (0,2) of p3 shifted -z.zz) dashed evenly;
draw origin--(-z.z) cutbefore (subpath (0,2) of p3 shifted -z.zz);
endfig;

beginfig(118)
save u;
u:=1cm;

z.x=(.7,0)*u;
z.y=(.4,.3)*u;
z.z=(0,1)*u;

z.O=origin;
z.A=z.B+z.z;
z.B=-z.x+.2*z.y;
z.AA=2*z.B-z.A;
z.AAA=-z.A;
z.C=.5[z.AA,z.AAA];

save p;
path p[];

p1=-2.3*z.x+z.y--z.x+z.y--z.x-z.y--(-2.3*z.x)-z.y--cycle;

draw p1 cutbefore (z.A--z.O);
draw p1 cutafter (z.A--z.O) cutbefore (z.A--z.B) dashed evenly;
draw p1 cutafter  (z.A--z.B);
draw z.A--z.O--z.B--cycle;
draw z.O--z.AAA cutafter p1 dashed evenly;
draw z.O--z.AAA cutbefore p1;
draw z.B--z.AA cutafter p1 dashed evenly;
draw z.B--z.AA cutbefore p1;
draw z.AA--z.AAA;

draw ddline(-z.C,z.C)(.2,.2) dashed linedot;

dOt z.C,z.O;

label.top(btex $A$ etex, z.A);
label.lft(btex $B$ etex, z.B);
label.lft(btex $A'$ etex, z.AA);
label.rt(btex $A''$ etex, z.AAA);
label.llft(btex $C$ etex, z.C);
label.rt(btex $H$ etex, -z.C);
label.rt(btex $O$ etex, z.O+(0,1));
label.urt(btex $P$ etex, (-2.3*z.x)-z.y+(10,0));
endfig;

beginfig(119)
save u, a,k;
u:=1.4cm;
a:=140;
k:=.5;

z.a=(1,0)*u rotated a;
z.b=z.a rotated 120;
z.c=z.a rotated -120;

z.A=z.a yscaled k;
z.B=z.b yscaled k;
z.C=z.c yscaled k;

z.S=(0,2.2)*u;
z.O=origin;

picture AOB;
AOB := image(dashedarcs(z.a,z.O,z.b,10););
picture BOC;
BOC := image(dashedarcs(z.b,z.O,z.c,8););
picture COA;
COA := image(dashedarcs(z.c,z.O,z.a,6););


drawarrow arc(z.b rotated 20, z.b rotated 60, z.b rotated 100) yscaled k shifted ((0,0)*u);
drawarrow arc(z.a rotated 20, z.a rotated 60, z.a rotated 100) yscaled k shifted ((0,0)*u);

draw AOB yscaled k;
draw BOC yscaled k;
draw COA yscaled k;

draw z.A--z.B--z.C pensemibold;
draw z.A--z.C dashed evenly pensemibold;

draw z.B--z.S--z.A pensemibold;
draw z.S--z.C pensemibold;
draw z.B--z.O--z.A dashed evenly;
draw z.O--z.C dashed evenly;
draw z.O--z.S dashed linedot;

label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.top(btex $S$ etex, z.S);

endfig;

beginfig(120)
save u,ang, k;
u:=.9cm;
ang:=235;
k:=.3;

z.x=((1,0)*u rotated ang) yscaled k;
z.y=((1,0)*u rotated (ang+90)) yscaled k;
z.z=(0,1)*u yscaled sqrt(1-k**2);

z.r=(-.3,0)*u;

save T;
transform T[];
origin=origin transformed T1;
z.x=(1,0)*u transformed T1;
z.y=(0,1)*u transformed T1;

origin=origin transformed T2;
z.x=(1,0)*u transformed T2;
sqrt(.5)*(z.y+z.z)=(0,1)*u transformed T2;

origin=origin transformed T3;
(1/sqrt(3-1/3))*(z.x-z.y-z.z -(z.x-z.y+z.z)/3)=(1,0)*u transformed T3;
(1/sqrt(3-1/3))*(z.x+z.y+z.z -(z.x-z.y+z.z)/3)=((1,0)*u rotated 120) transformed T3;

draw z.x+z.y+z.z--(z.x-z.y+z.z)--(-z.x-z.y+z.z)--(-z.x+z.y+z.z)--cycle pensemibold;
draw (z.x-z.y-z.z)--(-z.x-z.y-z.z)--(-z.x+z.y-z.z) dashed evenly pensemibold;
draw (-z.x+z.y-z.z)--z.x+z.y-z.z--z.x-z.y-z.z pensemibold;
draw (z.x+z.y-z.z)--(z.x+z.y+z.z) pensemibold;
draw (z.x-z.y-z.z)--(z.x-z.y+z.z) pensemibold;
draw (-z.x+z.y-z.z)--(-z.x+z.y+z.z) pensemibold;
draw (-z.x-z.y-z.z)--(-z.x-z.y+z.z) dashed evenly pensemibold;



drawarrow ddline(-z.z,z.z)(.3,.5) dashed linedot;
drawarrow ddline(-z.z+z.y,z.z-z.y)(.3,.3) dashed linedot;
drawarrow ddline(-z.z-z.x+z.y,z.x-z.y+z.z)(.2,.2) dashed linedot;

drawarrow arc(z.r rotated 45, z.r rotated 90, z.r rotated 210) transformed T1 shifted (1.7*z.z);
drawarrow arc(z.r rotated -65, z.r rotated 180, z.r rotated 65) 
transformed T2 shifted (1.3*(z.z-z.y));
drawarrow arc(z.r rotated -90, z.r rotated 180, z.r rotated 90) 
transformed T3 shifted (1.2*(z.z+z.x-z.y));

draw (-z.z)+z.x-z.y--z.z+z.x+z.y--z.z-z.x-z.y;
draw (-z.z)+z.x-z.y--z.z-z.x-z.y dashed evenly;

dOt origin;

label.llft(btex $A$ etex, z.z+z.x-z.y);
label.lrt(btex $B$ etex, z.z+z.x+z.y);
label.rt(btex $C$ etex, z.z-z.x+z.y);
label.ulft(btex $D$ etex, z.z-z.x-z.y);
label.lft(btex $E$ etex, -z.z+z.x-z.y);
label.bot(btex $F$ etex, -z.z+z.x+z.y);
label.urt(btex $G$ etex, -z.z-z.x+z.y);
label.bot(btex $H$ etex, -z.z-z.x-z.y);
endfig;

beginfig(121)
save u, k;
u:=1.4cm;
k:=.3;

z.A=(0,1)*u;
z.B=-z.A;
z.O=origin;

z.N=(.7,-1)*u;
z.P=(1,0)*u;
z.M=(.8,1)*u;

save p; path p[];
p1=z.M{down}..z.P..{down}z.N;

save T; transform T[];

z.A=z.A transformed T1;
z.B=z.B transformed T1;
z.P rotated -180/5 yscaled k = z.P transformed T1;

z.A=z.A transformed T2;
z.B=z.B transformed T2;
z.P rotated (-2*180/5) yscaled k = z.P transformed T2;

z.A=z.A transformed T3;
z.B=z.B transformed T3;
z.P rotated (-3*180/5) yscaled k = z.P transformed T3;

z.A=z.A transformed T4;
z.B=z.B transformed T4;
z.P rotated (-4*180/5) yscaled k = z.P transformed T4;

z.A=z.A transformed T5;
z.B=z.B transformed T5;
z.P rotated (-5*180/5) yscaled k = z.P transformed T5;

markdashed_rt_angle(z.A,z.O,z.P);
draw z.A--z.B dashed linedot;
draw z.P--z.O dashed evenly;

draw arc(z.P, z.P rotated -90, z.P rotated 180) yscaled k;
draw arc(z.P, z.P rotated 90, z.P rotated 180) yscaled k dashed evenly;

draw p1;
draw p1 transformed T1;
draw p1 transformed T2;
draw p1 transformed T3;
draw p1 transformed T4;
draw p1 transformed T5;

dOt z.P;

label.top(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.lft(btex $O$ etex, z.O);
label.rt(btex $P$ etex, z.P);
label.urt(btex $M$ etex, z.M);
label.lrt(btex $N$ etex, z.N);
endfig;

beginfig(122)
save u;
u:=1cm;

z.N=(2,0)*u;
z.O=(0,.5)*u;
z.M=(1.7,1)*u;

z.z=(0,2)*u;

save p; path p[];
p1=z.M{-.1,-1}..z.O{down}..{1,.2}z.N;

draw p1 pensemibold;
draw subpath (0,1) of p1 shifted -z.z pensemibold dashed evenly;
draw subpath (1,2) of p1 shifted -z.z pensemibold;

draw (point 0 of p1 -- point 0 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);
draw (point .2 of p1 -- point .2 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);
draw (point .4 of p1 -- point .4 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);
draw (point .6 of p1 -- point .6 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);
draw (point .8 of p1 -- point .8 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);

draw (point 0 of p1 -- point 0 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;
draw (point .2 of p1 -- point .2 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;
draw (point .4 of p1 -- point .4 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;
draw (point .6 of p1 -- point .6 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;
draw (point .8 of p1 -- point .8 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;

draw point 1 of p1 -- point 1 of p1 shifted -z.z;
draw point 1.2 of p1 -- point 1.2 of p1 shifted -z.z;
draw point 1.4 of p1 -- point 1.4 of p1 shifted -z.z;
draw point 1.6 of p1 -- point 1.6 of p1 shifted -z.z pensemibold;
draw point 1.8 of p1 -- point 1.8 of p1 shifted -z.z;
draw point 2 of p1 -- point 2 of p1 shifted -z.z;

z.A=point 1.6 of p1;
z.B=z.A-z.z;

label.top(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.top(btex $M$ etex, z.M);
label.rt(btex $N$ etex, z.N);
endfig;

beginfig(123)
save u;
u:=1cm;

z.O=(0,.5)*u;
z.M=(2,.7)*u;

z.z=(.5,2)*u;

save p; path p[];
p1=z.M{.5,2}..tension 1.5..z.O{-.5,-2}..tension 1.8..cycle;

draw p1 pensemibold;
draw subpath (0,1) of p1 shifted -z.z pensemibold dashed evenly;
draw subpath (1,2) of p1 shifted -z.z pensemibold;

draw (point 0 of p1 -- point 0 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);
draw (point .25 of p1 -- point .25 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);
draw (point .45 of p1 -- point .45 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);
draw (point .65 of p1 -- point .65 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);
draw (point .85 of p1 -- point .85 of p1 shifted -z.z) cutafter (subpath (1,2) of p1);

draw (point 0 of p1 -- point 0 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;
draw (point .25 of p1 -- point .25 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;
draw (point .45 of p1 -- point .45 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;
draw (point .65 of p1 -- point .65 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;
draw (point .85 of p1 -- point .85 of p1 shifted -z.z) cutbefore (subpath (1,2) of p1) dashed evenly;

draw point 1 of p1 -- point 1 of p1 shifted -z.z;
draw point 1.2 of p1 -- point 1.2 of p1 shifted -z.z;
draw point 1.4 of p1 -- point 1.4 of p1 shifted -z.z;
draw point 1.6 of p1 -- point 1.6 of p1 shifted -z.z;
draw point 1.8 of p1 -- point 1.8 of p1 shifted -z.z;
draw point 2 of p1 -- point 2 of p1 shifted -z.z;

z.A=point 1.6 of p1;
z.B=z.A-z.z;

endfig;

beginfig(124)
save u, k;
u:=1cm;
k:=.3;

z.O=(0,2)*u;
z.C=(0,.9)*u;
z.OO=origin;

z.AA=(1,0)*u;
z.A=z.O+z.AA;
z.B=z.C+z.AA;



markdashed_rt_angle(z.B,z.C,z.O);

draw z.O--z.OO dashed linedot;
draw z.AA--z.A--z.O;
draw z.OO--z.AA dashed evenly;
draw z.B--z.C dashed evenly;
draw (-z.AA)--(-z.AA+z.O);

draw arc(z.AA, z.AA rotated -90, z.AA rotated 180) yscaled k;
draw arc(z.AA, z.AA rotated 90, z.AA rotated 180) yscaled k dashed evenly;
draw arc(z.AA, z.AA rotated -90, z.AA rotated 180) yscaled k shifted z.C;
draw arc(z.AA, z.AA rotated 90, z.AA rotated 180) yscaled k shifted z.C dashed evenly;
draw circumcircle(z.AA, z.AA rotated -90, z.AA rotated 180) yscaled k shifted z.O;

dOt z.B;

label.rt(btex $A$ etex, z.A);
label.rt(btex $A_1$ etex, z.AA);
label.rt(btex $B$ etex, z.B);
label.lft(btex $O$ etex, z.O);
label.lft(btex $O_1$ etex, z.OO+(1,0));
label.lft(btex $C$ etex, z.C);
endfig;

beginfig(125)
save u;
u:=1cm;

z.S= origin;
z.M=(-1,-1)*u;
z.N=(1,-1)*u;

save p; path p[];
p1=z.M{2,1.5}..tension 1.3..{1,1}z.N;

draw p1 pensemibold;
draw ddline(z.S,point .2 of p1)(1,.5) pensemibold;
draw ddline(z.S,point .3 of p1)(1,.5);
draw ddline(z.S,point .4 of p1)(1,.5);
draw ddline(z.S,point .5 of p1)(1,.5);
draw ddline(z.S,point .6 of p1)(1,.5);
draw ddline(z.S,point .7 of p1)(1,.5);
draw ddline(z.S,point .8 of p1)(1,.5);

dOt z.S;

z.A=1.5*(point .2 of p1);
z.B=-(point .2 of p1);

label.llft(btex $A$ etex, z.A);
label.urt(btex $B$ etex, z.B);
label.rt(btex $S$ etex, z.S);
label.lft(btex $M$ etex, z.M);
label.rt(btex $N$ etex, z.N);
endfig;

beginfig(126)
save u;
u:=1cm;

save u;
u:=1cm;

z.S= origin;

z.a0=(-1.4,-2)*u;
z.a1=(0,-2.2)*u;
z.a2=(1.2,-1.9)*u;
z.a3=(0,-1.5)*u;

save p; path p[];
p1=z.a0{z.a0}..tension 1.3..z.a1..z.a2{-z.a2}..z.a3..cycle;

draw subpath (0,2) of p1 pensemibold;
draw subpath (2,4) of p1 pensemibold dashed evenly;

draw z.S--point 0 of p1;
draw z.S--point .125 of p1;
draw z.S--point .25 of p1;
draw z.S--point .25+.125 of p1;
draw z.S--point .5 of p1;
draw z.S--point .5+.125 of p1;
draw z.S--point .75 of p1;
draw z.S--point .75+.125 of p1;
draw z.S--point 1 of p1;
draw z.S--point 1+.125 of p1;
draw z.S--point 1.25 of p1;
draw z.S--point 1.25+.125 of p1;
draw z.S--point 1.5 of p1;
draw z.S--point 1.5+.125 of p1;
draw z.S--point 1.75 of p1;
draw z.S--point 1.75+.125 of p1;
draw z.S--point 2 of p1;

label.top(btex $S$ etex, z.S);
endfig;

beginfig(127)
save u,k;
u:=1cm;
k:=.6;

z.slope1=(-1,1.5);
z.slope2=(x.slope1,-y.slope1);


transform T[];
T0=identity scaled k shifted (z.S*(1-k));

z.O=origin;
z.A=(1.5,0)*u;
z.B=z.A transformed T0;
z.O1=z.O transformed T0;



save p; path p[];
p1=ellipse_canonical(x.A, .5*u);


z.A1=point (directiontime z.slope1 of p1) of p1;
z.A2=point (directiontime z.slope2 of p1) of p1;
z.S=z.A1+whatever*z.slope1=z.A2+whatever*z.slope2;

draw p1 cutbefore z.A1 cutafter z.A2 dashed evenly;
draw p1 cutbefore z.A2;
draw p1 cutafter z.A1;

draw (p1 cutbefore z.A1 cutafter z.A2) transformed T0 dashed evenly;
draw (p1 cutbefore z.A2) transformed T0;
draw (p1 cutafter z.A1) transformed T0;

draw z.A1--z.S--z.A2;

draw z.S--z.O dashed linedot;
draw z.A--z.O dashed evenly;
draw z.B--z.O1 dashed evenly;

dOt z.A,z.B,z.O,z.O1;

label.rt(btex $A$ etex, z.A);
label.urt(btex $B$ etex, z.B);
label.top(btex $S$ etex, z.S);
label.lft(btex $O$ etex, z.O);
label.lft(btex $O_1$ etex, z.O1);

endfig;

beginfig(128)
save u,k;
u:=1cm;
k:=.6;

z.slope1=(-1,3);
z.slope2=(x.slope1,-y.slope1);


transform T[];
T0=identity scaled k shifted (z.S*(1-k));

z.O=origin;
z.A=(1.5,0)*u;
z.B=z.A transformed T0;
z.O1=z.O transformed T0;



save p; path p[];
p1=ellipse_canonical(x.A, .5*u);


z.A1=point (directiontime z.slope1 of p1) of p1;
z.A2=point (directiontime z.slope2 of p1) of p1;
z.S=z.A1+whatever*z.slope1=z.A2+whatever*z.slope2;

z.B1=z.A1  transformed T0;
z.B2=z.A2  transformed T0;

draw p1 cutbefore z.A1 cutafter z.A2 dashed evenly;
draw p1 cutbefore z.A2;
draw p1 cutafter z.A1;

draw p1  transformed T0;


draw z.A1--z.B1;
draw z.A2--z.B2;

draw z.O1--z.O dashed linedot;
draw z.A--z.O dashed evenly;
draw z.B--z.O1;

dOt z.A,z.B,z.O,z.O1;

label.rt(btex $A$ etex, z.A);
label.urt(btex $A_1$ etex, z.B);
label.lft(btex $O$ etex, z.O);
label.lft(btex $O_1$ etex, z.O1);

endfig;

beginfig(129)
save u, k, ang;
u:=1.2cm;
k:=.3;
ang:=158;


z.O=(0,2.5)*u;
z.C=(0,.9)*u;
z.OO=origin;

z.RR=(1,0)*u;
z.R=z.O+z.RR;
z.B=z.C+z.RR;

z.AA=z.RR rotated ang  yscaled k;
z.BB=z.RR rotated (ang+1*60)  yscaled k;
z.CC=z.RR rotated (ang+2*60)  yscaled k;
z.DD=z.RR rotated (ang+3*60)  yscaled k;
z.EE=z.RR rotated (ang+4*60)  yscaled k;
z.FF=z.RR rotated (ang+5*60)  yscaled k;

draw z.RR--z.R;
draw (-z.RR)--(-z.RR+z.O);

draw arc(z.RR, z.RR rotated -90, z.RR rotated 180) yscaled k;
draw arc(z.RR, z.RR rotated 90, z.RR rotated 180) yscaled k dashed evenly;
draw circumcircle(z.RR, z.RR rotated -90, z.RR rotated 180) yscaled k shifted z.O;

draw z.AA--z.BB--z.CC--z.DD--z.EE--z.FF--cycle dashed evenly;
draw (z.AA--z.BB--z.CC--z.DD--z.EE--z.FF--cycle) shifted z.O;

draw z.AA--z.AA+z.O dashed evenly;
draw z.BB--z.BB+z.O;
draw z.CC--z.CC+z.O;
draw z.DD--z.DD+z.O;
draw z.EE--z.EE+z.O dashed evenly;
draw z.FF--z.FF+z.O dashed evenly;



label.ulft(btex $A$ etex, z.AA+z.O);
label.lrt(btex $B$ etex, z.BB+z.O+(-1,-2));
label.lrt(btex $C$ etex, z.CC+z.O);
label.lrt(btex $D$ etex, z.DD+z.O+(1,1));
label.urt(btex $E$ etex, z.EE+z.O);
label.top(btex $F$ etex, z.FF+z.O);

label.lft(btex $A'$ etex, z.AA);
label.llft(btex $B'$ etex, z.BB);
label.bot(btex $C'$ etex, z.CC);
label.lrt(btex $D'$ etex, z.DD);
label.ulft(btex $E'$ etex, z.EE+(0,2));
label.ulft(btex $F'$ etex, z.FF);
endfig;


beginfig(130)
save u,k,ang;
u:=1cm;
k:=.4;
ang:=158;

z.slope1=(-1,2);
z.slope2=(x.slope1,-y.slope1);

z.O=origin;
z.R=(1.5,0)*u;

z.A=z.R2;
z.B=z.R2 yscaled (1/k) rotated (1*60)  yscaled k;
z.C=z.R2 yscaled (1/k) rotated (2*60)  yscaled k;
z.D=z.R2 yscaled (1/k) rotated (3*60)  yscaled k;
z.E=z.R2 yscaled (1/k) rotated (4*60)  yscaled k;
z.F=z.R2 yscaled (1/k) rotated (5*60)  yscaled k;

z.K=.5[z.A,z.B];

save p; path p[];
p1=ellipse_canonical(x.R, k*x.R);


z.R1=point (directiontime z.slope1 of p1) of p1;
z.R2=point (directiontime z.slope2 of p1) of p1;
z.S=z.R1+whatever*z.slope1=z.R2+whatever*z.slope2;



draw p1 cutbefore z.R1 cutafter z.R2 dashed evenly;
draw p1 cutbefore z.R2;
draw p1 cutafter z.R1;

draw z.R1--z.S--z.R2;
draw z.S--z.O dashed linedot;

draw z.S--z.B;
draw z.S--z.C;
draw z.S--z.D;
draw z.S--z.E dashed evenly;
draw z.S--z.F dashed evenly;

draw z.S--z.K dashed evenly;

draw z.A--z.B--z.C--z.D--z.E--z.F--cycle dashed evenly;

dOt z.O;

label.lft(btex $A$ etex, z.A);
label.llft(btex $B$ etex, z.B);
label.bot(btex $C$ etex, z.C);
label.lrt(btex $D$ etex, z.D);
label.llft(btex $E$ etex, z.E);
label.bot(btex $F$ etex, z.F);

whitelabel.llft(btex $K$ etex, z.K);
label.top(btex $S$ etex, z.S);
label.lft(btex $O$ etex, z.O);

endfig;

beginfig(131)
save u,k,ang,l;
u:=1.2cm;
k:=.4;
l:=.6;
ang:=158;

z.slope1=(-1,2.5);
z.slope2=(x.slope1,-y.slope1);

z.O=origin;
z.R=(1.5,0)*u;

z.A=z.R2;
z.B=z.R2 yscaled (1/k) rotated (1*60)  yscaled k;
z.C=z.R2 yscaled (1/k) rotated (2*60)  yscaled k;
z.D=z.R2 yscaled (1/k) rotated (3*60)  yscaled k;
z.E=z.R2 yscaled (1/k) rotated (4*60)  yscaled k;
z.F=z.R2 yscaled (1/k) rotated (5*60)  yscaled k;

z.K=.5[z.A,z.B];

save p; path p[];
p1=ellipse_canonical(x.R, k*x.R);


z.R1=point (directiontime z.slope1 of p1) of p1;
z.R2=point (directiontime z.slope2 of p1) of p1;
z.S=z.R1+whatever*z.slope1=z.R2+whatever*z.slope2;

z.A1= z.A scaled l shifted (z.S*(1-l));
z.B1=z.B scaled l shifted (z.S*(1-l));
z.C1=z.C scaled l shifted (z.S*(1-l));
z.D1=z.D scaled l shifted (z.S*(1-l));
z.E1=z.E scaled l shifted (z.S*(1-l));
z.F1=z.F scaled l shifted (z.S*(1-l));

draw p1 cutbefore z.R1 cutafter z.R2 dashed evenly;
draw p1 cutbefore z.R2;
draw p1 cutafter z.R1;

draw p1 scaled l shifted (z.S*(1-l));

z.R11= z.R1 scaled l shifted (z.S*(1-l));
z.R21=z.R2 scaled l shifted (z.S*(1-l));
z.O1=z.O scaled l shifted (z.S*(1-l));

draw z.R1--z.R11;
draw z.R2--z.R21;
draw z.O1--z.O dashed linedot;

draw z.A1--z.O1;
draw z.A--z.O dashed evenly;

z.BB=.5[z.A,z.A1];
z.CC=.5[z.O,z.O1];
draw z.BB--z.CC dashed evenly;

draw z.B1--z.B;
draw z.C1--z.C;
draw z.D1--z.D;
draw z.E1--z.E dashed evenly;
draw z.F1--z.F dashed evenly;

draw z.A--z.B--z.C--z.D--z.E--z.F--cycle dashed evenly;
draw z.A1--z.B1--z.C1--z.D1--z.E1--z.F1--cycle;

dOt z.O, z.O1, z.BB, z.CC;

label.lft(btex $A$ etex, z.A);
label.ulft(btex $A_1$ etex, z.A1);
label.lft(btex $B$ etex, z.BB);
label.rt(btex $C$ etex, z.CC);
label.rt(btex $O$ etex, z.O);
label.rt(btex $O_1$ etex, z.O1);
endfig;

beginfig(132)
save u, k, ang;
u:=1cm;
k:=.3;
ang:=128;

z.O=(0,2.5)*u;
z.C=(0,.9)*u;
z.OO=origin;

z.shift=(2*x.RR,y.O*(1-1/sqrt(1-k**2))/2);
z.y=(0,y.O/sqrt(1-k**2));

z.RR=(1,0)*u;
z.R=z.O+z.RR;
z.B=z.C+z.RR;

z.AA=z.RR rotated ang  yscaled k;
z.BB=z.RR rotated (ang+1*72)  yscaled k;
z.CC=z.RR rotated (ang+2*72)  yscaled k;
z.DD=z.RR rotated (ang+3*72)  yscaled k;
z.EE=z.RR rotated (ang+4*72)  yscaled k;

draw z.RR--z.R;
draw (-z.RR)--(-z.RR+z.O);

draw arc(z.RR, z.RR rotated -90, z.RR rotated 180) yscaled k;
draw arc(z.RR, z.RR rotated 90, z.RR rotated 180) yscaled k dashed evenly;
draw circumcircle(z.RR, z.RR rotated -90, z.RR rotated 180) yscaled k shifted z.O;

draw z.AA--z.BB--z.CC--z.DD--z.EE--cycle dashed evenly;
draw (z.AA--z.BB--z.CC--z.DD--z.EE--cycle) shifted z.O;

draw z.AA--z.AA+z.O dashed evenly;
draw z.BB--z.BB+z.O;
draw z.CC--z.CC+z.O;
draw z.DD--z.DD+z.O;
draw z.EE--z.EE+z.O dashed evenly;

draw z.shift--z.shift+z.y--z.shift+z.y+2*3.141592*z.RR--z.shift+2*3.141592*z.RR--cycle;
draw z.shift+z.y+1*2*sind 36*z.RR--z.shift+1*2*sind 36*z.RR;
draw z.shift+z.y+2*2*sind 36*z.RR--z.shift+2*2*sind 36*z.RR;
draw z.shift+z.y+3*2*sind 36*z.RR--z.shift+3*2*sind 36*z.RR;
draw z.shift+z.y+4*2*sind 36*z.RR--z.shift+4*2*sind 36*z.RR;
draw z.shift+z.y+5*2*sind 36*z.RR--z.shift+5*2*sind 36*z.RR;


label.llft(btex $N$ etex, z.shift);
label.ulft(btex $K$ etex, z.shift+z.y);
label.top(btex $L$ etex, z.shift+z.y+5*2*sind 36*z.RR);
label.bot(btex $M$ etex, z.shift+5*2*sind 36*z.RR);
label.urt(btex $P$ etex, z.shift+z.y+2*3.141592*z.RR);
label.lrt(btex $Q$ etex, z.shift+2*3.141592*z.RR);
endfig;

beginfig(133)
save u,k,m,ang;
u:=.7cm;
k:=.4;
m:=.6;
ang:=158;

z.slope1=(-1,2.5);
z.slope2=(x.slope1,-y.slope1);

z.O=origin;
z.R=(1.5,0)*u;

z.A=z.R2;
z.B=z.R2 yscaled (1/k) rotated (1*72)  yscaled k;
z.C=z.R2 yscaled (1/k) rotated (2*72)  yscaled k;
z.D=z.R2 yscaled (1/k) rotated (3*72)  yscaled k;
z.E=z.R2 yscaled (1/k) rotated (4*72)  yscaled k;


save p; path p[];
p1=ellipse_canonical(x.R, k*x.R);


z.R1=point (directiontime z.slope1 of p1) of p1;
z.R2=point (directiontime z.slope2 of p1) of p1;
z.S=z.R1+whatever*z.slope1=z.R2+whatever*z.slope2;

z.l=(0,sqrt(y.S**2+x.R**2));

z.SS=z.S/2+ z.l/2+5*z.R;
z.CC=z.SS-((sind 36)*x.R,sqrt(y.S**2+((cosd 36)*x.R)**2));
z.DD=z.SS-(-(sind 36)*x.R,sqrt(y.S**2+((cosd 36)*x.R)**2));
z.BB= z.DD reflectedabout (z.SS,z.CC);
z.AA= z.CC reflectedabout (z.SS,z.BB);
z.EE= z.CC reflectedabout (z.SS,z.DD);
z.FF= z.DD reflectedabout (z.SS,z.EE);

z.AAA=m[z.SS,z.AA];
z.BBB=m[z.SS,z.BB];
z.CCC=m[z.SS,z.CC];
z.DDD=m[z.SS,z.DD];
z.EEE=m[z.SS,z.EE];
z.FFF=m[z.SS,z.FF];

z.M=z.AA rotatedabout(z.SS, 360*x.R/y.l);

z.MMM=m[z.SS,z.M];

draw p1 cutbefore z.R1 cutafter z.R2 dashed evenly;
draw p1 cutbefore z.R2;
draw p1 cutafter z.R1;

draw (p1 cutbefore z.R1 cutafter z.R2) scaled m shifted (z.S*(1-m)) dashed evenly;
draw (p1 cutbefore z.R2) scaled m shifted (z.S*(1-m));
draw (p1 cutafter z.R1) scaled m shifted (z.S*(1-m));

draw z.R1--z.S--z.R2;

draw z.S--z.B;
draw z.S--z.C;
draw z.S--z.D dashed evenly;
draw z.S--z.E dashed evenly;

draw z.A--z.B--z.C--z.D--z.E--cycle dashed evenly;
draw (z.A--z.B--z.C--z.D--z.E--cycle) scaled m shifted (z.S*(1-m)) dashed evenly;

draw z.SS--z.AA--z.BB--z.CC--z.DD--z.EE--z.FF--cycle;
draw z.SS--z.BB;
draw z.SS--z.CC;
draw z.SS--z.DD;
draw z.SS--z.EE;
draw z.SS--z.M;

draw z.AAA--z.BBB--z.CCC--z.DDD--z.EEE--z.FFF;

draw arc(z.AA,z.DD,z.M);
draw arc(z.AAA,z.DDD,z.MMM);

label.top(btex $S$ etex, z.S);
label.top(btex $S$ etex, z.SS);
label.lft(btex $K$ etex, z.AA);
label.lrt(btex $L$ etex, z.FF);
label.rt(btex $M$ etex, z.M);
label.ulft(btex $P$ etex, z.AAA);
label.urt(btex $N$ etex, z.MMM);

label.llft(btex $a$ etex, z.BB);
label.bot(btex $b$ etex, z.CC);
label.bot(btex $c$ etex, z.DD);
endfig;

beginfig(134)
save u,k;
u:=1cm;
k:=.6;

z.slope1=(-1,1.5);
z.slope2=(x.slope1,-y.slope1);
z.shift=(1,0)*u;
z.extra=(-.3,0)*u;


transform T[];
T0=identity scaled k shifted (z.S*(1-k));

z.O=origin;
z.A=(1.9,0)*u;
z.B=z.A transformed T0;
z.O1=z.O transformed T0;



save p; path p[];
p1=ellipse_canonical(x.A, .7*u);


z.A1=point (directiontime z.slope1 of p1) of p1;
z.A2=point (directiontime z.slope2 of p1) of p1;
z.S=z.A1+whatever*z.slope1=z.A2+whatever*z.slope2;

draw p1 cutbefore z.A1 cutafter z.A2 dashed evenly;
draw p1 cutbefore z.A2;
draw p1 cutafter z.A1;

draw (p1 cutbefore z.A1 cutafter z.A2) transformed T0 dashed evenly;
draw (p1 cutbefore z.A2) transformed T0;
draw (p1 cutafter z.A1) transformed T0;

draw z.A1--z.S--z.A2;

draw z.S--z.O dashed linedot;
drawdblarrow z.A--z.O dashed evenly;
draw z.A+z.shift--z.A;
drawdblarrow z.B--z.O1 dashed evenly;
draw z.O1+z.A+z.shift--z.B;
draw z.S+z.A+z.shift--z.S;

drawdblarrow z.S+z.A+z.shift+z.extra--z.O1+z.A+z.shift+z.extra;
drawdblarrow z.O+z.A+z.shift+z.extra--z.O1+z.A+z.shift+z.extra;

label.rt(btex $h$ etex, .5[z.S+z.A+z.shift+z.extra,z.O1+z.A+z.shift+z.extra]);
label.rt(btex $H$ etex, .5[z.O+z.A+z.shift+z.extra,z.O1+z.A+z.shift+z.extra]);
label.top(btex $r$ etex, .5[z.O1,z.B]);
label.top(btex $R$ etex, .5[z.O,z.A]);

endfig;

beginfig(135)
save u, k,m;
u:=.9cm;
k:=.4;
m:=.7;

z.O=(0,2)*u;
z.C=(0,.9)*u;
z.OO=origin;

z.AA=(1.5,0)*u;
z.A=z.O+z.AA;
z.B=z.C+z.AA;

transform T;
T=identity scaled m shifted ((3,0)*u);

draw z.O--z.OO dashed linedot;
draw z.AA--z.A--z.O;
draw z.OO--z.AA dashed evenly;
draw (-z.AA)--(-z.AA+z.O);
draw arc(z.AA, z.AA rotated -90, z.AA rotated 180) yscaled k;
draw arc(z.AA, z.AA rotated 90, z.AA rotated 180) yscaled k dashed evenly;
draw circumcircle(z.AA, z.AA rotated -90, z.AA rotated 180) yscaled k shifted z.O;

draw (z.O--z.OO) transformed T dashed linedot;
draw (z.AA--z.A--z.O) transformed T;
draw (z.OO--z.AA) transformed T dashed evenly;
draw ((-z.AA)--(-z.AA+z.O)) transformed T;
draw (arc(z.AA, z.AA rotated -90, z.AA rotated 180) yscaled k) transformed T;
draw (arc(z.AA, z.AA rotated 90, z.AA rotated 180) yscaled k) transformed T dashed evenly;
draw (circumcircle(z.AA, z.AA rotated -90, z.AA rotated 180) yscaled k shifted z.O) transformed T;


label.top(btex $r$ etex, .5[z.OO,z.AA]);
label.lft(btex $h$ etex, .5[z.O,z.OO]);
whitelabel.top(btex $r_1$ etex, .5[z.OO,z.AA] transformed T);
label.lft(btex $h_1$ etex, .5[z.O,z.OO] transformed T);

endfig;

beginfig(136)
save u,k,m;
u:=.9cm;
k:=.6;
m:=.7;

transform T;
T=identity scaled m shifted ((3,0)*u);

z.slope1=(-1,1.5);
z.slope2=(x.slope1,-y.slope1);


transform T[];
T0=identity scaled k shifted (z.S*(1-k));

z.O=origin;
z.A=(1.5,0)*u;
z.B=z.A transformed T0;
z.O1=z.O transformed T0;



save p; path p[];
p1=ellipse_canonical(x.A, .5*u);


z.A1=point (directiontime z.slope1 of p1) of p1;
z.A2=point (directiontime z.slope2 of p1) of p1;
z.S=z.A1+whatever*z.slope1=z.A2+whatever*z.slope2;

draw p1 cutbefore z.A1 cutafter z.A2 dashed evenly;
draw p1 cutbefore z.A2;
draw p1 cutafter z.A1;
draw z.A1--z.S--z.A2;
draw z.S--z.O dashed linedot;
draw z.A--z.O dashed evenly;

draw (p1 cutbefore z.A1 cutafter z.A2) transformed T dashed evenly;
draw (p1 cutbefore z.A2) transformed T;
draw (p1 cutafter z.A1) transformed T;
draw (z.A1--z.S--z.A2) transformed T;
draw (z.S--z.O) transformed T dashed linedot;
draw (z.A--z.O) transformed T dashed evenly;

label.top(btex $r$ etex, .5[z.O,z.A]);
label.lft(btex $h$ etex, .5[z.O,z.S]);
label.urt(btex $l$ etex, .5[z.A,z.S]);
whitelabel.top(btex $r_1$ etex, .5[z.O,z.A] transformed T);
label.lft(btex $h_1$ etex, (.5[z.O,z.S] transformed T)+(2,0));
label.urt(btex $l_1$ etex, .5[z.A,z.S] transformed T);
endfig;

beginfig(137)
save u,k;
u:=1.4cm;
k:=.22;

z.A=(1,0)*u;

save p;
path p[];
p0=circle(origin,z.A);
p1=ellipse_canonical(x.A, k*x.A);

z.slope1=(-1,1.8);
z.slope2=(x.slope1,-y.slope1);

z.A1=point (directiontime z.slope1 of p1) of p1;
z.A2=point (directiontime z.slope2 of p1) of p1;
z.B1=point (directiontime z.slope1 of p0) of p0;
z.B2=point (directiontime z.slope2 of p0) of p0;
z.S=whatever[z.A1,z.B1]=whatever[z.A2,z.B2];

p2=p1 shifted (-z.S) scaled (x.B1/x.A1) shifted z.S;

z.O=origin;
z.K= z.O shifted (-z.S) scaled (x.B1/x.A1) shifted z.S;
z.M= point 3.5 of p2;
z.N=(0,x.A*sqrt(1-k**2));

markdashed_rt_angle(z.M,z.K,z.O);

draw p0;
draw p1 cutafter -z.A dashed evenly;
draw p1 cutbefore -z.A;
draw p2 cutbefore z.B1 cutafter z.B2 dashed evenly;
draw p2 cutafter z.B1;
draw p2 cutbefore z.B2;

draw ddline(z.N,(-z.N))(0,0) dashed linedot;
draw z.O--z.M--z.K dashed evenly;

dOt z.O,z.K,z.M;

label.rt(btex $A$ etex, z.A);
label.lft(btex $B$ etex, -z.A);
label.urt(btex $C$ etex, z.B1);
label.ulft(btex $D$ etex, z.B2);
label.lft(btex $O$ etex, z.O);
label.lft(btex $K$ etex, z.K);
whitelabel.top(btex $M$ etex, z.M+(-2,1));

endfig;

beginfig(138)
save u,k;
u:=1.4cm;
k:=.22;

z.A=(1,0)*u;

z.b=(.4,-.5)*u;
z.h=(0,sqrt(1-(abs(z.b)/x.A)**2)*sqrt(1-k**2)*x.A);
z.B=z.b yscaled k;
z.C=z.B-z.h;
z.AA=z.B+z.h;


save p;
path p[];
p0=circle(origin,z.A);
p1=ellipse_canonical(x.A, k*x.A);

z.slope1=(-1,1.8);
z.slope2=(x.slope1,-y.slope1);

z.A1=point (directiontime z.slope1 of p1) of p1;
z.A2=point (directiontime z.slope2 of p1) of p1;
z.B1=point (directiontime z.slope1 of p0) of p0;
z.B2=point (directiontime z.slope2 of p0) of p0;
z.S=whatever[z.A1,z.B1]=whatever[z.A2,z.B2];

p2=p1 shifted (-z.S) scaled (x.B1/x.A1) shifted z.S;

p3=2*(point 3.2 of p1)--2*(point 2.2 of p1)--2*(point 1.2 of p1)--2*(point .2 of p1)--cycle;

z.O=origin;
z.K= z.O shifted (-z.S) scaled (x.B1/x.A1) shifted z.S;
z.M= point 3.5 of p2;
z.N=(0,x.A*sqrt(1-k**2));

markdashed_rt_angle(z.O,z.B,z.AA);

draw p0 cutafter -z.A;
draw p0 cutbefore -z.A cutafter p3 cutafter p3 dashed evenly;
draw p0 cutbefore -z.A cutbefore p3 cutbefore p3 dashed evenly;
draw p0 cutbefore -z.A cutbefore p3 cutafter p3;
draw p1 cutafter -z.A dashed evenly;
draw p1 cutbefore -z.A;
draw p3 cutbefore subpath (0,1) of p0;
draw p3 cutafter subpath (1,2) of p0;
draw (p3 cutafter subpath (0,1) of p0) cutbefore subpath (1,2) of p0 dashed evenly;
draw z.O--z.AA--z.C--cycle dashed evenly;
draw z.O--z.B dashed evenly;

dOt z.O, z.B,z.C,z.AA;

label.rt(btex $A$ etex, z.AA);
label.urt(btex $B$ etex, z.B+(0,-2));
label.lrt(btex $C$ etex, z.C);
label.lft(btex $O$ etex, z.O);
label.rt(btex $P$ etex, (point 1 of p3)+(12,3));
endfig;

beginfig(139)
save u,ang;
u:=1.4cm;
ang:=60;

save p;
path p[];

z.A=(1,0)*u;

p0=circle((0,0),z.A);

p1= p0 yscaled .5;
p2= p0 yscaled .4 rotated ang; 

z.C = point .4 of p2;

z.N = p1 intersectionpoint p2;
z.M=-z.N;
z.O=origin;

draw p0;
draw subpath (0,2) of p1 dashed evenly;
draw subpath (2,4) of p1;
draw subpath (0,2) of p2;
draw subpath (2,4) of p2 dashed evenly;

draw z.M--z.N dashed evenly;

dOt z.O,z.N,z.C;

label.rt(btex $A$ etex, z.A);
label.lft(btex $B$ etex, -z.A);
label.lrt(btex $C$ etex, z.C);
label.llft(btex $D$ etex, -z.A rotated ang);
label.lrt(btex $M$ etex, z.M+(0,-2));
label.lrt(btex $N$ etex, z.N+(-3,-2));
label.ulft(btex $O$ etex, z.O+(1,0));

endfig;

beginfig(140)
save u,k;
u:=1.4cm;
k:=.4;

z.A=(1,0)*u;

z.b=(.4,-.5)*u;
z.h=(0,sqrt(1-(abs(z.b)/x.A)**2)*sqrt(1-k**2)*x.A);
z.B=z.b yscaled k;
z.C=z.B-z.h;
z.AA=z.B+z.h;
z.N=(0,sqrt(1-k**2)*x.A);


save p;
path p[];
p0=circle(origin,z.A);
p1=ellipse_canonical(x.A, k*x.A);

z.slope1=(-1,1.8);
z.slope2=(x.slope1,-y.slope1);

p3=(1.4*(point 3.2 of p1)--1.4*(point 2.2 of p1)--1.4*(point 1.2 of p1)--1.4*(point .2 of p1)--cycle) shifted z.N;

z.O=origin;
z.N=(0,x.A*sqrt(1-k**2));
z.BB=z.N+(.7,0)*u;
z.CC=z.N+(-.5,.2)*u;

draw p0 cutafter subpath (3,4) of p3;
draw p0 cutbefore subpath (0,1) of p3;
draw (p0 cutafter subpath (0,1) of p3) cutbefore subpath (3,4) of p3 dashed evenly;
draw p3;
draw z.N--z.O--z.BB dashed evenly;
draw ddline(z.N,z.BB)(.2,.2);
draw ddline(z.N,z.CC)(.2,.2);

dOt z.O,z.N,z.BB;

whitelabel.top(btex $A$ etex, z.N);
label.top(btex $B$ etex, z.BB);
label.top(btex $C$ etex, z.CC);
label.bot(btex $O$ etex, z.O);
label.rt(btex $P$ etex, (point 1 of p3)+(12,3));
endfig;

beginfig(141)
save u,k, ang;
u:=1.4cm;
k:=.3;
ang:=70;

z.A=(1,0)*u;

save p;
path p[];
p0=circle(origin,z.A);
p1=ellipse_canonical(x.A, k*x.A);

z.slope1=(-1,1.8);
z.slope2=(x.slope1,-y.slope1);

z.A1=point (directiontime z.slope1 of p1) of p1;
z.A2=point (directiontime z.slope2 of p1) of p1;
z.B1=point (directiontime z.slope1 of p0) of p0;
z.B2=point (directiontime z.slope2 of p0) of p0;
z.S=whatever[z.A1,z.B1]=whatever[z.A2,z.B2];

p2=p1 shifted (-z.S) scaled (x.B1/x.A1) shifted z.S;

z.3slope1=(1,1.2);
z.3slope2=(x.3slope1,-y.3slope1);

z.3A1=point (directiontime z.3slope1 of p1) of p1;
z.3A2=point (directiontime z.3slope2 of p1) of p1;
z.3B1=point (directiontime z.3slope1 of p0) of p0;
z.3B2=point (directiontime z.3slope2 of p0) of p0;
z.3S=whatever[z.3A1,z.3B1]=whatever[z.3A2,z.3B2];

p3=p1 shifted (-z.3S) scaled (x.3B1/x.3A1) shifted z.3S;

z.O=origin;
z.K= z.O shifted (-z.S) scaled (x.B1/x.A1) shifted z.S;
z.L= z.O shifted (-z.3S) scaled (x.3B1/x.3A1) shifted z.3S;
z.N=(0,x.A*sqrt(1-k**2));

z.NN=z.N rotated ang;

p4= p0 yscaled (y.NN/sqrt(x.A**2-x.NN**2)) rotated -ang;

z.AA= subpath (0,2) of p4 intersectionpoint subpath (2,4) of p2;
z.BB= subpath (0,2) of p4 intersectionpoint subpath (2,4) of p3;
z.AA1=2*z.K-z.AA;
z.BB1=2*z.L-z.BB;

draw p0;

draw p2 cutbefore z.B1 cutafter z.B2 dashed evenly;
draw p2 cutafter z.B1;
draw p2 cutbefore z.B2;

draw p3 cutafter z.3B1 cutbefore z.3B2;
draw p3 cutbefore z.3B1 dashed evenly;
draw p3 cutafter z.3B2 dashed evenly;

draw subpath (0,2) of p4;
draw subpath (2,4) of p4 dashed evenly;

draw ddline(z.N,(-z.N))(0,0) dashed linedot;
draw z.K--z.AA dashed evenly;
draw z.L--z.BB dashed evenly;

dOt z.K,z.L,z.AA,z.BB,z.AA1,z.BB1,z.N,-z.N;

label.lrt(btex $A$ etex, z.AA);
label.lrt(btex $A_1$ etex, z.AA1+(-1,0));
label.lrt(btex $B$ etex, z.BB);
whitelabel.urt(btex $B_1$ etex, z.BB1+(-1,0));
label.urt(btex $K$ etex, z.K);
label.urt(btex $L$ etex, z.L);
label.top(btex $M$ etex, z.N+(0,1));
label.bot(btex $N$ etex, -z.N-(0,1));
endfig;

beginfig(142)
save u;
u:=1cm;

z.E=origin;
z.A=(0,3)*u;
z.B=z.A rotated -40;
z.D=.5[z.A,z.B];
z.C=altitude(z.E,z.B,z.A);

mark_rt_angle(z.A,z.C,z.B);
mark_rt_angle(z.E,z.D,z.A);
rimmark(z.A--z.D,z.D--z.B);

draw ddline(z.E,z.A)(.2,.2) dashed linedot;
draw z.A--z.B--z.C--cycle;
draw z.E--z.D;

label.lft(btex $A$ etex, z.A);
label.rt(btex $B$ etex, z.B);
label.lft(btex $C$ etex, z.C);
label.urt(btex $D$ etex, z.D);
label.lft(btex $E$ etex, z.E);

endfig;

beginfig(143)
save u;
u:=1cm;

z.G=origin;
z.B=(1,3)*u;
z.A=(0,y.B);
z.C=z.B rotated -30;
z.D=(0,y.C);
z.E=.5[z.B,z.C];
z.F=(0,y.E);
z.H=altitude(z.D,z.B,z.C);

mark_rt_angle(z.G,z.F,z.E);
mark_rt_angle(z.G,z.E,z.C);
mark_rt_angle(z.B,z.H,z.C);
rimmark(z.B--z.E,z.E--z.C);

draw ddline(z.G,z.A)(.2,.2) dashed linedot;
draw z.A--z.B--z.C--z.D--cycle;
draw z.G--z.E--z.F;
draw z.B--z.H;

label.lft(btex $A$ etex, z.A);
label.top(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.lft(btex $D$ etex, z.D);
label.urt(btex $E$ etex, z.E);
label.lft(btex $F$ etex, z.F);
label.lft(btex $G$ etex, z.G);
label.bot(btex $H$ etex, z.H);

endfig;

beginfig(144)
save u;
u:=1cm;

z.O=origin;
z.A=(0,2)*u;
z.F=-z.A;
z.B=z.A rotated 40;
z.C=z.B rotated 30;
z.D=z.C rotated 30;
z.E=z.D rotated 30;

draw arc(z.A,z.C,z.F) penhair;
draw arc(z.B,z.C,z.E) pensemibold;
draw z.A--z.F dashed linedot;
draw z.B--z.C--z.D--z.E;

draw z.B--altitude(z.A,z.B,z.F) penhair;
draw z.C--altitude(z.A,z.C,z.F) penhair;
draw z.D--altitude(z.A,z.D,z.F) penhair;
draw z.E--altitude(z.A,z.E,z.F) penhair;

label.top(btex $A$ etex, z.A);
label.ulft(btex $B$ etex, z.B);
label.lft(btex $C$ etex, z.C);
label.lft(btex $D$ etex, z.D);
label.llft(btex $E$ etex, z.E);
label.bot(btex $F$ etex, z.F);
endfig;

beginfig(145)
save u;
u:=1cm;

z.O=origin;
z.A=(0,2)*u;
z.B=-z.A;
z.C=z.A rotated -36;
z.D=z.C rotated -36;
z.E=z.D rotated -36;
z.F=z.E rotated -36;

z.c=altitude(z.A,z.C,z.B);
z.d=altitude(z.A,z.D,z.B);
z.e=altitude(z.A,z.E,z.B);
z.f=altitude(z.A,z.F,z.B);

draw arc(z.A,z.C,z.B) penhair;
draw arc(z.A,z.C,z.F) pensemibold;
draw z.A--z.B dashed linedot;
draw z.A--z.C--z.D--z.E--z.F;

draw z.C--z.c penhair;
draw z.D--z.d penhair;
draw z.E--z.e penhair;
draw z.F--z.f penhair;

draw z.O--altitude(z.A,z.O,z.C) penhair;
draw z.O--altitude(z.C,z.O,z.D) penhair;
draw z.O--altitude(z.D,z.O,z.E) penhair;
draw z.O--altitude(z.E,z.O,z.F) penhair;

dOt z.O;

label.top(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.B);
label.urt(btex $C$ etex, z.C);
label.rt(btex $D$ etex, z.D);
label.rt(btex $E$ etex, z.E);
label.lrt(btex $F$ etex, z.F);

label.lft(btex $c$ etex, z.c);
label.lft(btex $d$ etex, z.d);
label.lft(btex $e$ etex, z.e);
label.lft(btex $f$ etex, z.f);

whitelabel(btex $a$ etex,.75[z.O,altitude(z.A,z.O,z.C)]);
whitelabel(btex $a$ etex,.75[z.O,altitude(z.C,z.O,z.D)]);
whitelabel(btex $a$ etex,.75[z.O,altitude(z.D,z.O,z.E)]);
whitelabel(btex $a$ etex,.75[z.O,altitude(z.E,z.O,z.F)]);
endfig;

beginfig(146)
save u,k, ang,d,e;
u:=2cm;
k:=.5;
ang:=70;
d:=.7;
e:=.85;


z.O=origin;
z.R=(0,1)*u;
z.A=sqrt(1-k**2)*z.R;

save p;
path p[];

p0=circle(z.O,z.R);
p1=p0 scaled (sqrt(1-d**2)) shifted (sqrt(1-k**2)*d*z.R/k);
p2=p0 scaled (sqrt(1-e**2)) shifted (sqrt(1-k**2)*e*z.R/k);


z.tan=support(p1,z.O);
z.tane=support(p2,z.O);
 
save T;
transform T[];

T1= identity yscaled k;

%p01=p0 transformed T1;

z.C=(p0 yscaled sqrt(1-k**2)) intersectionpoint (p2 transformed T1);
z.D=(p0 yscaled sqrt(1-k**2)) intersectionpoint (p1 transformed T1);

draw p0 cutafter (p1 transformed T1) cutbefore (p1 transformed T1);
draw (subpath (0,1) of p0 yscaled sqrt(1-k**2)) cutbefore z.D;

draw (p1 transformed T1) cutbefore p0 cutafter (p0 scaled .999) dashed evenly;
draw subpath (1,4) of (p1 transformed T1) cutbefore (p0 scaled .999);
draw subpath (0,1) of(p1 transformed T1) cutafter (p0 scaled .999);
%draw p2 transformed T1;

draw (z.tan transformed T1)--z.O--((z.tan reflectedabout (z.O,z.R)) transformed T1); 

draw (z.O--z.D) dashed evenly;
draw z.O--z.A dashed linedot;

dOt z.O,z.A,z.D;

label.lrt(btex $A$ etex, z.A);
label.urt(btex $B$ etex, z.D);
label.bot(btex $O$ etex, z.O);
endfig;

beginfig(147)
save u;
u:=1.4cm;

z.A=origin;
z.x=(0,1)*u;
z.y=-z.x;

z.B=(1.1,.6)*u;
z.C=(1.4,-.7)*u;
z.H= altitude(z.B,z.A,z.C);

mark_rt_angle(z.A,z.H,z.C);

draw z.x--z.y dashed linedot;
draw z.A--z.B--z.C--cycle pensemibold;
draw z.A--z.H penhair;

label.lft(btex $A$ etex, z.A);
label.top(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.top(btex $h$ etex, .8[z.A,z.H]);
label.top(btex $x$ etex, z.x);
label.bot(btex $y$ etex, z.y);
endfig;

beginfig(148)
save u;
u:=1.4cm;

z.A=origin;
z.x=(0,2)*u;
z.y=-z.x/4;

z.B=.7*z.x;
z.C=(1.4,.7)*u;
z.H= altitude(z.B,z.A,z.C);
z.D= altitude(z.A,z.C,z.B);

mark_rt_angle(z.A,z.H,z.C);
mark_rt_angle(z.A,z.D,z.C);

draw z.x--z.y dashed linedot;
draw z.A--z.B--z.C--cycle pensemibold;
draw z.A--z.H penhair;
draw z.C--z.D penhair;

label.lft(btex $A$ etex, z.A);
label.lft(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.lft(btex $D$ etex, z.D);
label.lft(btex $h$ etex, .9[z.A,z.H]);
label.top(btex $x$ etex, z.x);
label.bot(btex $y$ etex, z.y);
endfig;

beginfig(149)
save u;
u:=1.4cm;

z.A=origin;
z.x=(0,1.4)*u;
z.y=-z.x/2;

z.B=(.3,.8)*u;
z.C=(1.4,-.2)*u;
z.H= altitude(z.B,z.A,z.C);
z.M=whatever[z.B,z.C]=whatever[z.A,z.x];

mark_rt_angle(z.A,z.H,z.C);

draw z.x--z.y dashed linedot;
draw z.A--z.B--z.C--cycle;
draw z.A--z.H penhair;
draw z.M--z.B penhair;

label.lft(btex $A$ etex, z.A);
label.urt(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.lft(btex $M$ etex, z.M);
label.top(btex $h$ etex, .6[z.A,z.H]);
label.top(btex $x$ etex, z.x);
label.bot(btex $y$ etex, z.y);
endfig;

beginfig(150)
save u;
u:=1.4cm;

z.A=origin;
z.x=(0,1)*u;
z.y=-z.x;

z.B=(1.4,.7)*u;
z.C=(1.4,-.5)*u;
z.H= altitude(z.B,z.A,z.C);
z.E= altitude(z.x,z.B,z.y);
z.D= altitude(z.x,z.C,z.y);

mark_rt_angle(z.A,z.H,z.C);

draw z.x--z.y dashed linedot;
draw z.A--z.B--z.C--cycle pensemibold;
draw z.A--z.H penhair;
draw z.E--z.B penhair;
draw z.D--z.C penhair;

label.lft(btex $A$ etex, z.A);
label.rt(btex $B$ etex, z.B);
label.rt(btex $C$ etex, z.C);
label.lft(btex $D$ etex, z.D);
label.lft(btex $E$ etex, z.E);
label.top(btex $h$ etex, .8[z.A,z.H]);
label.top(btex $x$ etex, z.x);
label.bot(btex $y$ etex, z.y);
endfig;

beginfig(151)
save u;
u:=1cm;

z.O=origin;
z.A=(0,2)*u;
z.B=-z.A;
z.C=z.A rotated -36;
z.D=z.C rotated -36;
z.E=z.D rotated -36;
z.F=z.E rotated -36;

z.a=altitude(z.A,z.O,z.C);

z.A1=(abs(z.A)/abs(z.a))*z.A;
z.B1=(abs(z.A)/abs(z.a))*z.B;
z.C1=(abs(z.A)/abs(z.a))*z.C;
z.D1=(abs(z.A)/abs(z.a))*z.D;
z.E1=(abs(z.A)/abs(z.a))*z.E;
z.F1=(abs(z.A)/abs(z.a))*z.F;

draw arc(z.A,z.C,z.B);
draw z.A1--z.B dashed linedot;
draw z.A--z.C--z.D--z.E;
draw z.A1--z.C1--z.D1--z.E1;

draw z.O--z.C1;
draw z.O--z.D1;
draw z.O--z.E1;

draw z.O--altitude(z.A,z.O,z.C) penhair;
draw z.O--altitude(z.C,z.O,z.D) penhair;
draw z.O--altitude(z.D,z.O,z.E) penhair;


dOt z.O;

label.lft(btex $A$ etex, z.A);
label.bot(btex $B$ etex, z.C+(0,-1));
label.llft(btex $C$ etex, z.D+(0,-1));
label.llft(btex $D$ etex, z.E);

label.top(btex $A_1$ etex, z.A1);
label.urt(btex $B_1$ etex, z.C1);
label.rt(btex $C_1$ etex, z.D1);
label.rt(btex $D_1$ etex, z.E1);


label.lft(btex $O$ etex, z.O);

whitelabel(btex $a_3$ etex,.75[z.O,altitude(z.C,z.O,z.D)]);
whitelabel(btex $a_3$ etex,.75[z.O,altitude(z.D,z.O,z.E)]);
whitelabel(btex $a_3$ etex,.75[z.O,altitude(z.A,z.O,z.C)]);
endfig;

beginfig(152)
save u,k, ang,d,e;
u:=2cm;
k:=.5;
ang:=70;
d:=.65;
e:=-.65;


z.O=origin;
z.R=(0,1)*u;
z.A=sqrt(1-k**2)*z.R;

save p;
path p[];

p0=circle(z.O,z.R);
p1=p0 scaled (sqrt(1-d**2)) shifted (sqrt(1-k**2)*d*z.R/k);
%p2=p0 scaled (sqrt(1-e**2)) shifted (sqrt(1-k**2)*e*z.R/k);


z.tan=support(p1,z.O);
%z.tane=support(p2,z.O);
 
save T;
transform T[];

T1= identity yscaled k;

%p01=p0 transformed T1;

%z.C=(p0 yscaled sqrt(1-k**2)) intersectionpoint (p2 transformed T1);
z.D=(p0 yscaled sqrt(1-k**2)) intersectionpoint (p1 transformed T1);

draw p0;
draw subpath (0,2) of p0 yscaled sqrt(1-k**2);
draw subpath (2,4) of p0 yscaled sqrt(1-k**2) dashed evenly;
draw (p1 transformed T1) cutbefore (p0 scaled .999) cutafter (p0 scaled .999) dashed evenly;
draw subpath (1,4) of (p1 transformed T1) cutbefore (p0 scaled .999);
draw subpath (0,1) of(p1 transformed T1) cutafter (p0 scaled .999);


draw (z.tan transformed T1)--z.O--((z.tan reflectedabout (z.O,z.R)) transformed T1) dashed evenly; 



draw z.D--z.O dashed evenly;


draw -z.A--z.A dashed linedot;

dOt z.O,z.A,-z.A,z.D;

label.lrt(btex $A$ etex, z.A);
label.urt(btex $C$ etex, -z.A);
whitelabel.urt(btex $B$ etex, z.D);

label.llft(btex $O$ etex, z.O);
endfig;

beginfig(153)
save u,k, ang,d,e;
u:=1.4cm;
k:=.4;
ang:=70;
d:=.72;
e:=.8;


z.O=origin;
z.R=(0,1)*u;
z.A=sqrt(1-k**2)*z.R;
z.B=-z.A;

z.a=(2.5,-1)*u;

save p;
path p[];

p0=circle(z.O,z.R);
p1=p0 scaled (sqrt(1-d**2)) shifted (sqrt(1-k**2)*d*z.R/k);
p2=p0 scaled (sqrt(1-e**2)) shifted (sqrt(1-k**2)*e*z.R/k);
p3=z.a zscaled (-.5,-.5)--z.a zscaled (-.5,.5)--z.a zscaled (1.5,.5)--z.a zscaled (1.5,-.5)--cycle;
 
save T;
transform T[];

T1= identity yscaled k;

%p01=p0 transformed T1;

z.D=(p0 yscaled sqrt(1-k**2)) intersectionpoint (p1 transformed T1);
z.Z=.5[z.D,z.D reflectedabout (z.O,z.R)];

p4= p0 shifted z.a yscaled k shifted z.Z;
p5= p0 scaled (y.Z/y.A) shifted z.a yscaled k shifted z.Z;

z.AA=z.B/(k);

z.tan=support(p0,z.AA);




hatchfill p1 transformed T1 withcolor 
(35,  2, -.5bp);

hatchfill p4--reverse(p5)  --cycle  withcolor 
(35,  2, -.5bp);


draw p0;
draw (p1 transformed T1) cutbefore p0 cutafter (p0 scaled .999) dashed evenly;
draw subpath (1,4) of (p1 transformed T1) cutbefore (p0 scaled .999);
draw subpath (0,1) of(p1 transformed T1) cutafter (p0 scaled .999);
%draw p2 transformed T1;

draw ((subpath(0,1) of p3) yscaled k shifted z.B) cutafter p0;
draw (p3 yscaled k shifted z.B) cutbefore p0 cutafter p0 dashed evenly;
draw ((subpath(1,4) of p3) yscaled k shifted z.B) cutbefore p0 cutafter ((z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k));
draw ((subpath(1,4) of p3) yscaled k shifted z.B) cutbefore ((z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k)) cutafter ((z.B--z.A) shifted (z.R rotated -90) shifted (z.a yscaled k)) dashed evenly;
draw ((subpath(1,4) of p3) yscaled k shifted z.B) cutbefore  ((z.B--z.A) shifted (z.R rotated -90) shifted (z.a yscaled k));

draw (subpath (0,2) of p0) shifted z.a yscaled k shifted z.B dashed evenly;
draw (subpath (2,4) of p0) shifted z.a yscaled k shifted z.B;
draw p0 shifted z.a yscaled k shifted z.A;
draw (subpath (0,2) of p4) dashed evenly;
draw (subpath (2,4) of p4);
draw p5 dashed evenly;






draw z.B--z.A dashed linedot;
draw (z.B--z.A) shifted (z.a yscaled k) dashed linedot;
draw (z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k);
draw (z.B--z.A) shifted (z.R rotated -90) shifted (z.a yscaled k);

draw ((z.tan transformed T1 shifted z.A)--(-z.tan transformed T1 shifted -z.A)) shifted (z.a yscaled k) dashed evenly;
z.tan1=z.tan reflectedabout(z.O,z.A);
draw ((z.tan1 transformed T1 shifted z.A)--(-z.tan1 transformed T1 shifted -z.A)) shifted (z.a yscaled k) dashed evenly;

z.A1=z.A shifted (z.a yscaled k);
z.B1=z.B shifted (z.a yscaled k);
z.Z1=z.Z shifted (z.a yscaled k);
z.O1=z.O shifted (z.a yscaled k);
z.M= (p1 transformed T1) intersectionpoint (z.Z--z.Z1);

z.Z2= p5 intersectionpoint (z.Z--z.Z1);

draw z.O1--z.Z2 dashed evenly;

draw z.A--z.A1;

draw ddline(z.Z,z.Z1)(.1,0) cutbefore (p1 transformed T1) cutafter ((z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k));
draw ddline(z.Z,z.Z1)(.1,0) cutbefore ((z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k)) dashed evenly;
draw ddline(z.Z,z.Z1)(.1,0) cutafter (p1 transformed T1) dashed evenly;

draw z.B--z.B1 cutbefore p0 cutafter ((z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k));
draw z.B--z.B1 cutafter p0 dashed evenly;
draw z.B--z.B1 cutbefore ((z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k)) dashed evenly;

draw z.O--z.O1 cutbefore p0 cutafter ((z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k));
draw ddline(z.O,z.O1)(.1,0) cutafter p0 dashed evenly;
draw z.O--z.O1 cutbefore ((z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k)) dashed evenly;

draw z.O--z.M dashed evenly;

drawdblarrow .5[z.A,z.A1]--.5[z.B,z.B1];
drawdblarrow (-.07)[z.O,z.O1]--(-.07)[z.Z,z.Z1] dashed evenly;

dOt 
z.O, 
z.O1,
z.A,
z.A1,
z.B,
z.B1,
z.Z, 
z.Z1,
z.M,
z.Z2;

markdashed_rt_angle(z.M,z.Z,z.O);
markdashed_rt_angle(z.M,z.Z1,z.O1);

label.rt(btex $a$ etex, z.O1);
label.rt(btex $m$ etex, z.Z1);
label.lrt(btex $R$ etex, .5[z.O,z.M]+(-1,1));
label.bot(btex $R$ etex, .5[z.B1, (z.B--z.B1) intersectionpoint ((z.B--z.A) shifted (z.R rotated 90) shifted (z.a yscaled k))]);
whitelabel.top(btex $r$ etex, .5[z.Z,z.M]);
whitelabel.rt(btex $2R$ etex rotated 90,.5[.5[z.A,z.A1],.5[z.B,z.B1]]);
whitelabel(btex $d$ etex rotated 90,.5[(-.07)[z.O,z.O1],(-.07)[z.Z,z.Z1]]);
label.urt(btex $H$ etex, (point 0 of p3 yscaled k shifted z.B)+(7,0));
endfig;

beginfig(154)
save u,k, ang;
u:=1.4cm;
k:=.3;
ang:=70;

z.A=(1,0)*u;

save p;
path p[];
p0=circle(origin,z.A);
p1=ellipse_canonical(x.A, k*x.A);

z.slope1=(-1,1.8);
z.slope2=(x.slope1,-y.slope1);

z.A1=point (directiontime z.slope1 of p1) of p1;
z.A2=point (directiontime z.slope2 of p1) of p1;
z.B1=point (directiontime z.slope1 of p0) of p0;
z.B2=point (directiontime z.slope2 of p0) of p0;
z.S=whatever[z.A1,z.B1]=whatever[z.A2,z.B2];

p2=p1 shifted (-z.S) scaled (x.B1/x.A1) shifted z.S;

z.3slope1=(1,1.2);
z.3slope2=(x.3slope1,-y.3slope1);

z.3A1=point (directiontime z.3slope1 of p1) of p1;
z.3A2=point (directiontime z.3slope2 of p1) of p1;
z.3B1=point (directiontime z.3slope1 of p0) of p0;
z.3B2=point (directiontime z.3slope2 of p0) of p0;
z.3S=whatever[z.3A1,z.3B1]=whatever[z.3A2,z.3B2];

p3=p1 shifted (-z.3S) scaled (x.3B1/x.3A1) shifted z.3S;

z.O=origin;
z.K= z.O shifted (-z.S) scaled (x.B1/x.A1) shifted z.S;
z.L= z.O shifted (-z.3S) scaled (x.3B1/x.3A1) shifted z.3S;
z.N=(0,x.A*sqrt(1-k**2));

z.NN=z.N rotated ang;

p4= p0 yscaled (y.NN/sqrt(x.A**2-x.NN**2)) rotated -ang;

z.AA= subpath (0,2) of p4 intersectionpoint subpath (2,4) of p2;
z.BB= subpath (0,2) of p4 intersectionpoint subpath (2,4) of p3;
z.AA1=2*z.K-z.AA;
z.BB1=2*z.L-z.BB;

markdashed_rt_angle(z.N,z.K,z.AA);
markdashed_rt_angle(z.N,z.L,z.BB);

draw p0;

draw p2 cutbefore z.B1 cutafter z.B2 dashed evenly;
draw p2 cutafter z.B1;
draw p2 cutbefore z.B2;

draw p3 cutafter z.3B1 cutbefore z.3B2;
draw p3 cutbefore z.3B1 dashed evenly;
draw p3 cutafter z.3B2 dashed evenly;

draw ddline(z.N,(-z.N))(0,0) dashed linedot;
draw z.K--z.AA dashed evenly;
draw z.L--z.BB dashed evenly;

dOt z.K,z.L,z.AA,z.BB,z.AA1,z.BB1,z.N,-z.N,z.O;

label.lrt(btex $C$ etex, z.AA);
label.lrt(btex $C'$ etex, z.AA1+(-1,0));
label.lrt(btex $D$ etex, z.BB);
label.top(btex $D'$ etex, z.BB1);
label.lft(btex $m$ etex, z.K);
label.lft(btex $n$ etex, z.L);
label.lft(btex $O$ etex, z.O);
label.top(btex $A$ etex, z.N+(0,1));
label.bot(btex $B$ etex, -z.N-(0,1));
endfig;

beginfig(155)
save u,ang;
u:=1.4cm;
ang:=-65;

z.O=origin;
z.A=(0,1)*u;
z.B=z.A rotated ang;
z.B1=z.A rotated -ang;
z.D=-z.A;
z.C=.5[z.B,z.B1];

draw circle(z.O,z.A);
draw z.O--z.B--z.B1--cycle;
draw z.A--z.D dashed linedot;

label.top(btex $A$ etex, z.A);
label.urt(btex $B$ etex, z.B);
label.ulft(btex $B_1$ etex, z.B1);
label.lrt(btex $C$ etex, z.C);
label.bot(btex $D$ etex, z.D);
label.lft(btex $H$ etex, .5[z.C,z.A]);
label.lrt(btex $O$ etex, z.O);

endfig;
end




