% Macros based on Vyaliy's, Bogdanov's, Polozov's, Rodionov's and Akopyan's macroses.
%
% Please write me if you find some gaps and so on. 
%
% Arseniy Akopyan akopjan@gmail.com
%
%


marksize:=4pt;
angle_radius:=8pt;
angle_radius2:=9pt;
angle_radius3:=10pt;

ar:=ar1:=angle_radius;
ar2:=angle_radius2;
ar3:=angle_radius3;

hair:=0.4pt;
light:=0.8pt;
semibold:=1.2pt;
bold:=1.6pt;
extrabold:=3.2pt;
mv:=1cm;

def penhair = withpen pencircle scaled 0.3 enddef;
def penlight = withpen pencircle scaled 0.5 enddef;
def pensemibold = withpen pencircle scaled 0.9 enddef;
def penbold = withpen pencircle scaled 1.2 enddef;
def penextrabold = withpen pencircle scaled 1.6 enddef;

%Несимметричные перья, закрашивающее одну сторону пути
pen leftpen,rightpen;
leftpen = makepen((-1,0)--(0,0)--cycle);
rightpen = makepen((0,0)--(1,0)--cycle);

%Штрихпунктир
def linedot =  dashpattern(on 3 off 2 on .5 off 2) enddef;
def lpdashed =  dashed dashpattern(on 3 off 2 on 1 off 2) enddef;


%=========================================================================
%
% Отметки букв
%
%Буквы в белом окружнении

