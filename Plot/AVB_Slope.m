clc;
clear all;


AVB_Idle_A = 10:5:70;
AVB_Idle_B = 10:5:70;

AVB_delay_A = [800 600 500 450 410 375 338 330 300 290 280 270 260]*0.01 ;


AVB_delay_B = [260 270 280 290 300 330 342 375 410 450 500 600 800]*0.01;
% 

plot(AVB_Idle_A,AVB_delay_A,'*',...
     'LineWidth',2,...
    'MarkerSize',8,... 
     'MarkerEdgeColor','b',...
      'MarkerFaceColor','r');
hold on
  
  plot(AVB_Idle_B,AVB_delay_B,'o',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',8,...            % Marker Size
    'MarkerEdgeColor','b',...      % Marker Edge Color
    'MarkerFaceColor','g');        % Marker face color 


%plot(AVB_Idle_A,AVB_delay_A,'*',AVB_Idle_B,AVB_delay_B,'^')
hold off


xlim([10 75])                % X-Axis Limit 
ylim([2.00 9.00])              % Y-Axis Limit
xticks(10:20:70);     % Increment Limit in the X-Axis
yticks(2.00:3.00:9.00);         % Increment Limit in the Y-Axis


% properties of XTickLabel
 ax=gca;
 a = get(gca,'XTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman'; %Front of the XTickLabel
 ax.FontWeight='bold';  % Front type of the XTickLabel
 ax.FontSize=12;         % Front size of the XTickLabel
 ax.FontAngle='normal';  % front type, Can be 'italic'
 ax.TickDir='in';        % line tik , can be 'out';'both'

  %%
% properties of YTickLabel
 ax=gca;
 a = get(gca,'YTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman';%Front of the YTickLabel
 ax.FontWeight='bold';% Front type of the YTickLabel
 ax.FontSize=12;% Front size of the YTickLabel
 ax.FontAngle='normal';% front type, Can be 'italic'
 ax.TickDir='in'; % line tik , can be 'out';'both'

%%
% Properties of X-Label
xlab=xlabel('Idle Slope/Mbps'); % Text Title of the X-Label
xlab.FontSize=12;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';                  % Color of the X-Axis Line Bar

%%
% Properties of Y-Label
ylab=ylabel('WCDs(ms)'); % Text Title of the Y-Label
ylab.FontSize=12;                         % Text Front Size of the Y-Label
ylab.FontName=('Times New Roman');        % Text Type of front for Y-Label
ylab.FontWeight='bold';                   % Text Type of front, can be 'normal'
ylab.Color=('k');                         % Text color of the Y-Label
ax.YAxis.LineWidth = 1.5;                 % Width of the Y-Axis Line Bar
ax.YAxis.Color = 'k';     
%%
%%
% properties of the Legend
h=legend('\boldmath $ Class $ \boldmath $ A $','\boldmath $ Class $ \boldmath $ B $'); % Legend name inside the box
%h = legend('\boldmath$\bar{\delta}$');
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
% h.FontSize = 18;              % Text Frontsize of the legend
 %h.FontName='Time New Roman'; % Text Frontname of the legend
% h.TextColor='k';              % Text color in the legend
% h.Location='East';    % Position of the Legend
% h.FontWeight='bold';          % Text Legend front
% h.EdgeColor='k';              % Legend box color
% h.LineWidth =1.5;             % Width of the box outline
% h.Orientation='vertical';     % Oriention of the legend 'horizontal'
% h.Box='on'; % Legend box 'boxoff'
% lgd.Title.FontSize = 14; % Text Front size of the legend title
% lgd.Title.String='My Legend Title'; % Title of the Legend
% lgd.Numcilumns=2;  % Number of coloumns for the legend