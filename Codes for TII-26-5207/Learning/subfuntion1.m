
function [t,X]=subfuntion1(x)
    global T t1;
    global R;
    global g;
    global ucun2; 
    global cunsign
    global e

    sign=2;
    R=1;
    R1=1;
    R2=1; 
    Q1=1*eye(2);
    Q2=1*eye(2);
    X=x;
    t=[0];

    savex1=[];
    savex2=[];
    savex3=[];

    for i=1:T
        i
    x1=X(i,1);
    x2=X(i,2);
    W1=[X(i,3) X(i,4) X(i,5) ]';
    W2=[X(i,6) X(i,7) X(i,8) ]';
    W3=[X(i,9) X(i,10) X(i,11) ]';
    phix1=[x1^2; x1*x2; x2^2]'; 
    phix2=[x1^2; x1*x2; x2^2]'; 
    phix3=[x1^2; x1*x2; x2^2]'; 
    dphix1=[2*x1 0 ; x2 x1 ; 0 2*x2 ]; 
    dphix2=[2*x1 0 ; x2 x1 ; 0 2*x2 ]; 
    dphix3=[2*x1 0 ; x2 x1 ; 0 2*x2 ]; 

    V1=phix1*W1;
    V2=phix2*W2;
    V3=phix3*W3;


    if sign==1
    [v_min,sign]=min([phix1*W1,phix2*W2+0.5*exp(-0.2*(V2-V1)^2),phix3*W3+0.5*exp(-0.2*(V3-V1)^2)]);
    elseif sign==2
    [v_min,sign]=min([phix1*W1+0.5*exp(-0.2*(V1-V2)^2),phix2*W2,phix3*W3+0.5*exp(-0.2*(V3-V2)^2)]);    
    else
    [v_min,sign]=min([phix1*W1+0.5*exp(-0.2*(V1-V3)^2),phix2*W2+0.5*exp(-0.2*(V2-V3)^2),phix3*W3]);      
    end
%         [v_min,sign]=min([phix1*W1,phix2*W2,phix3*W3]);



     if  i*t1<3
         a=2;
     elseif i*t1<20
         a=0.1;
     else
         a=7;
     end
