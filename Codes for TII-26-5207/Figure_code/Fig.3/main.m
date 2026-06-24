clc
clear
close all

ziti=20;
close all
TightPlot.ColumeNumber = 1;
TightPlot.RowNumber = 2; 
TightPlot.GapW = 0.115;
TightPlot.GapH = 0.08; 
TightPlot.MarginsLower = 0.22; 
TightPlot.MarginsUpper = 0.02;
TightPlot.MarginsLeft = 0.065;
TightPlot.MarginsRight = 0.0132;
figure (1)
set (gcf,'Position', [100 100 1100 500]) 
p = tight_subplot(TightPlot.ColumeNumber, TightPlot.RowNumber,...
[TightPlot.GapH TightPlot.GapW],...
[TightPlot.MarginsLower TightPlot.MarginsUpper],...
[TightPlot.MarginsLeft TightPlot.MarginsRight]); 


load('xun.mat')
axes(p(1));
ha{1}=plot(t,x(:,1),t,x(:,2),'Linewidth',2);%,'r--','g-'
hold on
xlabel ('Time (sec)');
set(gca,'linewidth',2,'fontsize',ziti)
nn1=legend ('$x_{1}$','$x_{2}$');
nn1.NumColumns = 1;
set(nn1,'Interpreter','latex','fontsize',ziti)
grid on
title('(a)', 'Units', 'normalized','fontsize',ziti, 'Position', [0.5, -0.285, 0]);
ylabel ('System states');

axes(p(2));
ha{2}=plot(t,ucun2,'Linewidth',2);
xlabel ('Time (sec)');
ylabel ('Approximate transfer control');
axis([0,60,-300,50])
nn4=legend ('$\hat{u}_{\hat{\sigma}}$');
set(nn4,'Interpreter','latex','fontsize',ziti)
title('(b)', 'Units', 'normalized', 'Position', [0.5, -0.285, 0],'fontsize',ziti);
grid on
set(gca,'linewidth',2,'fontsize',ziti)