vardef thewhitelabel@#(expr s,z) =	% Position s near z
	save p; picture p;
	if picture s:	p=nullpicture;
		for n = 0 upto 63:
			addto p also s shifted (point (n/8) of fullcircle scaled 2) withcolor white;
		endfor
		addto p also s
	else:		p = s infont defaultfont scaled defaultscale
	fi;
	p shifted (z
	 + 1*labeloffset*laboff@#
	+(-labxf@#, 0)*(abs(urcorner p - ulcorner p)-2)
	+(0, -labyf@#)*(abs(urcorner p - lrcorner p)-2)
	)
enddef;

% Рисовать букву в белом окружении
def whitelabel = draw thewhitelabel enddef;

%Буквы в белом окружении и точка
vardef whitedotlabel@#(expr s,z) = 
	draw thewhitelabel@#(s, z);
	dotlabel@#("", z);
	%Возможно тут лучше Dot использовать
enddef;

%========================================================================================
%
%Отметки точек

% Нормальные точки
def Dot text t=
for $=t: fill ((fullcircle scaled dotlabeldiam) shifted $); endfor;
enddef;

% Выколотые точки
def dOt text t=
for $=t: fill ((fullcircle scaled (dotlabeldiam +0.5)) shifted $); 
fill ((fullcircle scaled (dotlabeldiam -0.5)) shifted $) withcolor 1; endfor;
enddef;
								 
% Серая точка
def dOOt text t = 
for $=t: draw $ withpen pencircle scaled (1.3dotlabeldiam+1);
								 draw $ withpen pencircle scaled 1.3dotlabeldiam withcolor .6white; endfor;
enddef;
								 
%% Квадратик
def Dotsq text t = 
for $=t: draw $ withpen pensquare scaled dotlabeldiam; endfor;
enddef;

%% Выколотый квадратик
def dOtsq text t = 
for $=t: draw $ withpen pensquare scaled (dotlabeldiam+1);
								 draw $ withpen pensquare scaled dotlabeldiam withcolor white; endfor;
enddef;
								 
								 
% Выколотая точка с крестиком
def dOtc text a = 
for $=a: numeric t; t=.35; 
								 draw $ withpen pencircle scaled (2*t*sqrt(2)*dotlabeldiam+1);
								 draw $ withpen pencircle scaled (2*t*sqrt(2)*dotlabeldiam) withcolor white; 
								 draw ($-(t*dotlabeldiam,t*dotlabeldiam))--($+(t*dotlabeldiam,t*dotlabeldiam));
								 draw ($-(t*dotlabeldiam,-t*dotlabeldiam))--($+(t*dotlabeldiam,-t*dotlabeldiam)); endfor;
enddef;

% Точка с крестиком
def dotc text a = 
for $=a: numeric t; t=.65; 
								 draw ($-(t*dotlabeldiam,t*dotlabeldiam))--($+(t*dotlabeldiam,t*dotlabeldiam)) pensemibold;
								 draw ($-(t*dotlabeldiam,-t*dotlabeldiam))--($+(t*dotlabeldiam,-t*dotlabeldiam)) pensemibold; endfor;
enddef;

% Большая точка
def Bigdot text t = 
for$=t: draw $ withpen pencircle scaled 2dotlabeldiam; endfor;
enddef;

% Точка отрезочком
vardef kisDot(expr a, b) =
	save s; pair s;
	2s=unitvector((b-a) rotated 90)*marksize;
	draw (a+s)--(a-s);
enddef;

% Точка отрезочком
vardef kisDotAng(expr a, b, c) =
	save s; pair s;
	2s=unitvector((b-a) rotated c)*marksize;
	draw (a+s)--(a-s);
enddef;

% Точка отрезочком
vardef kisDotAngSize(expr a, b, c, d) =
	save s; pair s;
	2s=unitvector((b-a) rotated c)*d;
	draw (a+s)--(a-s);
enddef;



% Рисовать много путей
def Draw text t = 
for$=t: draw $; endfor
enddef;





% Квадратик, помечающий прямой угол
def mark_rt_angle (expr a,b,c) =
	save m,n,r; 
	pair m,n;
	r:=angle_radius*2/3;
	m=unitvector(a-b); n=unitvector(c-b);
	fill ((m--(m+n)--n--(0,0)--cycle) scaled r shifted b) withcolor white;
	draw (m--(m+n)--n) scaled r shifted b;
enddef;

% Квадратик, помечающий прямой угол с заданным размером
def mark_rt_angle_withsize (expr a,b,c,rad) =
	save m,n,r; 
	pair m,n;
	r:=rad;
	if rad<=0: r:=angle_radiu*2/3; fi
	m=unitvector(a-b); n=unitvector(c-b);
	draw (m--(m+n)--n) scaled r shifted b
enddef;

% Штрихованый квадратик, помечающий прямой угол
def markdashed_rt_angle (expr a,b,c) =
	save m,n,r; 
	pair m,n;
	r:=angle_radius*2/3;
	m=unitvector(a-b); n=unitvector(c-b);
	draw (m--(m+n)) scaled r shifted b dashed evenly scaled 0.6;
	draw (n--(m+n)) scaled r shifted b dashed evenly scaled 0.6;
enddef;

% Штрихованый квадратик, помечающий прямой угол угол с заданным размером
def markdashed_rt_angle_withsize (expr a,b,c, rad) =
	save m,n,r; 
	pair m,n;
	r:=rad;
	if rad<=0: r:=angle_radiu*2/3; fi
	m=unitvector(a-b); n=unitvector(c-b);
	draw (m--(m+n)) scaled r shifted b dashed evenly scaled 0.6;
	draw (n--(m+n)) scaled r shifted b dashed evenly scaled 0.6;
enddef;



%25.07.98 Вялый: культурная возможность ставить кратные метки
numeric __mult[];
__mult1:=1; __mult2:=2; __mult3:=3; __mult4:=4; 


%27/01/97 Вялый: new macro
% отмечает угол несколькими дугами
%25.07.98 Вялый: также хорош только для малых углов
vardef arcs@#(expr a,b,c,rad) =
 begingroup
	save p,s,n, k, l; path p; numeric k, l;
%pickup pencircle scaled hair;

k:=abs (angle(a-b)-angle(c-b));
if (k>180): k:=360-k;fi;

l=0;
if (k<10):l:=4pt; 
elseif (k<20): l:=3pt;
elseif (k<30): l:=2pt; 
fi;

show l;

if known __mult@#: n:=__mult@# else: n:=1 fi;
	p = unitvector(a-b)..unitvector(bisector(a,b,c)-b)..unitvector(c-b);
	s = rad;
	if s < 1: s:=angle_radius; fi
	filldraw b--(p scaled (s+((n-1)/2)*(angle_radius2-angle_radius)*2+l) shifted b)--cycle withcolor white;
				 for i=-(n-1)/2 upto (n-1)/2:
					draw p scaled (s+i*(angle_radius2-angle_radius)*2+l) shifted b;
				 endfor
 endgroup
enddef;

%Угол с меткой
vardef labelarcs@#(expr a,b,c,rad, mark) =
	arcs@#(a, b, c, rad-1);
	label(mark, b+(rad+7)*unitvector(bisector(a,b,c)-b));
enddef;

%Угол с меткой и указанием где пометка
vardef labelarcsprof@#(expr a,b,c,rad, Rad, mark) =
	arcs@#(a, b, c, rad-1);
	label(mark, b+(Rad+7)*unitvector(bisector(a,b,c)-b));
enddef;

vardef whitelabelarcs@#(expr a,b,c,rad,	mark) =
	arcs@#(a, b, c, rad-1);
	whitelabel(mark, b+(rad+7)*unitvector(bisector(a,b,c)-b));
enddef;

vardef whitelabelarcsprof@#(expr a, b, c, rad, Rad, mark) =
	arcs@#(a, b, c, rad-1);
	whitelabel(mark, b+(Rad+7)*unitvector(bisector(a,b,c)-b));
enddef;


vardef dashedarcs@#(expr a,b,c,rad) =
 begingroup
	save p,s,n; path p;
%pickup pencircle scaled hair;
if known __mult@#: n:=__mult@# else: n:=1 fi;
	p = unitvector(a-b)..unitvector(bisector(a,b,c)-b)..unitvector(c-b);
	s = rad+1pt;
	if s < 1: s:=angle_radius; fi
				 for i=-(n-1)/2 upto (n-1)/2:
					draw (p scaled (s+marksize*i*2/3) shifted b) dashed evenly scaled ((arclength p)*(s+marksize*i*2/3)/15) shifted (0, 0);
				 endfor
 endgroup
enddef;

vardef labeldashedarcs@#(expr a, b, c, rad, mark) =
	dashedarcs@#(a, b, c, rad-1);
	label(mark, b+(rad+7)*unitvector(bisector(a,b,c)-b));
enddef;


vardef whitelabeldashedarcs@#(expr a, b, c, rad,	mark) =
	dashedarcs@#(a, b, c, rad-1);
	whitelabel(mark, b+(rad+7)*unitvector(bisector(a,b,c)-b));
enddef;

vardef labeldashedarcsprof@#(expr a, b, c, rad, Rad,	mark) =
	dashedarcs@#(a, b, c, rad-1);
	label(mark, b+(Rad)*unitvector(bisector(a,b,c)-b));
enddef;


vardef whitelabeldashedarcsprof@#(expr a, b, c, rad, Rad,	mark) =
	dashedarcs@#(a, b, c, rad-1);
	whitelabel(mark, b+(Rad)*unitvector(bisector(a,b,c)-b));
enddef;


%25.07.98 Вялый: примитивная конструкция
def draw_mark(expr p,a) =
		begingroup
				save t,dm; pair dm;
%pickup pencircle scaled hair;
				pen_size:=hair;
				t = arctime a of p;
				dm = marksize*unitvector direction t of p rotated 90;
				draw (-.5dm.. .5dm) shifted point t of p;
		endgroup
enddef;

vardef one_dashmark@# (expr p) =
				begingroup
				 save amid,n;
pickup pencircle scaled hair;
				 amid=.5*arclength p;
				 if known __mult@#: n:=__mult@# else: n:=1 fi;
				 for i=-(n-1)/2 upto (n-1)/2:
					draw_mark(p, amid+.5marksize*i);
				 endfor
				endgroup
enddef;

vardef one_arcdashmark@# (expr p) =
				begingroup
				 save amid,n;
pickup pencircle scaled hair;
				 amid=.5*arclength p;
				 if known __mult@#: n:=__mult@# else: n:=1 fi;
				 for i=-(n-1)/2 upto (n-1)/2:
					draw_mark(p, amid+.3marksize*i);
				 endfor
				endgroup
enddef;

vardef dashmark@#(text t) = 
for $=t: one_dashmark@#($); endfor;
enddef;


%25.07.98 Вялый: пока хорош для малых углов
%25.07.98 Вялый: помечает черточками
vardef mark_angle@#(expr a,b,c, rad) =
begingroup
	save p,s; path p;
	pickup pencircle scaled hair;
	p = unitvector(a-b)..unitvector(bisector(a,b,c)-b)..unitvector(c-b);
	s = rad+1pt;
	if s < 1: s:=angle_radius; fi
	one_arcdashmark@#(p scaled s shifted b);
	draw p scaled s shifted b;
endgroup
enddef;

%Богдановские душки углов
color anglecolor;
anglecolor=black;

%Зачернение угла
def fill_angle (expr a,b,c,rad) =
	save lpth, p, s; path lpth, p; 
	s = rad;
	if s < 1: s:=angle_radius; fi
	lpth = unitvector(a-b)..unitvector(bisector(a,b,c)-b)..unitvector(c-b);
	p=(b--((lpth scaled s) shifted b)--cycle);
	filldraw p withcolor anglecolor;
enddef;


numeric __rmult[];
__rmult0:=0; __rmult1:=1; __rmult2:=2; __rmult3:=3;	__rmult4:=4;	__rmult5:=5; __rmult6:=6; 
__rmult10:=10; 

% Римские пометки посередине пути
vardef one_rimmark@#(expr p) =
	save m,dm,n; pair dm[]; numeric n;
	if known __rmult@#: n:=__rmult@# else: n:=1 fi;
	m = .5 arclength p;
 
	if (n=0):
		fill (fullcircle scaled marksize shifted (point (arctime m of p) of p)) withcolor white;
		draw (fullcircle scaled marksize shifted (point (arctime m of p) of p));
	elseif (n<=4):
			dm1=(marksize*unitvector direction (arctime (m+0.4marksize) of p) of p) rotated 90;
			for i=-(n-1)/2 upto (n-1)/2:
			draw (-.5dm1.. .5dm1) shifted point (arctime (m+0.4marksize*i) of p) of p;
	endfor
	

	elseif (n=5):
		dm1=marksize*unitvector direction arctime m of p of p;
		dm2=dm1 rotated 90;
		draw (.5dm2-.35dm1--(-.55dm2)--.5dm2+.35dm1) shifted point (arctime m of p) of p;
	
	elseif (n=6):
		dm1:=marksize*unitvector direction (arctime m+0.4marksize of p) of p rotated 90;
		draw (-.5dm1.. .5dm1) shifted point (arctime m+0.4marksize of p) of p;
		dm1:=marksize*unitvector direction (arctime m-0.35marksize of p) of p;
		dm2=dm1 rotated 90;
		draw (.5dm2-.35dm1--(-.55dm2)--.5dm2+.35dm1) shifted point (arctime m-0.35marksize of p) of p;
	
	elseif (n=10):
		dm1=marksize*unitvector direction arctime m of p of p;
		dm2=dm1 rotated 90;
		draw (.5dm2+.35dm1--(-.5dm2)-.35dm1) shifted point (arctime m of p) of p;
		draw (.5dm2-.35dm1--(-.5dm2)+.35dm1) shifted point (arctime m of p) of p;
	fi;
enddef;

vardef rimmark@#(text t) = 
for $=t: one_rimmark@#($); endfor;
enddef;


% Отбеливающие римские пометки посередине пути
vardef one_whiterimmark@#(expr p) =
	save m,dm,n; pair dm[]; numeric n;
	save wmarksize;
	wmarksize=0.5marksize;
	if known __rmult@#: n:=__rmult@# else: n:=1 fi;
	m = .5 arclength p;
 
	if (n=0):
		fill (fullcircle scaled (marksize+wmarksize) shifted (point (arctime m of p) of p)) withcolor white;	
		draw p;
		fill (fullcircle scaled marksize shifted (point (arctime m of p) of p)) withcolor white;
		draw (fullcircle scaled marksize shifted (point (arctime m of p) of p));
	
	elseif (n<=4):
		dm1:=marksize*unitvector direction (arctime m of p) of p rotated 90;
		for i=-(n-1)/2 upto (n-1)/2:
			draw ((-.5dm1.. .5dm1) shifted point (arctime m+0.4marksize*i of p) of p) withcolor white withpen pencircle scaled wmarksize;
		endfor;
		for i=-(n-1)/2 upto (n-1)/2:
			draw ((-.5dm1.. .5dm1) shifted point (arctime m+0.4marksize*i of p) of p);
		endfor;
	
	elseif (n=5):
		dm1:=marksize*unitvector direction arctime m of p of p;
		dm2=dm1 rotated 90;
		draw (.5dm2-.35dm1--(-.55dm2)--.5dm2+.35dm1) shifted point (arctime m of p) of p	withcolor white withpen pencircle scaled wmarksize;
draw (.5dm2-.35dm1--(-.55dm2)--.5dm2+.35dm1) shifted point (arctime m of p) of p ;

	elseif (n=6):
		dm1:=marksize*unitvector direction (arctime m+0.4marksize of p) of p rotated 90;
		draw (-.5dm1.. .5dm1) shifted point (arctime m+0.4marksize of p) of p withcolor white withpen pencircle scaled wmarksize;
		dm1:=marksize*unitvector direction (arctime m-0.35marksize of p) of p;
		dm2=dm1 rotated 90;
		draw (.5dm2-.35dm1--(-.55dm2)--.5dm2+.35dm1) shifted point (arctime m-0.35marksize of p) of p withcolor white withpen pencircle scaled wmarksize;
		
		dm1:=marksize*unitvector direction (arctime m+0.4marksize of p) of p rotated 90;
		draw (-.5dm1.. .5dm1) shifted point (arctime m+0.4marksize of p) of p;
		dm1:=marksize*unitvector direction (arctime m-0.35marksize of p) of p;
		dm2=dm1 rotated 90;
		draw (.5dm2-.35dm1--(-.55dm2)--.5dm2+.35dm1) shifted point (arctime m-0.35marksize of p) of p;


	elseif (n=10):
		dm1=marksize*unitvector direction arctime m of p of p;
		dm2=dm1 rotated 90;
		draw (.5dm2+.35dm1--(-.5dm2)-.35dm1) shifted point (arctime m of p) of p withcolor white withpen pencircle scaled wmarksize;
		draw (.5dm2-.35dm1--(-.5dm2)+.35dm1) shifted point (arctime m of p) of p withcolor white withpen pencircle scaled wmarksize;
		draw (.5dm2+.35dm1--(-.5dm2)-.35dm1) shifted point (arctime m of p) of p;
		draw (.5dm2-.35dm1--(-.5dm2)+.35dm1) shifted point (arctime m of p) of p;

	fi;
enddef;

vardef whiterimmark@#(text t) = 
for $=t: one_whiterimmark@#($); endfor;
enddef;

% S-пометка посередине пути
vardef one_smark@#(expr p) =
				save m,dm,n; pair dm[]; numeric n;
				if known __rmult@#: n:=__rmult@# else: n:=1 fi;
				m = .5 arclength p;

				for i=-(n-1)/2 upto (n-1)/2:
								draw (((2,5)..(0,5)..(-2,3)..(0,0)..(2, -3)..(0, -5)..(-2, -5)) yscaled (marksize/10) xscaled 0.4(marksize/10)) rotated (angle(unitvector direction arctime m of p of p)) shifted point (arctime	(m+0.4marksize*i) of p) of p;
				endfor;
enddef;

vardef smark@#(text t) =
				for $=t: one_smark@#($); endfor;
enddef;

% отбеливающая S-пометка посередине пути	

% S-пометка посередине пути
vardef one_whitesmark@#(expr p) =
	save m,dm,n; pair dm[]; numeric n;
	if known __rmult@#: n:=__rmult@# else: n:=1 fi;
	m = .5 arclength p;

	for i=-(n-1)/2 upto (n-1)/2:
		fill (((2,5)..(0,5)..(-2,3)--(-2, -5)..(0, -5)..(2, -3)--cycle) yscaled (marksize/10) xscaled 0.4(marksize/10)) rotated (angle(unitvector direction arctime m of p of p)) shifted point (arctime	(m+0.4marksize*i) of p) of p withcolor white;
	endfor;

	for i=-(n-1)/2 upto (n-1)/2:
		draw (((2,5)..(0,5)..(-2,3)..(0,0)..(2, -3)..(0, -5)..(-2, -5)) yscaled (marksize/10) xscaled 0.4(marksize/10)) rotated (angle(unitvector direction arctime m of p of p)) shifted point (arctime	(m+0.4marksize*i) of p) of p;
	endfor;
enddef;

vardef whitesmark@#(text t) =
				for $=t: one_whitesmark@#($); endfor;
enddef;

% отбеливающая S-пометка посередине пути	



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Рисование всяких прямых

%Vyalyi: рисование прямых с хвостиками за концевыми точками
def dline(expr a,b)(expr eps)=
	((1+eps)*a-eps*b)--(-eps*a+(1+eps)*b)
enddef;
def ddline(expr a,b)(expr epsa,epsb)=
	((1+epsa)*a-epsa*b)--(-epsb*a+(1+epsb)*b)
enddef;

%Акопян: тоже самое, только от данной прямой
vardef ddrealline(expr p)(expr epsa,epsb)=
save a, b; pair a, b;
a=point 0 of p;
b=point 1 of p;
expandafter	((1+epsa)*a-epsa*b)--(-epsb*a+(1+epsb)*b)
enddef;


%Рисование дуги проходящей через точки
vardef arc(expr a, b, c)=
expandafter ddarc(a, b, c)(0, 0)enddef;

%Рисование дуги проходящей через точки с отступающими краями
vardef ddarc(expr a, b, c)(expr v, u)=
save o, p,aa, ab, ac, x; pair o, x; path p[]; numeric aa, ab, ac;
o=circumcenter(a, b, c);
aa=angle(a-o);
ab=angle(b-o);
ac=angle(c-o);
if (ab-aa)<0:ab:=ab+360; fi;
if (ac-aa)<0:ac:=ac+360; fi;
p0=circle(o, abs(o-c));
if (ab-aa)<(ac-aa):
x=2*abs(c-o)*((1,0) rotatedaround (origin, ac-aa+v+u));
p1=p0 cutafter(o--(o+x));
p2=p1 rotatedaround (o, aa-v);
else:
x=2*abs(c-o)*((1,0) rotatedaround (origin, ac-aa-v-u));
p1=p0 cutbefore(o--(o+x));
p2=p1 rotatedaround (o, aa+v);
fi;
expandafter p2
enddef;

%Обрезание пути между двумя точками
vardef cutcircle(expr p, a, c)=
save o, s, l, x; pair o, x; path s[]; numeric l;
o=center p;
l=angle(c-o)-angle(a-o);
if (l)<0:l:=l+360; fi;
x=a rotatedaround(o, l-angle(a-o));
s1=p cutafter (o--(2[o,x]));
s2=s1 rotatedaround (o, angle (a-o));
expandafter s2
enddef;

def pointonpath(expr p, a)=
point (arctime a*(arclength p) of p) of p
enddef;

%Масштабирование с заданым центром 

def scaleabout(expr a, b)(expr p)=
((p shifted -a) scaled b) shifted a
enddef;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Работа с окружностями и параболами

def using(text t)= save t enddef;

%25.07.98 Вялый: регистрация объектов
def object(expr o)=
 if pair o: 0		% point
 elseif length(o)=4: 1	%circle
 elseif distance(0.5[start.o,final.o], point 0.5 of o)<0.05pt:
										 2	%segment
 elseif path o:			3	%parabola
 else:							-1	%unregistered
 fi
enddef;

def isparabola(suffix c)=
	if object(c)=3 : true else: false fi
enddef;

def iscircle(expr c)=
	if object(c)=1 : true else: false fi
enddef;

def isline(expr c)=
	if object(c)=2 : true else: false fi
enddef;

def ispoint(expr c)=
	if object(c)=0 : true else: false fi
enddef;

def distance(expr a,b)=	(arclength(a--b)) enddef;

%25.07.98 Вялый: концы отрезка
vardef start@# =point 0 of @# enddef;
vardef final@# =point length(@#) of @# enddef;

%08.05.98 Вялый: пересечение двух прямых, заданных точками
def	meetpoint(expr m)(expr a,b)(expr c,d) =
begingroup
 m=whatever[a,b]; m=whatever[c,d];
endgroup
enddef;

%Акопян: тоже самое, но возвращает точку;
vardef crosspoint(expr a,b)(expr c,d) =
save m; pair m;
 m=whatever[a,b]; m=whatever[c,d];
expandafter m
enddef;

def crossline(expr a, b)=
crosspoint(point 0 of a, point 1 of a)(point 0 of b, point 1 of b);
enddef;



%25.07.98 Вялый: подходящие константы
def vertical primary x= (x,0)--(x,-1cm)
enddef;
def horizontal primary x= (0,x)--(-1cm,x)
enddef;



%25.07.98 Вялый: параболы задаются подходящими
%контрольными точками. Точнее, задаются две точки на параболе
%и точка пересечения касательной в первой точке и параллельной оси,
%делящей отрезок	между точками в отношении 1:2 (считая от первой)
def parabolas text t=
 path t;		clearparp;
enddef;

pair __parp[];
def clearparp=save __parp, _parp; pair __parp[]; path _parp[]; enddef;

%25.07.98 Вялый: процедуры для определения параболы
vardef forth_point(expr zl,zr,zp)=
clearparp;
save am,ap; pair am,ap;
		 ap=0.333333[zl,zr]; am=0.333333[zr,zl];
		 meetpoint(__parp0)(zp,zp+(zr-zl))(am,am+(zp-ap));
 expandafter __parp0
enddef;

vardef defpara(expr zl,zr)(expr zp) =
	clearparp;
	_parp0=zl..controls zp and forth_point(zl,zr,zp)..zr;
	expandafter _parp0
enddef;

def primarypara =
__parp1..controls __parp2 and __parp3..__parp4;
enddef;


%25.07.98 Вялый: аттрибуты параболы

vardef axisdir@# = unitvector
(0.5[point 0 of @#,point 1 of@#]-point 0.5 of @#) enddef;
vardef focus@# =
clearparc;
hide(
__parc2=unitvector(direction 0 of @#);
__parc1=-axisdir@# reflectedabout((0,0),__parc2);
__parc4=-unitvector(direction 1 of @#);
__parc3=-axisdir@# reflectedabout((0,0),__parc4);
__parc0=point 0 of @# +whatever*__parc1;
__parc0=point 1 of @# +whatever*__parc3
)
expandafter __parc0
enddef;
vardef directrix@# =
((point 0 of @#) -distance(point 0 of @#, focus@#)*axisdir@#)--
((point 1 of @#) -distance(point 1 of @#, focus@#)*axisdir@#)
enddef;



vardef quadratic_plot(expr a,b,c,xl,xr,scale)=
clearparp;
 save	xp,yp,yl,yr,aux;
 numeric xp,yp,yr,yl;
 path aux;
 xp=scale*(2xl+xr)/3;
 yl=scale*(a*(xl**2)+b*xl+c);
 yr=scale*(a*(xr**2)+b*xr+c);
 yp=yl+(xp-scale*xl)*(2*a*xl+b);
%30.07.98 Вялый: show yl,yr,xp,yp;
 __parp1=(scale*xl,yl); __parp4=(scale*xr,yr); __parp2=(xp,yp);
 __parp3=forth_point(__parp1,__parp4,__parp2);
%	aux= primarypara;
aux=__parp1..controls __parp2 and __parp3..__parp4;

	expandafter aux
enddef;

vardef circumpara(expr p,q,r,xl,xr)=
clearparp;
save aux,a,b,c,d; path aux; numeric a,b,c,d;
%	d1:=abs(xpart(p)-xpart(q));
%	d2:=abs(xpart(p)-xpart(r));
%	d3:=abs(xpart(r)-xpart(q));
%	d4:=d1*d2*d3;
	xpart(p)**2*a+xpart(p)*b+c=ypart(p);
	xpart(q)**2*a+xpart(q)*b+c=ypart(q);
	xpart(r)**2*a+xpart(r)*b+c=ypart(r);
	aux=quadratic_plot(a,b,c, xl, xr, 1);
	expandafter aux
enddef;

vardef scaledcircumpara(expr p,q,r,xl,xr,scale)=
clearparp;
save aux,a,b,c,d; path aux; numeric a,b,c,d;
	d1:=abs(xpart(p)-xpart(q));
	d2:=abs(xpart(p)-xpart(r));
	d3:=abs(xpart(r)-xpart(q));
	d4:=d1*d2*d3;
	d4*xpart(p)**2*a+xpart(p)*b+c=ypart(p);
	d4*xpart(q)**2*a+xpart(q)*b+c=ypart(q);
	d4*xpart(r)**2*a+xpart(r)*b+c=ypart(r);
	show a*d4;
	aux=quadratic_plot(a*d4,b,c, xl, xr, scale);
	expandafter aux
enddef;


%26.07.98 Вялый: касается прямых a b c
vardef inpara(suffix a,b,c)(expr ot,do,scale)=
clearparc;
clearparp;
save aux, va,vb,vc, A,B,C,ta,tb,tc,xa,xb,xc;
path va,vb,vc, aux;
pair A,B,C,ta,tb,tc;
numeric xa,xb,xc;
	C=cross(a,b); B=cross(a,c); A=cross(b,c);
	2xpart(C)=xa+xb;
	2xpart(B)=xa+xc;
	2xpart(A)=xc+xb;
	va=vertical xa; vb=vertical xb; vc=vertical xc;
	ta=cross(va,a); tb=cross(vb,b); tc=cross(vc,c);
	show ta; show tb; show tc;
	if ot>do:
	aux=circumpara(ta,tb,tc,min(xa)(xa,xb,xc),max(xa)(xa,xb,xc));
	else:
	aux=scaledcircumpara(ta,tb,tc,ot/scale,do/scale,scale);
	fi
	expandafter aux
enddef;



%28/01/97 Вялый: окружности
def circles text t=
 path t;		clearparc;
enddef;

pair __parc[];
numeric __parc_count;
def clearparc=save __parc; pair __parc[]; __parc_count:=3; enddef;


vardef circle(expr c,R) =%28/01/97 Вялый: путь, центр, радиус
	save r;
	numeric r;
	r=abs(R);
	expandafter (c+(r,0)..c+(0,r)..c+(-r,0)..c+(0,-r)..cycle)
enddef;

vardef circumcircle(expr a,b,c)=
clearparc;
save aux; path aux;
	(__parc0-.5[a,b])dotprod unitvector(b-a)=0;
	(__parc0-.5[a,c])dotprod unitvector(c-a)=0;
	aux=circle(__parc0,distance(__parc0,a));
	expandafter aux
enddef;


%25.07.98 Вялый: аттрибуты окружности
vardef radius@# =0.5distance(point 0 of @#, point 2 of @#) enddef;
vardef centre@# =0.5[point 0 of @#, point 2 of @#] enddef;

%25.07.98 Вялый: выбор из двух точек
%25.07.98 Вялый: константы для обработки по умолчанию
numeric default; default:=0;
vardef choose_point.first(suffix a) = a=__parc1;	enddef;
vardef choose_point.second(suffix a) = a=__parc2; enddef;
vardef choose_point.lft(suffix a) = a= if xpart(__parc1)<xpart(__parc2):
__parc1; else: __parc2; fi
enddef;
vardef choose_point.rt(suffix a) = a= if xpart(__parc1)>xpart(__parc2):
__parc1; else: __parc2; fi
enddef;
vardef choose_point.top(suffix a) = a=	if ypart(__parc1)>ypart(__parc2):
__parc1; else: __parc2; fi
enddef;
vardef choose_point.bot(suffix a) = a= if ypart(__parc1)<ypart(__parc2):
__parc1; else: __parc2; fi
enddef;

%25.07.98 Вялый: общий макрос для пересечений введенных кривых
vardef cross@#(expr C, S) =
clearparc;
	 save u, l,ll,lll, c, s;
	 pair u,v;
	 numeric l,ll,lll;
	 path c, s;

c=C;
s=S;

	if length (s)>3:
		 %12.09.2008 Вялый: окружность c и окружность s
		l:=abs(center.c-center.s);
		if l> radius.c+radius.s:
			show l;
			show radius.c;
			show radius.s;
			stop "macros package: circles don't intersect"
		else:
			ll:=radius.c;
			lll:=radius.s;
			l:=(ll/l+l/ll-lll/l*lll/ll)/2;
			l:=ll*l;
		fi;
		u:=center.c+(l*unitvector(center.s-center.c));
		lll:=ll+-+l;
		v:=unitvector(center.s-center.c) rotated 90;
	 __parc1=u+lll*v;
	 __parc2=u-lll*v;
	elseif length(c)>3:
	%25.07.98 Вялый: окружность c и прямая s
	 (center.c-u)dotprod(start.s-final.s)=0;
	 u=whatever[start.s,final.s];
	 l=distance(center.c,u);
	 if l>radius.c:
	 show l;
	 show radius.c;
	 stop "macros package: circle and line don't intersect"
	 else:	 ll=radius.c+-+l
	 fi;
	 __parc1=u+ll*unitvector(start.s-u);
	 __parc2=u-ll*unitvector(start.s-u);
	elseif distance(0.5[start.c,final.c], point 0.5 of c)<0.05pt:
	%25.07.98 Вялый: прямая c и прямая s
	if abs(unitvector(start.c-final.c)-unitvector(start.s-final.s))<0.001:
	 stop "macros package:	lines don't intersect"
	else:
	meetpoint(__parc1)(start.c,final.c)(start.s,final.s)
	fi;
	__parc2=__parc1;
	else:
	%25.07.98 Вялый: парабола c и прямая s
		u=c intersectiontimes s; l=xpart(u);
		if l=-1:
		 stop "2D package:	line doesn't intersect parabola"
		fi;
		__parc1=point l of c;
		save u,lll; pair u; numeric lll;
		u=(subpath (l+0.001, length(c)) of c) intersectiontimes s; ll=ypart(u);
		if ll=-1:
			save u; pair u;
			u=(subpath (0,l-0.001) of c) intersectiontimes s; lll=ypart(u);
			if lll=-1: __parc2=__parc1 else:
			__parc2=point lll of s
			fi;
		else:
			__parc2=point ll of s;
		fi
	fi
	 if known default@#: choose_point.first(__parc0)
	 else: choose_point@#(__parc0)	fi;
	 expandafter __parc0
enddef;

%27/01/97 Вялый: касательные в точке
vardef tangent@#(expr a) =
clearparc;
if isparabola(@#):
__parc0=unitvector(focus@# - a) - axisdir@#;
else: %circle
__parc0=(centre@# -a) rotated-90;
fi
expandafter __parc0
enddef;


%27/01/97 Вялый: касательные из точки
vardef support@#(suffix c,p) =
clearparc;
	if iscircle(c):
	%25.07.98 Вялый: окружность c
	 save sa,sb,sc;
	 pair sa,sb,sc;
	 if distance(centre.c,p)<radius.c:
	 stop "2D package: no tangents through	a point in a circle"
	 else:
	 sa=(radius.c,distance(centre.c,p)+-+radius.c)
	 fi;
	 sb=unitvector(sa);
	 sc=centre.c+radius.c*unitvector(p-centre.c);
	 __parc1 = sc rotatedaround (centre.c,angle(sb));
	 __parc2 = sc rotatedaround (centre.c,-angle(sb));
	else:
	
	%25.07.98 Вялый: парабола c
	save a, au; path a; pair au[];
	a=circle(p, distance(p, focus.c));
	au1=cross.first(a, directrix.c);
	au2=cross.second(a, directrix.c);
	(__parc1-p) dotprod (focus.c-au1)=0;
	(__parc1-au1)=whatever*axisdir.c;
	(__parc2-p) dotprod (focus.c-au2)=0;
	(__parc2-au2)=whatever*axisdir.c;
	fi
	 if known default@#: choose_point.first(__parc0)
	 else: choose_point@#(__parc0)	fi;
	 expandafter __parc0
enddef;

def change(suffix x,y)= if x<y: x:=x+y; y:=x-y; x:=x-y; fi
enddef;

vardef middle(suffix b,c)(expr x,y,z,v)=
	 save a,d; numeric a,d;
	 a:=x; b:=y; c:=z; d:=v;
%show a,b,c,d;
	 change(a,b); change(a,c); change(a,d);
	 change(b,d); change(c,d);
%show b,c;
enddef;
%
vardef extend@#(expr xl,xr)(expr yl,yr)=
clearparc;
save aux, pl,pr,pu,pb,m,__p;
path aux;
numeric pl,pr,pu,pb,m[];
pair __p[];
if isline(@#):
xpart(pl*unitvector(final@#-start@#)*cm+start@#)=xl;
xpart(pr*unitvector(final@#-start@#)*cm+start@#)=xr;
ypart(pu*unitvector(final@#-start@#)*cm+start@#)=yr;
ypart(pb*unitvector(final@#-start@#)*cm+start@#)=yl;

middle(m1,m2)(pl,pr,pu,pb);
 __parc0=m1*unitvector(final@#-start@#)*cm+start@#;
 __parc1=m2*unitvector(final@#-start@#)*cm+start@#;
 aux=__parc0--__parc1;
elseif isparabola(@#):
__p0=point 0 of @#;
__p1=point 0.5 of @#;
__p2=point 1 of @#;
aux=@#;
else: aux=@#;
fi
expandafter aux
enddef;


% Общая касательная к двум окружностям
numeric __tangentnumber[];
__tangentnumber1:=1; __tangentnumber2:=2;
__tangentnumber11:=11; __tangentnumber12:=12;
__tangentnumber21:=21; __tangentnumber22:=22;

vardef dbltangent@#(expr P, Q) =
	save _c,d,p,_r,t, o,g,e,f, x; pair _c[],d,o,e, x, t[]; path p[]; numeric g, f, n;
	
	o=center.P;
	2g=abs((point 0 of P)-(point 0.5(length P) of P));
	e=center.Q;
	2f=abs((point 0 of Q)-(point 0.5(length Q) of Q));

	if abs(o-e)<abs(g-f):
		stop "macros package: one circle lies inside another one. There are no tangent lines";
	fi;

	if known __tangentnumber@#: n:=__tangentnumber@# else: n:=1; fi;

	if (n=1):
	d=(abs(o-e)+-+(g-f),f-g) rotated angle (o-e);
	_c1 = o; _c2 = e; _r1 = g; _r2 = f;
	for i=1 upto 2:
	p[i] := fullcircle scaled 2_r[i] shifted _c[i];
	t[i] = point (directiontime d of p[i]) of p[i];
	endfor; 
	expandafter t1--t2

	elseif(n=2):
	d=(abs(o-e)+-+(g-f),g-f) rotated angle (e-o);
	_c1 = e; _c2 = o; _r1 = f; _r2 = g;
	for i=1 upto 2:
	p[i] := fullcircle scaled 2_r[i] shifted _c[i];
	t[i] := point (directiontime d of p[i]) of p[i];
	endfor;
	expandafter t2--t1

	elseif (n<13):
	d=(abs(o-e)+-+(g-f),f-g) rotated angle (o-e);
	_c1 = o; _c2 = e; _r1 = g; _r2 = f;
	for i=1 upto 2:
	p[i] := fullcircle scaled 2_r[i] shifted _c[i];
	t[i] = point (directiontime d of p[i]) of p[i];
	endfor; 
	if (n=11): x=t1; else: x=t2; fi;
	expandafter x

	else:
	d=(abs(o-e)+-+(g-f),g-f) rotated angle (e-o);
	_c1 = e; _c2 = o; _r1 = f; _r2 = g;
	for i=1 upto 2:
	p[i] := fullcircle scaled 2_r[i] shifted _c[i];
	t[i] := point (directiontime d of p[i]) of p[i];
	endfor;
	if (n=21): x=t2; else: x=t1; fi;
	expandafter x
	fi
enddef;



% Общая внутренняя касательная к двум окружностям
vardef dblintangent@#(expr P, Q) =
	save _x,p, t, o, g, e, f, X; pair _x,t[], o, e, X; path p[]; numeric d, g, f;

	o=center.P;
	2g=abs((point 0 of P)-(point 0.5(length P) of P));
	e=center.Q;
	2f=abs((point 0 of Q)-(point 0.5(length Q) of Q));




	if abs(o-e)<abs(g-f):
		stop "macros package: one circle lies inside another one. There are no tangent lines";
	fi;

	if abs(o-e)<g+f:
		stop "macros package: circles intersect each other. I can't find intangent";
	fi;
	
	if known __tangentnumber@#: n:=__tangentnumber@# else: n:=1 fi;
 
	_x=(1/(1+f/g))[o,e];
 
	p1:=P;
	p2:=Q;
	p3 := circle(_x, abs(o-_x)+-+g);
	
	
	if (n=1):
	t1 := cross.first(p1, p3);
	_x = g/(f+g)*t2+f/(f+g)*t1;
	expandafter t1--t2

	elseif(n=2):
	 t1 := cross.second(p1, p3);
	_x = g/(f+g)*t2+f/(f+g)*t1;
	expandafter t1--t2

	elseif(n<13):
	t1 := cross.first(p1, p3);
	_x = g/(f+g)*t2+f/(f+g)*t1;
			 if(n=11): X=t1; else: X=t2; fi; expandafter X

else:
	t1 := cross.second(p1, p3);
	_x = g/(f+g)*t2+f/(f+g)*t1;
	if(n=21): X=t1; else: X=t2; fi; expandafter X
	fi
enddef;




% Окружности, вписанные в угол и проходящие через заданную точку
% a,b,c - точки, задающие угол против часовой стрелке, b - вершина,
% x - точка, лежащая внутри угла, o - находимый центр искомой окружности
vardef angle_circle_in (expr c,b,a,x) =
	save O,R,s,t,k,ang,o; pair o,O,k[]; numeric r,t,ang[]; path s;
	ang1= if angle(a-b)<0: 360+ fi angle(a-b);
	ang2= if angle(c-b)<0: 360+ fi angle(c-b);
	ang3= if angle(x-b)<0: 360+ fi angle(x-b);
	if (ang3<ang1) or (ang3>ang2):
	O=altitude(b,x,bisector(a,b,c));	R=abs(altitude(a,O,b)-O);
	s=fullcircle scaled 2R shifted O;
	k1=s intersectionpoint (b--12[b,x]); k2= reverse s intersectionpoint (b--12[b,x]);
	k0= if abs(k1-b)>abs(k2-b): k1; else: k2; fi
	t=abs(x-b)/abs(k0-b); o=t[b,O];
	else: show a,b,c,x,"point outside angle";
	fi;
	expandafter o
enddef;


vardef angle_circle_out (expr c,b,a,x) =

save O,R,s,t,k,ang,o; pair o,O,k[]; numeric r,t,ang[]; path s;
	ang1= if angle(a-b)<0: 360+ fi angle(a-b);
	ang2= if angle(c-b)<0: 360+ fi angle(c-b);
	ang3= if angle(x-b)<0: 360+ fi angle(x-b);
	if (ang3<ang1) or (ang3>ang2):
	O=altitude(b,x,bisector(a,b,c));	R=abs(altitude(a,O,b)-O);
	s=fullcircle scaled 2R shifted O;
	k1=s intersectionpoint (b--12[b,x]); k2= reverse s intersectionpoint (b--12[b,x]);
	k0= if abs(k1-b)<abs(k2-b): k1; else: k2; fi
	t=abs(x-b)/abs(k0-b); o=t[b,O];
	else: show a,b,c,x,"point outside angle";
	fi;
	expandafter o
enddef;


%Акопян:Коника проходящая через пять точек. Работает только для эллипсов
%
%def testforfivepointsconic(expr a, b, c, d)=
%abs(unitvector(a-b) dotprod unitvector(c-d))
%enddef;
%
%vardef conicfivepoints(expr A, D, B, E, C)=
%save t, p, n, a, b, c, d, e, tmp, q;
%pair t[], a, b, c, d, e, tmp;
%path p, q;
%numeric n;
%
%a:=A; b:=B; c:=C; d:=D;e:=E;
%
%n=0.2341;
%t0= (10,0) rotatedaround (a, n);
%t1=crosspoint(c,d)(a, t0);
%t2=crosspoint(a, b)(d, e);
%t3=crosspoint(b, c)(t1, t2);
%t4=crosspoint(e, t3)(t0, a);
%p=t4;
%
%forever:
%exitunless(n<180);
%n:=n+1;
%a:=A; b:=B; c:=C; d:=D;e:=E;
%t0:= (10,0) rotatedaround (a, n);
%if (testforfivepointsconic(c, d, a, t0)>0.999):tmp:=b; b:=c; c:=tmp; fi;
%if (testforfivepointsconic(c, d, a, t0)<0.999):
%t1:=crosspoint(c,d)(a, t0);
%if (testforfivepointsconic(a, b, d, e)<0.999):
%t2:=crosspoint(a, b)(d, e);
%if (testforfivepointsconic(b, c, t1, t2)<0.999):
%t3:=crosspoint(b, c)(t1, t2);
%if (testforfivepointsconic(e, t3, t0, a)<0.999):
%t5:=t4;
%t4:=crosspoint(e, t3)(t0, a);
%if(length(t5-t4)>3):p:=p--t4;
%else: t4:=t5;
%fi;
%fi;
%fi;
%fi;
%fi;
%endfor;
%
%q=
%for n=0 upto (length(p)):
%point n of p..
%endfor
%cycle;
%
%expandafter q
%enddef;
%
vardef inscribed_in_pentagon_conic@#(expr ab, ba)(expr bc, cb)(expr cd, dc) (expr de, ed)(expr ea, ae) =
save A, B, C, D, E, tmp, a, b, c, d, e;
pair A, B, C, D, E, tmp, a, b, c, d, e;

a=crosspoint(ab, ba)(ae, ea);
b=crosspoint(bc, cb)(ab, ba);
c=crosspoint(cd, dc)(bc, cb);
d=crosspoint(de, ed)(cd, dc);
e=crosspoint(ea, ae)(de, ed);

tmp=crosspoint(a,c)(b,d); E=crosspoint(e, tmp)(b, c);
tmp:=crosspoint(b,d)(c,e); A=crosspoint(a, tmp)(c, d);
tmp:=crosspoint(c,e)(d,a); B=crosspoint(b, tmp)(d, e);
tmp:=crosspoint(d,a)(e,b); C=crosspoint(c, tmp)(e, a);
tmp:=crosspoint(e,b)(a,c); D=crosspoint(d, tmp)(a, b);


expandafter fivepointsconic@#(A, B, C, D, E)

enddef;



%Акопян: коника проходящая через пять точек. 
%В случае гиперболы возвращает одну полуось, которую можно указать цифрой 1 или 2;
numeric __conpart[];
__conpart1:=1; __conpart2:=2;


vardef fivepointsconic@#(expr af, bf, cf, df, ef)=
save s, a, b, c, d, e,f, A, B, v, t, m, l, L, p, o, V, T, n; 
numeric s, a, b, c, d, e, f, A, B, v[], t[], m, l, n, L[], X[], Y[]; path p;
pair o, V, T;

if known __conpart@#: n:=__conpart@# else: n:=1 fi;

s=10;
s*v1=xpart af;
s*t1=ypart af;

s*v2=xpart bf;
s*t2=ypart bf;

s*v3=xpart cf;
s*t3=ypart cf;

s*v4=xpart df;
s*t4=ypart df;

s*v5=xpart ef;
s*t5=ypart ef;

a+1.5c+1.23b=1;

a*v1*v1+2*b*v1*t1+c*t1*t1+2*d*v1+2*e*t1+f=0;
a*v2*v2+2*b*v2*t2+c*t2*t2+2*d*v2+2*e*t2+f=0;
a*v3*v3+2*b*v3*t3+c*t3*t3+2*d*v3+2*e*t3+f=0;
a*v4*v4+2*b*v4*t4+c*t4*t4+2*d*v4+2*e*t4+f=0;
a*v5*v5+2*b*v5*t5+c*t5*t5+2*d*v5+2*e*t5+f=0;

a*m+b*l=d; b*m+c*l=e;

2L1=(a+c+((a-c)++2b));
2L2=(a+c-((a-c)++2b));


X11+Y11=1;
(a-L1)*X11+b*Y11=0;

X1=X11/(X11++Y11);
Y1=Y11/(X11++Y11);

(a-L2)*X21+b*Y21=0;
X21+Y21=1;
X2=X21/(X21++Y21);
Y2=Y21/(X21++Y21);


o=-(m, l);
V=af/s-o;
T=bf/s-o;

A*((X1, Y1) dotprod V)*((X1, Y1) dotprod V)+B*((X2, Y2) dotprod V)*((X2, Y2) dotprod V)=1;
A*((X1, Y1) dotprod T)*((X1, Y1) dotprod T)+B*((X2, Y2) dotprod T)*((X2, Y2) dotprod T)=1;

if (A>0) and (B>0):
p= (ellipse_canonical(1/sqrt(A), 1/sqrt(B)) scaled (s) rotated (angle (X1, Y1))) shifted (s*o);
fi;

if (A>0) and (B<0):
if (n=1):
p=(hyperbola_canonical_positive(1/sqrt(A), -1/sqrt(-B)) scaled (s) rotated (angle (X1, Y1))) shifted (s*o);
else:
p= (hyperbola_canonical_negative(1/sqrt(A), -1/sqrt(-B)) scaled (s) rotated (angle (X1, Y1))) shifted (s*o);
fi;
fi;

if (B>0) and (A<0):
if (n=1):
p= (hyperbola_canonical_positive(1/sqrt(B), -1/sqrt(-A)) scaled (s) rotated (angle (X2, Y2))) shifted (s*o);
else:
p= (hyperbola_canonical_negative(1/sqrt(B), -1/sqrt(-A)) scaled (s) rotated (angle (X2, Y2))) shifted (s*o);
fi;
fi;
expandafter p

enddef;



%Эллипс проходящий через три данные точки и касающийся прямой 
vardef conic_three_and_one(expr a, b, c, d, p)=
save k, l, m; pair k, l, m; 

k=crosspoint(b, c)(a, d);
l=crosspoint(c, d)(k, k+d-p);
m=crosspoint(l, a)(b, b+d-p);
expandafter fivepointsconic(a, b, c, d, m)
enddef;

% Эллипс с осями a и b
vardef ellipse_canonical(expr a,b)=
save tmp,aux; path aux,tmp;
tmp:=circle((0,0),a);
aux= tmp yscaled (b/a);
	expandafter aux
enddef;

% Гипербола xy=p%
vardef hyperbolaxy(expr p)=
	save	aux,a,i; path aux; numeric i,n;
	aux:=
	for i=1 upto 88:
		(p*sqrt(sind(i)/cosd(i)),p*sqrt(cosd(i)/sind(i)))..
	endfor
		(p*sqrt(sind(89)/cosd(89)),p*sqrt(cosd(89)/sind(89)));
	expandafter aux
enddef;

hyp_start:=0;
hyp_fin	:=88;

% Гипербола с осями a и b
vardef hyperbola_canonical_positive(expr a,b)=
	save	tmp,aux; path aux,tmp[];
	tmp0:=hyperbolaxy(sqrt(0.5));
	tmp1:= (subpath (hyp_start, hyp_fin) of tmp0) rotated(-45);
	aux:=(tmp1 xscaled a) yscaled b;
	expandafter aux
enddef;

vardef hyperbola_canonical_negative(expr a,b)=
	save	tmp,aux; path aux,tmp[];
	tmp0:=hyperbolaxy(sqrt(0.5));
	tmp1:= (subpath (hyp_start, hyp_fin) of tmp0) rotated(-45);
	aux:=(tmp1 xscaled (-a)) yscaled b;
	expandafter aux
enddef;


% Дуга гиперболы с фокусами fa и fb и проходящая через точку p 
vardef hyperbolaFFP@#(expr fa,fb,p)=
clearparc;
save aux,	d, e, n; pair e[]; path aux[]; numeric d[], n;
if known __conpart@#: n:=__conpart@# else: n:=1 fi;
d0:=(abs(fa-p)-abs(fb-p))/2;
d1:=abs(fa-fb)/2;
e0:=0.5[fa,fb];
e1:=unitvector(fb-fa);
e2:=e1 rotated 90;
d3:=(d1+-+d0);
if n<2:
	aux0:=hyperbola_canonical_positive(d0,d3);
else:
	aux0:=hyperbola_canonical_negative(d0,d3);
fi;

d4 :=angle(e1);
aux1:= ((aux0 rotated d4) shifted e0);
expandafter aux1
enddef;

% Дуга гиперболы с фокусами fa и fb и проходящая и касаящася прямой pq 
vardef hyperbolaFFT(expr fa,fb,p,q)=
clearparc;
save aux,	d; path aux[]; pair d[];
d1:= fb reflectedabout (p,q);
meetpoint(d0)(p,q)(d1,fa);
aux1:= hyperbolaFFP(fa,fb,d0);
	expandafter aux1
enddef;

% Эллипс с фокусами fa и fb и проходящего через точку p
vardef ellipseFFP(expr fa,fb,p)=
clearparc;
save aux,	d; path aux[]; numeric d[];
d0:=(abs(fa-p)+abs(fb-p))/2;
d1:=abs(fa-fb)/2;
aux0:=ellipse_canonical(d0,(d0+-+d1));
d2 :=angle(unitvector( ((d0+d1)/(2d1))*(fb-fa)));
aux1= ((aux0 rotated d2) shifted ((fa+fb)/2));
	expandafter aux1
enddef;

% Эллипс с фокусами fa и fb и касающийся прямой pq
vardef ellipseFFT(expr fa,fb,p,q)=
clearparc;
save aux,	d; path aux[]; pair d[];
d1:= fb reflectedabout (p,q);
meetpoint(d0)(p,q)(d1,fa);
aux1:= ellipseFFP(fa,fb,d0);
	expandafter aux1
enddef;


% Парабола y=ax^2+bx+c
vardef parabola_canonical(expr a, b, c)(expr e, l)=
save i, n, p; numeric r; path p, q;

r=-l;
p=(-l, (a*(l/e)*(l/e)-b*(l/e)+c)*e);
forever:
r:=r+l/20;
exitunless(r<=l+1);
p:=p--(r,(a*(r/e)*(r/e)+b*(r/e)+c)*e);
endfor;

q= for i=0 upto ((length p) -1):
	point i of p..
endfor
point (length p) of p;
expandafter q
enddef;

%Parabola through three points
vardef parabola_throughpoints(expr X, Y, Z)(expr s)=
save a, b, c, p, t, x, y, z; numeric a, b, c, t; path p;
pair x, y, z;

2t=min(xpart(X), xpart(Y), xpart(Z)) + max(xpart(X), xpart(Y), xpart(Z));
x=X-(t, 0);
y=Y-(t, 0);
z=Z-(t, 0);

ypart(x)/s=a*(xpart(x)/s*xpart(x)/s)+b*xpart(x)/s+c;
ypart(y)/s=a*(xpart(y)/s*xpart(y)/s)+b*xpart(y)/s+c;
ypart(z)/s=a*(xpart(z)/s*xpart(z)/s)+b*xpart(z)/s+c;


p=(parabola_canonical(a, b, c)(s, s)) shifted (t, 0);
expandafter p
enddef;


%Парабола по фокусу и директрисе
vardef parabolaFD(expr a)(expr p, q)=
save r, x; pair x; numeric r;
	2x=a+altitude(p, a, q);
	r=length(x-a);
	expandafter (parabola_canonical(0.25, 0, 0)(r, length(p-q)/2) rotated (angle(a-x)-90)) shifted x
enddef;


%Вписанная в треугольник коника
vardef inscribed_in_triangle_conic(expr A, B, C)(expr P)=
save t, l, r, k, a, b, c, p;
pair t[], l[], r[], k[], a, b, c, p;

10a=A;
10b=B;
10c=C;
10p=P;

t1=crosspoint(b, c)(a, p);
t2=crosspoint(c, a)(b, p);
t3=crosspoint(a, b)(c, p);

l1=crosspoint(b, c)(t2, t3);
l2=crosspoint(c, a)(t3, t1);
l3=crosspoint(a, b)(t1, t2);

r1=crosspoint(a, p)(l1, l2);
r2=crosspoint(b, p)(l1, l2);
r3=crosspoint(c, p)(l1, l2);

k1=crosspoint(r2, t3)(r3, t2);
k2=crosspoint(r3, t1)(r1, t3);
k3=crosspoint(r1, t2)(r2, t1);


expandafter fivepointsconic(t1, t2, t3, k1, k2) scaled 10

enddef;

def inscribed_shteyner_ellipse(expr a, b, c)=
fivepointsconic(0.5(a+b), 0.5(b+c), 0.5(a+c), (a+b+4c)/6, (a+c+4b)/6)
enddef;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Части треугольника
%
% Биссектриса
vardef bisector (expr a,b,c) =
save x; pair x;
	x=(abs(c-b)/(abs(a-b)+abs(c-b)))[c,a];
	expandafter x
enddef;

%Биссектриса внешнего угла
vardef exbisector (expr a,b,c) =
save x; pair x;
if abs(abs(b-c)-abs(b-a))<10:
 x=bisector(a, b, c) rotatedaround (b, 90);
else:
 x=(abs(c-b)/(abs(c-b)-abs(a-b)))[c,a];
fi;
expandafter x
enddef;


%Центр вписанной окружности
def incenter(expr a, b, c)=
crosspoint(a, bisector(b, a, c))(b, bisector(a, b, c))
enddef;

%Центр вневписанной окружности
def excenter(expr a, b, c)=
crosspoint(a, bisector(b, a, c))(b, exbisector(a, b, c))
enddef;

%Вписанная окружность треугольника
vardef incircle(expr a, b, c)=
save i,p; pair i; path p;
i=incenter(a, b, c);
p=circle(i,abs(i-altitude(a, i, b)));
expandafter p
enddef;

%Вневписанная окружность треугольника
vardef excircle(expr a, b, c)=
save i,p; pair i; path p;
i=excenter(a, b, c);
p=circle(i,abs(i-altitude(a, i, b)));
expandafter p
enddef;


%24.11.01 Vyalyi: основание высоты
vardef altitude(expr a,c,b) =
	save aux;
	pair aux;
	aux=whatever[a,b];
	(aux-c)dotprod unitvector(a-b)=0;
expandafter aux
enddef;

%Ортоцентр
def orthocenter(expr a, b, c)=
crosspoint(a, altitude(b, a, c))(b, altitude(a, b, c))
enddef;

%Центртяжести
def centroid(expr a, b, c)=
(a+b+c)/3
enddef;

%Медиана выходящая из b
def median(expr a, b, c)=
b--((a+c)/2)
enddef;

%Окружность Эйлера
def euler_circle(expr a, b, c)=
circumcircle((a+b)/2, (b+c)/2, (a+c)/2)
enddef;

%Повторное пересечения луча ab с окружностью c центром в o
def secondpoint(expr a, b, o)=
a reflectedabout (o, o + ((a-b) rotated 90))
enddef;

def circumcenter(expr a, b, c)=
0.5crosspoint(a+b, 2a rotatedaround (a+b, 90))(a+c, 2a rotatedaround (a+c, 90))
enddef;

def isogonal_point(expr a, b, c)(expr d)=
crosspoint(a, d reflectedabout (a, bisector(b, a, c)))(b, d reflectedabout(b, bisector(a, b, c)))
enddef;

def lemoine_point(expr a, b, c)=
isogonal_point(a, b, c)(centroid(a, b, c));
enddef;

vardef gergonne_point(expr a, b, c)=
save l, g; numeric l; pair g; 
2l=length(a-b)+length(c-b)-length(a-c);

g= crosspoint(a, b+l*unitvector(c-b))(c, b+l*unitvector(a-b));

expandafter g
enddef;

vardef nagel_point(expr a, b, c)=
save l, n; numeric l; pair n; 
2l=length(a-b)+length(c-b)-length(a-c);

n= crosspoint(a, c+l*unitvector(b-c))(c, a+l*unitvector(b-a));

expandafter n
enddef;

numeric __pointnumber[];
__pointnumber1:=1; __pointnumber2:=2;

vardef torricelli_point@#(expr a, b, c)=
save t, v, u; pair t, v, u;

if known __pointnumber@#: n:=__pointnumber@# else: n:=1 fi;
n:=3-2*n;
if (angle ((c rotatedaround (b, -angle(a-b)))-b)<0):	n:=-n;	fi;
t=crosspoint(a, b rotatedaround (a, 60*n))(b, a rotatedaround (b, -n*60));
v=crosspoint(b, c rotatedaround (b, 60*n))(c, b rotatedaround (c, -n*60));
u=crosspoint(c, t)(a, v);
expandafter u
enddef;

vardef apollonius_point@#(expr a, b, c)=
expandafter isogonal_point(a,b,c)(torricelli_point@#(a,b,c))
enddef;

vardef brocard_point@#(expr a, b, c)=
save t, v, u; pair t, v, u;

if known __pointnumber@#: n:=__pointnumber@# else: n:=1 fi;

if (n=1):
2t=a+crosspoint(a, b rotatedaround (a, 90))(c, a rotatedaround (c,90));
2v=b+crosspoint(b, c rotatedaround (b, 90))(a, b rotatedaround (a,90));
u=a reflectedabout (t, v);
else:
2t=a+crosspoint(a, c rotatedaround (a, 90))(b, a rotatedaround (b,90));
2v=c+crosspoint(c, b rotatedaround (c, 90))(a, c rotatedaround (a,90));
u=a reflectedabout (t, v);
fi;
expandafter u
enddef;

vardef soddy_point@#(expr a, b, c)=
save i, A, B, p, q; pair i, A, B; path p, q;

if known __pointnumber@#: n:=__pointnumber@# else: n:=1 fi;

i=incenter(a, b, c);

A=altitude(b,i,c);
B=altitude(a,i,c);

if n=1:
p=hyperbolaFFP(b, c, A);
q=hyperbolaFFP(a, c, B);
else:
p=hyperbolaFFP2(b, c, A);
q=hyperbolaFFP2(a, c, B);
fi;

expandafter (p intersectionpoint q)

enddef;


vardef feuerbach_point(expr a, b, c)=
pair i, f, e, o, h;

i=incenter(a, b, c);
o=circumcenter(a, b, c);
h=orthocenter(a, b, c);
2e=o+h;
f=e+0.5(abs(o-a))*unitvector(i-e);

expandafter f

enddef;

%Гармоническая точка Harmonic point
vardef harmonic(expr a,b)(expr X) =
       save k, t; pair t;
	t=unitvector(b-a);
	
	(t dotprod(a-X))/(t dotprod (X-b))=k;
	expandafter (k/(k-1))[a, b]
enddef;

% Инверсия а — центр, b — радиус
vardef inversion(expr a, b)(expr c)=
save t, d, e, o, r; pair d[], e[], o[]; numeric r[];
if pair c:
pair t;
t=a+(b/length(a-c))*b*unitvector(c-a);

elseif (length(c)<3):
path t;
t=(inversion (a, b)(point 0 of c))..(inversion (a, b)(point 1 of c))..(inversion (a, b)(point 2 of c));


elseif (length(c)>3):
path t;
o0=center.c;
r0=length(o0 - (point 0 of c));

d0=o0+r0*unitvector(o0-a);
d1=o0-r0*unitvector(o0-a);


e0=inversion(a, b)(d0);


if (length(d1-a)<4):
t=(a rotatedaround (e0, 90))--(a rotatedaround (e0, -90));
else:
e1=inversion(a, b)(d1);

2o1=e0+e1;
2r1=length(e0-e1);
t=circle(o1, r1);
fi;

else:
path t;
d0=point 0 of c;
d1=point length (c) of c;

e0=altitude(d0, a, d1);
if (abs(e0-a)<4): t=c;
else:
e1=inversion(a, b)(e0);
2o0=a+e1;
t=circle(o0, length(o0-a));
fi;
fi;

expandafter t
enddef;

def pedal_circle(expr a, b, c)(expr p)=
circumcircle(altitude(a, p, b), altitude(b, p, c), altitude(c, p, a));
enddef;

vardef cevian_circle(expr a, b, c)(expr p)=
save A, B, C;
pair A, B, C;

A=crosspoint(b, c)(a, p);
B=crosspoint(c, a)(b, p);
C=crosspoint(a, b)(c, p);
expandafter circumcircle(A, B, C)
enddef;

vardef lemniscate_of_bernoulli(expr a, b)=
save t, p; pair t[]; path p;
t0=origin;
for i=-43 upto 45:
t[i+44]:=(sqrt(cosd(2i)), 0) rotated i;
endfor;
for i=90 upto 179:
t[i]=-t[179-i];
endfor;

p:=t0..
for i=1 upto 179:
t[i]..
endfor
cycle;

expandafter p scaled (abs(a-b)/sqrt(2)) rotated (angle(a-b)) shifted (0.5(a+b))
enddef;

vardef cardioid(expr a, b)=
save t, p; pair t[]; path p;

for i=-180 upto 179:
t[i]=((1+cosd(i)), 0) rotated i;
endfor;

p:=for i=-180 upto 178:
t[i]..
endfor
t179--cycle;

expandafter p scaled (abs(a-b)/2) rotated (angle(b-a)) shifted (a)
enddef;

vardef cissoid_of_diocles(expr a, b)=
save t, p; pair t[]; path p;

for i=-60 upto 60:
t[i]:=(1/cosd(i)-cosd(i), 0) rotated (i);
endfor;

p:=
for i=-60 upto 59:
t[i]..
endfor
t60;

expandafter p scaled (abs(a-b)) rotated (angle(b-a)) shifted (a)
enddef;

vardef rimmarkS(expr a, b) =
	save s; pair s;
	2s=unitvector(b-a);
	draw (.5[a,b]+ s zscaled (6,-3))..(.5[a,b]+ s zscaled (3,3))..(.5[a,b]+ s zscaled (-3,-3))..(.5[a,b]+ s zscaled (-6,3));
enddef;

vardef smallarc(expr a, b) =
	draw arc(b rotatedaround(a,10),b,b rotatedaround(a,-10));
enddef;


% отметка стрелкой
vardef arrowmark(expr a, b, c, d) =
	save s, k; pair s; numeric k;
	2s=unitvector((b-a) rotated 90)*d;
if (abs(a-b)>abs((llcorner c)-(lrcorner c))+10): k=.6*abs((llcorner c)-(lrcorner c)); else: k=.5*abs(a-b)+5;
fi;
	drawarrow (.5[a,b]+k*unitvector(b-a)+s)--(b+s);
	drawarrow (.5[a,b]-k*unitvector(b-a)+s)--(a+s);
	kisDot(a+s,b+s);
	kisDot(b+s,a+s);
	label(c rotated angle(b-a),.5[a+s,b+s]+2*unitvector(d*s));
enddef;

% значки для параллельных прямых
vardef parallel_mark@#(expr p) =
	save m,dm,n; pair dm[]; numeric n;
	if known __rmult@#: n:=__rmult@# else: n:=1 fi;
	m = .5 arclength p;
 
	if (n=0):
		fill (fullcircle scaled marksize shifted (point (arctime m of p) of p)) withcolor white;
		draw (fullcircle scaled marksize shifted (point (arctime m of p) of p));
	elseif (n<=4):
			dm1=(marksize*unitvector direction (arctime (m+0.4marksize) of p) of p) rotated 90;
			for i=-(n-1)/2 upto (n-1)/2:
			draw (-.5dm1--.5dm1 rotated -90--.5dm1) shifted point (arctime (m+0.4marksize*i) of p) of p;
			endfor
	

	elseif (n=5):
		dm1=marksize*unitvector direction arctime m of p of p;
		dm2=dm1 rotated 90;
		draw (.5dm2-.35dm1--(-.55dm2)--.5dm2+.35dm1) shifted point (arctime m of p) of p;
	
	elseif (n=6):
		dm1:=marksize*unitvector direction (arctime m+0.4marksize of p) of p rotated 90;
		draw (-.5dm1.. .5dm1) shifted point (arctime m+0.4marksize of p) of p;
		dm1:=marksize*unitvector direction (arctime m-0.35marksize of p) of p;
		dm2=dm1 rotated 90;
		draw (.5dm2-.35dm1--(-.55dm2)--.5dm2+.35dm1) shifted point (arctime m-0.35marksize of p) of p;
	
	elseif (n=10):
		dm1=marksize*unitvector direction arctime m of p of p;
		dm2=dm1 rotated 90;
		draw (.5dm2+.35dm1--(-.5dm2)-.35dm1) shifted point (arctime m of p) of p;
		draw (.5dm2-.35dm1--(-.5dm2)+.35dm1) shifted point (arctime m of p) of p;
	fi;
enddef;