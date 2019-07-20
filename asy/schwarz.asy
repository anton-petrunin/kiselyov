settings.render=32;
import three;
size(4cm);
currentprojection=orthographic(0,6,1.7);
currentlight=light(10,10,3);


int m,n;
m=6;
n=8;

real h;
h=2;



path3[] faces;


for (int i=0; i<n; i+=2)
{for (int j=0; j<m; ++j)
{faces.push((sin(2*pi*j/m),cos(2*pi*j/m),i*h/n)--(sin(2*pi*(j+1)/m),cos(2*pi*(j+1)/m),i*h/n)--(sin(2*pi*(j+1/2)/m),cos(2*pi*(j+1/2)/m),(i+1)*h/n)--cycle);}
}

for (int i=2; i<=n; i+=2)
{for (int j=0; j<m; ++j)
{faces.push((sin(2*pi*j/m),cos(2*pi*j/m),i*h/n)--(sin(2*pi*(j+1)/m),cos(2*pi*(j+1)/m),i*h/n)--(sin(2*pi*(j+1/2)/m),cos(2*pi*(j+1/2)/m),(i-1)*h/n)--cycle);}
}

for (int i=1; i<n; i+=2)
{for (int j=0; j<m; ++j)
{faces.push((sin(2*pi*(j-1/2)/m),cos(2*pi*(j-1/2)/m),i*h/n)--(sin(2*pi*(j+1/2)/m),cos(2*pi*(j+1/2)/m),i*h/n)--(sin(2*pi*(j)/m),cos(2*pi*(j)/m),(i-1)*h/n)--cycle);}
}

for (int i=1; i<=n; i+=2)
{for (int j=0; j<m; ++j)
{faces.push((sin(2*pi*(j-1/2)/m),cos(2*pi*(j-1/2)/m),i*h/n)--(sin(2*pi*(j+1/2)/m),cos(2*pi*(j+1/2)/m),i*h/n)--(sin(2*pi*(j)/m),cos(2*pi*(j)/m),(i+1)*h/n)--cycle);}
}



path3 lowercircle = circle((0,0,0), 1, (0,0,1));
path3 uppercircle = circle((0,0,h), 1, (0,0,1));

draw(lowercircle, .2bp+black+opacity(1));
draw(uppercircle, .2bp+black+opacity(1));
draw((1,0,0)--(1,0,h)^^(-1,0,0)--(-1,0,h),.2bp+black+opacity(1)); 


draw((sin(2*pi*0/m),cos(2*pi*0/m),0)--(sin(2*pi*1/m),cos(2*pi*1/m),0)--(sin(2*pi*2/m),cos(2*pi*2/m),0)--(sin(2*pi*3/m),cos(2*pi*3/m),0)--(sin(2*pi*4/m),cos(2*pi*4/m),0)--(sin(2*pi*5/m),cos(2*pi*5/m),0)--cycle,
1bp+black+opacity(1));
draw((sin(2*pi*0/m),cos(2*pi*0/m),h)--(sin(2*pi*1/m),cos(2*pi*1/m),h)--(sin(2*pi*2/m),cos(2*pi*2/m),h)--(sin(2*pi*3/m),cos(2*pi*3/m),h)--(sin(2*pi*4/m),cos(2*pi*4/m),h)--(sin(2*pi*5/m),cos(2*pi*5/m),h)--cycle,
1bp+black+opacity(1));

draw(faces,.5bp+black+opacity(1));
draw(surface(faces),white+opacity(1),light=nolight);

