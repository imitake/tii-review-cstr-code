clc
clear
close all
global ee 
global T t1  ucun2
global cunsign 

R=1;
ee=[];
Q=eye(2);
x0=[ 0.5 10	39.2227019534168	65.5477890177557	17.1186687811562  30	60	10 35	70	20];

ucun2=[];
cunsign=2;
tz=60;
t1=0.01;
T=tz/t1;
[t,x]=subfuntion1(x0);

figure (1);
plot(t,x(:,1:2));
title ('System States');
xlabel ('Time (s)');

figure (2);
plot(t,x(:,3:5));
title ('Parameters of the critic NN');
xlabel ('Time (s)');
legend ('W_{c1}','W_{c2}', 'W_{c3}');

figure (3);
plot(t,x(:,6:8));
title ('Parameters of the critic ');
xlabel ('Time (s)');
legend ('W_{c1}','W_{c2}', 'W_{c3}');

figure (4);
plot(t,x(:,9:11));
title ('Parameters of the critic');
xlabel ('Time (s)');
legend ('W_{c1}','W_{c2}', 'W_{c3}');

ucun2=[ucun2;ucun2(end)];
figure (5);
plot(t,ucun2);
title ('control u');
xlabel ('Time (s)');


figure (6);
plot(t,cunsign);
title ('control u');
xlabel ('Time (s)');
axis([0,100 0 3])

i1=vecnorm(x(:,3:5), 2, 2);
i2=vecnorm(x(:,6:8), 2, 2);
i3=vecnorm(x(:,9:11), 2, 2);

t1qian=i1(1);
t2qian=i2(1);
t3qian=i3(1);

for m=1:length(t)-1
  
    if abs(i1(m+1)-t1qian)>0.01
       t11=m*t1;
       t1qian=i1(m+1);
    end
   if abs(i2(m+1)-t2qian)>0.01
       t22=m*t1;
       t2qian=i2(m+1);
    end

   if abs(i3(m+1)-t3qian)>0.01
       t33=m*t1;
      t3qian=i3(m+1); 
   end
end


figure (7);
plot(t,i1,t,vecnorm(x(:,6:8), 2, 2),t,vecnorm(x(:,9:11), 2, 2));
xlabel ('Time (s)');



