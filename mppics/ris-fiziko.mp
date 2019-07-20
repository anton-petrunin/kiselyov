input fiziko.mp; 
pair A, B, C, D, E, F, C', E', F';
numeric totalWidth, width, height, breadth, a[];
path p[];
totalWidth := 5cm;
width := 2cm;
height := 3cm;
breadth := 1/3cm;
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
dotlabel.top("A", A);
dotlabel.urt("B", B);
dotlabel.ulft("C", C);
dotlabel.lft("D", D);
dotlabel.ulft("E", E);
