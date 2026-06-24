clc
clear
close all

ziti=20;
close all
TightPlot.ColumeNumber = 1;
TightPlot.RowNumber = 2; 
TightPlot.GapW = 0.09;
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
ha{1}=plot(t,cunsign,'Linewidth',1.5);
hold on
xlabel ('Time (sec)');
set(gca,'linewidth',2,'fontsize',ziti)
nn1=legend ('$\hat{\sigma}$','$x_{2}$');
nn1.NumColumns = 1;
set(nn1,'Interpreter','latex','fontsize',ziti)
axis([0 60 0 4])
grid on
title('(a)', 'Units', 'normalized','fontsize',ziti, 'Position', [0.5, -0.285, 0]);
ylabel ('Switching law');

axes('Position',[0.25,0.51,0.17/1,0.33/1.2]);
plot(t,cunsign,'LineWidth',1.5);
xlim([min(10),max(16)]);
ylim([min(0),max(4)]);
set(gca,'FontSize',20);
set(gca,'linewidth',2,'fontsize',ziti)


load('wudaijia.mat')

axes(p(2));
ha{2}=plot(t,cunsign,'Linewidth',1.5);
hold on
xlabel ('Time (sec)');
set(gca,'linewidth',2,'fontsize',ziti)
nn1=legend ('$\hat{\sigma}$','$x_{2}$');
nn1.NumColumns = 1;
set(nn1,'Interpreter','latex','fontsize',ziti)
axis([0 60 0 4])
grid on
title('(b)', 'Units', 'normalized','fontsize',ziti, 'Position', [0.5, -0.285, 0]);
ylabel ('Penalty-free switching law');

axes('Position',[0.8,0.71,0.17/1.2,0.33/2.2]);
plot(t,cunsign,'LineWidth',1.5);
xlim([min(15),max(19)]);
ylim([min(0),max(4)]);
set(gca,'FontSize',20);
set(gca,'linewidth',2,'fontsize',ziti)

