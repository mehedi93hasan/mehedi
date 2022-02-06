


clc;
clear all;
    
  
 %%   
tao_0 = 0.37;
ome = 0.270;
n = 0.152;
dh = 1.80;
we = 116;

%%
   t = 1: 0.1:10;  % X - Axis
   
   part_2 = (t+ome)/(tao_0+ome);
   
   RC = dh*sqrt(n*we);
   
   t_x = (t-tao_0).*(tao_0+2*ome);
   
   
    H = (dh/2)*(-1+part_2.*exp(-t_x/RC)); % Y - Axis
    
    
    plot(t,H)
    
% xlabel('Time \mus ','FontWeight','bold')
% hold on
% xlabel('Time \mus ','FontWeight','bold')
 %ylabel('Amplitude')
% text( 0.65, 2, '\bf\fontsize{20}\alpha');
% text( 0.80, 2, '\bf\fontsize{15}t');

% str = ' $\mu\bf text $ ';
% 
% 
% xlabel(str,'Interpreter','latex')

% xticks([0 pi 2*pi 3*pi])
%   ax = gca;
%  ax.TickLabelInterpreter = 'latex';
% xticklabels({'$-\pi$','0', '$\pi$','$2\pi$','$3\pi$'});

% xlim([-3 40])             % X-Axis Limit 
% ylim([100 400])            % Y-Axis Limit
% xticks([-5 0 10 20 30]);% Increment Limit in the X-Axis
% 
% ax = gca;
% ax.TickLabelInterpreter = 'latex';
% xticklabels({'$-5$','$0$', '$10$','$20$','$30$'});


yticks(100:100:400);        % Increment Limit in the Y-Axis

%  ax = gca;
%  %ax.FontSize = 20;
%  %ax.XLabel= [5,5]
% 
% xlabel('\alpha')


% xlabel('$time(\mathbf{\mu}s)$','Interpreter','latex','fontsize',30)
% 
% figure()
%  plot(t,H)
%  xlabel('$\bf{\tau}$','Interpreter','latex','fontsize',30)
%  xlabel('$\tau$','fontsize',30)
%  
 
 plot(t,H,'--^',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])

plot(1:10)
h = legend('(Cbar_j) [mol/m^3]')
set(h,'Interpreter','latex','fontsize',24)