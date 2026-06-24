clc
clear
close all



ziti=20;
close all
TightPlot.ColumeNumber = 3;
TightPlot.RowNumber = 2; 
TightPlot.GapW = 0.09;
TightPlot.GapH = 0.073; 
TightPlot.MarginsLower = 0.07; 
TightPlot.MarginsUpper = 0.01;
TightPlot.MarginsLeft = 0.055; 
TightPlot.MarginsRight = 0.02;
figure (1)
set (gcf,'Position', [100 100 1200 1560]) 
p = tight_subplot(TightPlot.ColumeNumber, TightPlot.RowNumber,...
[TightPlot.GapH TightPlot.GapW],...
[TightPlot.MarginsLower TightPlot.MarginsUpper],...
[TightPlot.MarginsLeft TightPlot.MarginsRight]); 



load('xun.mat')
axes(p(1));
ha{1}=plot(t,x(:,3), 'LineWidth', 2, 'Color', [0, 0.4470, 0.7410]);
hold on;  
plot(t,x(:,4), 'LineWidth', 2, 'Color', [0.8500, 0.3250, 0.0980]);
plot(t,x(:,5), 'LineWidth', 2, 'Color', [0.9290, 0.6940, 0.1250]);
hold off
nn3=legend ('$\hat{\omega}_{1,1}$','$\hat{\omega}_{1,2}$','$\hat{\omega}_{1,3}$');
set(nn3,'Interpreter','latex','fontsize',20,'Position',[0.4 0.81  0.01 0.01])%,'Position',[0.433, 0.959,0.02, 0.02],[po(1)-0.12,po(2)-0.27]

xlabel('Time (sec)', 'FontSize', 20); 
ylabel('Weights of subsystem 1', 'FontSize', 20); 

title('(a)', 'Units', 'normalized','fontsize',20, 'Position', [0.5, -0.255, 0]);

grid on;

xlim([0 60]); 
ylim([0 90]);  
box on;

set(gca, 'FontSize', 20, 'FontName', 'Times New Roman');
set(gca,'linewidth',2)
 


load('xun.mat')
axes(p(3));
ha{3}=plot(t,x(:,6), 'LineWidth', 2, 'Color', [0, 0.4470, 0.7410]);
hold on;  
plot(t,x(:,7), 'LineWidth', 2, 'Color', [0.8500, 0.3250, 0.0980]);
plot(t,x(:,8), 'LineWidth', 2, 'Color', [0.9290, 0.6940, 0.1250]);
hold off
nn3=legend ('$\hat{\omega}_{2,1}$','$\hat{\omega}_{2,2}$','$\hat{\omega}_{2,3}$');
set(nn3,'Interpreter','latex','fontsize',20,'Position',[0.4 0.525  0.01 0.01])%,'Position',[0.433, 0.959,0.02, 0.02],[po(1)-0.12,po(2)-0.27]

xlabel('Time (sec)', 'FontSize', 20); 
ylabel('Weights of subsystem 2', 'FontSize', 20);  
title('(c)', 'Units', 'normalized','fontsize',20, 'Position', [0.5, -0.255, 0]);

grid on;

xlim([0 60]);  
ylim([5 85]);  
box on;

set(gca, 'FontSize', 20, 'FontName', 'Times New Roman');
set(gca,'linewidth',2)




load('xun.mat')
axes(p(5));
ha{5}=plot(t,x(:,9), 'LineWidth', 2, 'Color', [0, 0.4470, 0.7410]);
hold on;  
plot(t,x(:,10), 'LineWidth', 2, 'Color', [0.8500, 0.3250, 0.0980]);
plot(t,x(:,11), 'LineWidth', 2, 'Color', [0.9290, 0.6940, 0.1250]);
hold off
nn3=legend ('$\hat{\omega}_{3,1}$','$\hat{\omega}_{3,2}$','$\hat{\omega}_{3,3}$');
set(nn3,'Interpreter','latex','fontsize',20,'Position',[0.4 0.162  0.01 0.01])%,'Position',[0.433, 0.959,0.02, 0.02],[po(1)-0.12,po(2)-0.27]

xlabel('Time (sec)', 'FontSize', 20); 
ylabel('Weights of subsystem 3', 'FontSize', 20);  

title('(e)', 'Units', 'normalized','fontsize',20, 'Position', [0.5, -0.255, 0]);

grid on;

ylim([15 85]); 
box on;

set(gca, 'FontSize', 20, 'FontName', 'Times New Roman');
set(gca,'linewidth',2)


load('xun.mat')
axes(p(2));
ha{2}=plot(t,i1,'Color',[0.0000 0.750 0.0000],'LineWidth',2);
hold on
load('bi11-1.mat')
plot(t,i1,'Color',[0.0000 0.4500 1.00],'LineWidth',2);
load('quhuifan-1.mat')
plot(t,i1,'Color',[1.0000 0.8000 0.0000],'LineWidth',2);
yline(103.879,'Color',[1.000 0.000 0.0000],'LineWidth',1.5);
yline(103.779,'Color',[1.000 0.0000 0.0000],'LineWidth',1.5);
axis([0,60,75,112])
xlabel ('Time (sec)');
ylabel ('Iteration thresholds of subsystem 1');
nn3=legend ('Proposed method','Method in [11]','Without memory buffers','Converged weight $\pm$ 0.05');
set(nn3,'Interpreter','latex','fontsize',ziti,'Location', 'southeast')%,[po(1)-0.12,po(2)-0.27]%,'Position',[0.4, 0.947,0.03, 0.03]
title('(b)', 'Units', 'normalized','fontsize',ziti, 'Position', [0.5, -0.255, 0]);
grid on
set(gca,'linewidth',2,'fontsize',ziti)
set(gca, 'FontSize', 20, 'FontName', 'Times New Roman');

