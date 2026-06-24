clc
clear
close all



ziti=20;
close all
TightPlot.ColumeNumber = 1;
TightPlot.RowNumber = 2;
TightPlot.GapW = 0.1;
TightPlot.GapH = 0.08; 
TightPlot.MarginsLower = 0.22; 
TightPlot.MarginsUpper = 0.02;
TightPlot.MarginsLeft = 0.08; 
TightPlot.MarginsRight = 0.0132;
figure (1)
set (gcf,'Position', [100 100 1100 500]) 
p = tight_subplot(TightPlot.ColumeNumber, TightPlot.RowNumber,...
[TightPlot.GapH TightPlot.GapW],...
[TightPlot.MarginsLower TightPlot.MarginsUpper],...
[TightPlot.MarginsLeft TightPlot.MarginsRight]);


colors = lines(5);
styles = {'-','--','-.',':','-'};
markers = {'none','none','none','none','o'};

axes(p(1));
load('Q-1R-1.mat')
ha{1}=plot(t,x(:,1),'Color',colors(1,:),'Linewidth',2,'LineStyle',styles{1},'Marker',markers{1},'MarkerIndices',1:80:length(t));%,'r--','g-'
hold on
load('Q-1R-0.6.mat')
ha{1}=plot(t,x(:,1),'Color',colors(2,:),'Linewidth',2,'LineStyle',styles{2},'Marker',markers{2},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-1R-0.3.mat')
ha{1}=plot(t,x(:,1),'Color',colors(3,:),'Linewidth',2,'LineStyle',styles{3},'Marker',markers{3},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-0.6R-1.mat')
ha{1}=plot(t,x(:,1),'Color',colors(4,:),'Linewidth',2,'LineStyle',styles{4},'Marker',markers{4},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-0.3R-1.mat')
ha{1}=plot(t,x(:,1),'Color',colors(5,:),'Linewidth',2,'LineStyle',styles{5},'Marker',markers{5},'MarkerIndices',1:80:length(t));%,'r--','g-'

xlabel ('Time (sec)');
set(gca,'linewidth',2,'fontsize',ziti)
nn1=legend ('$\mathcal{Q}=I,\mathcal{R}=1$', '$\mathcal{Q}=I,\mathcal{R}=0.6$', '$\mathcal{Q}=I,\mathcal{R}=0.3$', ...
       '$\mathcal{Q}=0.6I,\mathcal{R}=1$', '$\mathcal{Q}=0.3I,\mathcal{R}=1$', ...
       'Interpreter','latex','Position',[0.201, 0.78,0.02, 0.02]);%,'Location','best'
nn1.NumColumns = 1;
set(nn1,'Interpreter','latex','fontsize',ziti)%,[po(1)-0.12,po(2)-0.27]%%,'Position',[0.19, 0.915,0.02, 0.02]
axis([0 10 -0.1 0.55])
grid on
title('(a)', 'Units', 'normalized','fontsize',ziti, 'Position', [0.5, -0.285, 0]);
ylabel ('$x_1$','Interpreter','latex');%

axes('Position',[0.364,0.452,0.5/5,0.5/2.5]);
load('Q-1R-1.mat')
ha{1}=plot(t,x(:,1),'Color',colors(1,:),'Linewidth',2,'LineStyle',styles{1},'Marker',markers{1},'MarkerIndices',1:80:length(t));%,'r--','g-'
hold on
load('Q-1R-0.6.mat')
ha{1}=plot(t,x(:,1),'Color',colors(2,:),'Linewidth',2,'LineStyle',styles{2},'Marker',markers{2},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-1R-0.3.mat')
ha{1}=plot(t,x(:,1),'Color',colors(3,:),'Linewidth',2,'LineStyle',styles{3},'Marker',markers{3},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-0.6R-1.mat')
ha{1}=plot(t,x(:,1),'Color',colors(4,:),'Linewidth',2,'LineStyle',styles{4},'Marker',markers{4},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-0.3R-1.mat')
ha{1}=plot(t,x(:,1),'Color',colors(5,:),'Linewidth',2,'LineStyle',styles{5},'Marker',markers{5},'MarkerIndices',1:80:length(t));%,'r--','g-'
xlim([min(8),max(10)]);
ylim([min(0.4*10^(-4)),max(1.7*10^(-4))]);
set(gca,'FontSize',18);
set(gca,'linewidth',2,'fontsize',ziti)



axes(p(2));
load('Q-1R-1.mat')
ha{2}=plot(t,x(:,2),'Color',colors(1,:),'Linewidth',2,'LineStyle',styles{1},'Marker',markers{1},'MarkerIndices',1:80:length(t));%,'r--','g-'
hold on
load('Q-1R-0.6.mat')
ha{2}=plot(t,x(:,2),'Color',colors(2,:),'Linewidth',2,'LineStyle',styles{2},'Marker',markers{2},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-1R-0.3.mat')
ha{2}=plot(t,x(:,2),'Color',colors(3,:),'Linewidth',2,'LineStyle',styles{3},'Marker',markers{3},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-0.6R-1.mat')
ha{2}=plot(t,x(:,2),'Color',colors(4,:),'Linewidth',2,'LineStyle',styles{4},'Marker',markers{4},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-0.3R-1.mat')
ha{2}=plot(t,x(:,2),'Color',colors(5,:),'Linewidth',2,'LineStyle',styles{5},'Marker',markers{5},'MarkerIndices',1:80:length(t));%,'r--','g-'

xlabel ('Time (sec)');
set(gca,'linewidth',2,'fontsize',ziti)
nn1=legend ('$\mathcal{Q}=I,\mathcal{R}=1$', '$\mathcal{Q}=I,\mathcal{R}=0.6$', '$\mathcal{Q}=I,\mathcal{R}=0.3$', ...
       '$\mathcal{Q}=0.6I,\mathcal{R}=1$', '$\mathcal{Q}=0.3I,\mathcal{R}=1$', ...
       'Interpreter','latex','Position',[0.71, 0.4,0.02, 0.02]);
nn1.NumColumns = 1;
set(nn1,'Interpreter','latex','fontsize',ziti)
axis([0 10 -10.2 3])
grid on
title('(b)', 'Units', 'normalized','fontsize',ziti, 'Position', [0.5, -0.285, 0]);
ylabel ('$x_2$','Interpreter','latex');

axes('Position',[0.85,0.576,0.6/5,0.45/2.5]);
load('Q-1R-1.mat')
ha{1}=plot(t,x(:,2),'Color',colors(1,:),'Linewidth',2,'LineStyle',styles{1},'Marker',markers{1},'MarkerIndices',1:80:length(t));%,'r--','g-'
hold on
load('Q-1R-0.6.mat')
ha{1}=plot(t,x(:,2),'Color',colors(2,:),'Linewidth',2,'LineStyle',styles{2},'Marker',markers{2},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-1R-0.3.mat')
ha{1}=plot(t,x(:,2),'Color',colors(3,:),'Linewidth',2,'LineStyle',styles{3},'Marker',markers{3},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-0.6R-1.mat')
ha{1}=plot(t,x(:,2),'Color',colors(4,:),'Linewidth',2,'LineStyle',styles{4},'Marker',markers{4},'MarkerIndices',1:80:length(t));%,'r--','g-'
load('Q-0.3R-1.mat')
ha{1}=plot(t,x(:,2),'Color',colors(5,:),'Linewidth',2,'LineStyle',styles{5},'Marker',markers{5},'MarkerIndices',1:80:length(t));%,'r--','g-'
xlim([min(8),max(10)]);
ylim([min(-14*10^(-3)),max(0*10^(-4))]);
set(gca,'FontSize',18);
set(gca,'linewidth',2,'fontsize',ziti)




 