% 
%      if  i*t1<3
%          a=2;
%      elseif i*t1<20
%          a=0.1;
%      else
%          a=30;
%      end

    if  i*t1<20
         lin=0.001/(1+0.05*i*t1)^1.2;
    else
         lin=0;
    end



   g=[0;2.092];
   us=-0.5*inv(R)*g'*dphix1'*[50 70 20]';
    

    if sign==1
       f=[-0.5*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -2.592*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
       Q=Q1;
       R=R1;
       u=-0.5*inv(R)*g'*dphix1'*W1;   
       s=dphix1*f+dphix1*g*u; 
       u=-0.5*inv(R+lin)*g'*dphix1'*W1+inv(R+lin)*lin*us; 
       Y=(-[x1 x2]*Q*[x1 x2 ]'-u*R*u'-lin*(u-us)^2); 
       e=W1'*s-Y;

     if  i*t1<3
         a=2;
     elseif i*t1<18
         a=0.1;
     elseif i*t1<26
         a=7;
     else
         a=0.01;
     end

       Win1=-a*(s./(s'*s+1)^2)*e';  
       Win2=-0*(s./(s'*s+1)^2)*e';  
       Win3=-0*(s./(s'*s+1)^2)*e'; 

       savex1=[savex1;x1,x2];
       if i*t1>10
          for k=size(savex1, 1)-10:1:size(savex1, 1)
              x1=savex1(k,1);
              x2=savex1(k,2);

          f=[-0.5*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -2.592*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
          Q=Q1;
          R=R1;
          u=-0.5*inv(R)*g'*dphix1'*W1;   
          s=dphix1*f+dphix1*g*u; 
          u=-0.5*inv(R+lin)*g'*dphix1'*W1+inv(R+lin)*lin*us; 
          Y=(-[x1 x2]*Q*[x1 x2 ]'-u*R*u'-lin*(u-us)^2); 
          e=W1'*s-Y;

          Win1=-0.002*(s./(s'*s+1)^2)*e'+Win1; 
          end
       else
          for k=1:1:size(savex1, 1)
              x1=savex1(k,1);
              x2=savex1(k,2);

          f=[-0.5*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -2.592*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
          Q=Q1;
          R=R1;
          u=-0.5*inv(R)*g'*dphix1'*W1;   
          s=dphix1*f+dphix1*g*u; 
          u=-0.5*inv(R+lin)*g'*dphix1'*W1+inv(R+lin)*lin*us; 
          Y=(-[x1 x2]*Q*[x1 x2 ]'-u*R*u'-lin*(u-us)^2); 
          e=W1'*s-Y;
          Win1=-0.01*(s./(s'*s+1)^2)*e'+Win1; 
          end

       end


    elseif sign==2
       f=[-2*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -4.092*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
       g=[0;2.092];
       Q=Q2;
       R=R2;
       u=-0.5*inv(R+lin)*g'*dphix2'*W2+inv(R+lin)*lin*us; 
       s=dphix2*f+dphix2*g*u; 
       Y=(-[x1 x2]*Q*[x1 x2 ]'-u*R*u'-lin*(u-us)^2); 
       e=W2'*s-Y;
       Win1=-0*(s./(s'*s+1)^2)*e';  
       Win2=-a*(s./(s'*s+1)^2)*e';  
       Win3=-0*(s./(s'*s+1)^2)*e'; 

       savex2=[savex2;x1,x2];

       if i*t1>10
          for k=size(savex2, 1)-10:1:size(savex2, 1)
              x1=savex2(k,1);
              x2=savex2(k,2);
         f=[-2*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -4.092*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
         g=[0;2.092];
         Q=Q2;
         R=R2;
         u=-0.5*inv(R+lin)*g'*dphix2'*W2+inv(R+lin)*lin*us; 
         s=dphix2*f+dphix2*g*u; 
         Y=(-[x1 x2]*Q*[x1 x2 ]'-u*R*u'-lin*(u-us)^2); 
         e=W2'*s-Y;

          Win2=-0.01*(s./(s'*s+1)^2)*e'+Win2; 
          end
       else

           
       end

    else
       f=[-1.5*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -5.092*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
       g=[0;2.092];
       Q=Q2;
       R=R2;
       u=-0.5*inv(R+lin)*g'*dphix3'*W3+inv(R+lin)*lin*us; 
       s=dphix3*f+dphix3*g*u; 
       Y=(-[x1 x2]*Q*[x1 x2 ]'-u*R*u'-lin*(u-us)^2); 
       e=W3'*s-Y;
       Win1=-0*(s./(s'*s+1)^2)*e';  
       Win2=-0*(s./(s'*s+1)^2)*e';  
       Win3=-a*(s./(s'*s+1)^2)*e'; 

        savex3=[savex3;x1,x2];
        if i*t1>5
         for k=size(savex3,1)-10:1:size(savex3,1)
              x1=savex3(k,1);
              x2=savex3(k,2);
          f=[-1.5*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -5.092*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
          g=[0;2.092];
          Q=Q2;
          R=R2;
          u=-0.5*inv(R+lin)*g'*dphix3'*W3+inv(R+lin)*lin*us; 
          s=dphix3*f+dphix3*g*u; 
          Y=(-[x1 x2]*Q*[x1 x2 ]'-u*R*u'-lin*(u-us)^2); 
          e=W3'*s-Y;
          Win3=-0.01*(s./(s'*s+1)^2)*e'+Win3; 
          end
        else
         for k=1:1:size(savex3,1)
              x1=savex3(k,1);
              x2=savex3(k,2);
          f=[-1.5*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -5.092*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
          g=[0;2.092];
          Q=Q2;
          R=R2;
          u=-0.5*inv(R+lin)*g'*dphix3'*W3+inv(R+lin)*lin*us; 
          s=dphix3*f+dphix3*g*u; 
          Y=(-[x1 x2]*Q*[x1 x2 ]'-u*R*u'-lin*(u-us)^2); 
          e=W3'*s-Y;
          Win3=-0.01*(s./(s'*s+1)^2)*e'+Win3; 
          end   
       end
    end
    

    if i*t1<40
    u=u+2*(sin(t(end))^2*cos(t(end))+sin(2*t(end))^2*cos(0.1*t(end))+sin(-1.2*t(end))^2*cos(0.5*t(end))+sin(t(end))^5+sin(1.12*t(end))^2+cos(2.4*t(end))*sin(2.4*t(end))^3);
    if t(end)<=15
       son1=2*(sin(t(end))^2*cos(t(end))+sin(2*t(end))^2*cos(0.1*t(end))+sin(-1.2*t(end))^2*cos(0.5*t(end))+sin(t(end))^5+sin(1.12*t(end))^2+cos(2.4*t(end))*sin(2.4*t(end))^3);
       son2=(sin(t(end))^2*cos(t(end))+sin(2*t(end))^2*cos(0.1*t(end))+sin(-1.2*t(end))^2*cos(0.5*t(end))+sin(t(end))^5+sin(1.12*t(end))^2+cos(2.4*t(end))*sin(2.4*t(end))^3);
    else
        son1=0;
        son2=0;
    end
    end


    X(i+1,:)=X(i,:)+t1*[f+g*u+[son1;son2]; Win1;Win2;Win3 ]';
    t=[t;t(end)+t1];
    ucun2=[ucun2;u];
    cunsign=[cunsign;sign];
    end
    
    end
    