axes('Position',[0.73,0.85,0.42/2,0.15/2.2]);
load('xun.mat')
ha{2}=plot(t,i1,'Color',[0.0000 0.750 0.0000],'LineWidth',2);
hold on
load('bi11-1.mat')
plot(t,i1,'Color',[0.0000 0.4500 1.00],'LineWidth',2);
load('quhuifan-1.mat')
plot(t,i1,'Color',[1.0000 0.8000 0.0000],'LineWidth',2);
yline(103.879,'Color',[1.000 0.000 0.0000],'LineWidth',1.5);
yline(103.779,'Color',[1.000 0.0000 0.0000],'LineWidth',1.5);
xlim([min(25),max(60)]);
ylim([min(103.75),max(103.9)]);
set(gca,'FontSize',20)
set(gca,'linewidth',2,'fontsize',ziti)
set(gca, 'FontSize', 20, 'FontName', 'Times New Roman');




load('xun.mat')
axes(p(4));
ha{4}=plot(t,i2,'Color',[0.0000 0.750 0.0000],'LineWidth',2);
hold on
load('bi11-1.mat')
plot(t,i2,'Color',[0.0000 0.4500 1.00],'LineWidth',2);
load('quhuifan-1.mat')
plot(t,i2,'Color',[1.0000 0.8000 0.0000],'LineWidth',2);
yline(103.161,'Color',[1.000 0.000 0.0000],'LineWidth',1.5);
yline(103.261,'Color',[1.000 0.0000 0.0000],'LineWidth',1.5);% axis([0,30,-1,5])
xlabel ('Time (sec)');
ylabel ('Iteration thresholds of subsystem 2');
nn3=legend ('Proposed method','Method in [11]','Without memory buffers','Converged weight $\pm$ 0.05');
set(nn3,'Interpreter','latex','fontsize',ziti,'Location', 'southeast')%,[po(1)-0.12,po(2)-0.27]%,'Position',[0.4, 0.947,0.03, 0.03]
title('(d)', 'Units', 'normalized','fontsize',ziti, 'Position', [0.5, -0.255, 0]);
grid on
set(gca,'linewidth',2,'fontsize',ziti)
set(gca, 'FontSize', 20, 'FontName', 'Times New Roman');

axes('Position',[0.73,0.526,0.42/2,0.16/2]);
load('xun.mat')
ha{4}=plot(t,i2,'Color',[0.0000 0.750 0.0000],'LineWidth',2);
hold on
load('bi11-1.mat')
plot(t,i2,'Color',[0.0000 0.4500 1.00],'LineWidth',2);
load('quhuifan-1.mat')
plot(t,i2,'Color',[1.0000 0.8000 0.0000],'LineWidth',2);
yline(103.161,'Color',[1.000 0.000 0.0000],'LineWidth',1.5);
yline(103.261,'Color',[1.000 0.0000 0.0000],'LineWidth',1.5);% axis([0,30,-1,5])
xlim([min(10),max(60)]);
ylim([min(103.12),max(103.3)]);
set(gca,'FontSize',20)
set(gca,'linewidth',2,'fontsize',ziti)
set(gca, 'FontSize', 20, 'FontName', 'Times New Roman');

load('xun.mat')
axes(p(6));
ha{6}=plot(t,i3,'Color',[0.0000 0.750 0.0000],'LineWidth',2);
hold on
load('bi11-1.mat')
plot(t,i3,'Color',[0.0000 0.4500 1.00],'LineWidth',2);
load('quhuifan-1.mat')
plot(t,i3,'Color',[1.0000 0.8000 0.0000],'LineWidth',2);
yline(101.985,'Color',[1.000 0.000 0.0000],'LineWidth',1.5);
yline(101.885,'Color',[1.000 0.0000 0.0000],'LineWidth',1.5);
% axis([0,30,-1,5])% axis([0,30,-1,5])
xlabel ('Time (sec)');
ylabel ('Iteration thresholds of subsystem 3');
nn3=legend ('Proposed method','Method in [11]','Without memory buffers','Converged weight $\pm$ 0.05');
set(nn3,'Interpreter','latex','fontsize',ziti,'Location', 'southeast')%,[po(1)-0.12,po(2)-0.27]%,'Position',[0.4, 0.947,0.03, 0.03]
title('(f)', 'Units', 'normalized','fontsize',ziti, 'Position', [0.5, -0.255, 0]);
grid on
set(gca,'linewidth',2,'fontsize',ziti)
set(gca, 'FontSize', 20, 'FontName', 'Times New Roman');

axes('Position',[0.73,0.196,0.42/2,0.16/2]);
load('xun.mat')
ha{6}=plot(t,i3,'Color',[0.0000 0.750 0.0000],'LineWidth',2);
hold on
load('bi11-1.mat')
plot(t,i3,'Color',[0.0000 0.4500 1.00],'LineWidth',2);
load('quhuifan-1.mat')
plot(t,i3,'Color',[1.0000 0.8000 0.0000],'LineWidth',2);
yline(101.985,'Color',[1.000 0.000 0.0000],'LineWidth',1.5);
yline(101.885,'Color',[1.000 0.0000 0.0000],'LineWidth',1.5);
xlim([min(10),max(60)]);
ylim([min(101.85),max(102)]);
set(gca,'FontSize',20)
set(gca,'linewidth',2,'fontsize',ziti)
set(gca, 'FontSize', 20, 'FontName', 'Times New Roman');




