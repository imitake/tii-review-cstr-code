
function [t,X]=subfuntion1(x)
    global T t1;
    global R;
    global g;
    global ucun2; 
    global cunsign
    global e
    global R R1 R2 R3  Q1 Q2 Q3
    global tsign

    sign=2;

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
%     R=1;R1=1;R2=1;R3=1;
%     Q1=eye(2);Q2=eye(2);Q3=eye(2);

%     if sign==1
%     [v_min,sign]=min([phix1*W1,phix2*W2+0.5*exp(-0.2*(V2-V1)^2),phix3*W3+0.5*exp(-0.2*(V3-V1)^2)]);
%     elseif sign==2
%     [v_min,sign]=min([phix1*W1+0.5*exp(-0.2*(V1-V2)^2),phix2*W2,phix3*W3+0.5*exp(-0.2*(V3-V2)^2)]);    
%     else
%     [v_min,sign]=min([phix1*W1+0.5*exp(-0.2*(V1-V3)^2),phix2*W2+0.5*exp(-0.2*(V2-V3)^2),phix3*W3]);      
%     end
     tsign=[tsign;t(end)];
     cunsign=[cunsign;sign];



      [v_min,sign]=min([phix1*W1,phix2*W2,phix3*W3]);

    tsign=[tsign;t(end)];
    cunsign=[cunsign;sign];
%    
    

    if sign==1
       f=[-0.5*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -2.592*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
       Q=Q1;
       R=R1;
       g=[0;2.092];
       u=-0.5*inv(R)*g'*dphix1'*W1;   
    elseif sign==2
       f=[-2*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -4.092*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
       g=[0;2.092];
       Q=Q2;
       R=R2;
       u=-0.5*inv(R)*g'*dphix2'*W2;  
    else
       f=[-1.5*x1-7.2*10^10*exp(-8750/(x2+350))*(x1+0.5)+0.5;
          -5.092*x2+1.506*10^13*exp(-8750/(x2+350))*(x1+0.5)-104.6];
       g=[0;2.092];
       Q=Q3;
       R=R3;
       u=-0.5*inv(R)*g'*dphix3'*W3;   
    end
    



    X(i+1,:)=X(i,:)+t1*[f+g*u; zeros(3,1); zeros(3,1); zeros(3,1)]';
    t=[t;t(end)+t1];
    ucun2=[ucun2;u];


    end
    
    end
    