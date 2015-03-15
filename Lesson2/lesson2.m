print('Halo! Lesson 2');

t = -10:0.01:10;
hold all;
 % first part of exercises
x1 = 4*rect((t-3)/10);
x2 = 3*tri((t+1)/4);
x3 = gradino(-t+2);
plot(t,x1,'r');
plot(t,x2,'g');
plot(t,x3,'b');
% second part of exercises
x4 = x1 + 2*x2 + 3*x3 ;
x5 = x1 .* x2 .* x3 ;
plot(t,x4,'m');
plot(t,x5,'y');

% third part of exercises
% first signal
y1 = (2*tri(t)).*rect(t); 
plot(t,y1,'r');
% second signal
y2 = (3*sin((2*pi*t)/4-3/2));
plot(t,y2,'b');
% third signal
% remember that plot(t,2*rect((t/6+1/6))), for make the function to traslate by a factor 1, it requires that
% you add a multiply of 1/6, because you have (t+a)/a, and you traslate by a factor of a
% for example, if you have (t+1)/6, you translate by 6
seno = 2*sin(pi*t);
rettangolo = rect(t/6+3/6); 
triangolo = 4*tri((t/4)-1);
piccolo_rettangolo = rect(t-1/2 ) + rect(t-15/2);
rettangolo_destro = rect(t/6-4/6);
y3 = seno .* rettangolo + triangolo .* piccolo_rettangolo + rettangolo_destro; 
plot(t,y3,'m');