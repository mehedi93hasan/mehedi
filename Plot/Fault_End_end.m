
clc;
clear all

ECU_8 = [0 0 0 0 1];
ECU_16 = [1 1.8 2 2.4 3.7];
ECU_24 = [3 4 5 6 7.9];
t = 5:5:25;

plot(t,ECU_8,'^--',...
     'LineWidth',2,...
    'MarkerSize',8,... 
     'MarkerEdgeColor','b',...
      'MarkerFaceColor','r');
hold on
  
  plot(t,ECU_16,'o--',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',8,...            % Marker Size
    'MarkerEdgeColor','b',...      % Marker Edge Color
    'MarkerFaceColor','g');        % Marker face color 

hold on
  
  plot(t,ECU_24,'*--',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',8,...            % Marker Size
    'MarkerEdgeColor','b',...      % Marker Edge Color
    'MarkerFaceColor','g');        % Marker face color 
hold off


xlim([0 27])                % X-Axis Limit 
ylim([0 10])              % Y-Axis Limit
xticks(0:5:25);     % Increment Limit in the X-Axis
yticks(0:2:10);         % Increment Limit in the Y-Axis


% properties of XTickLabel
 ax=gca;
 a = get(gca,'XTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman'; %Front of the XTickLabel
 ax.FontWeight='bold';  % Front type of the XTickLabel
 ax.FontSize=18;         % Front size of the XTickLabel
 ax.FontAngle='normal';  % front type, Can be 'italic'
 ax.TickDir='in';        % line tik , can be 'out';'both'

  %%
% properties of YTickLabel
 ax=gca;
 a = get(gca,'YTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman';%Front of the YTickLabel
 ax.FontWeight='bold';% Front type of the YTickLabel
 ax.FontSize=18;% Front size of the YTickLabel
 ax.FontAngle='normal';% front type, Can be 'italic'
 ax.TickDir='in'; % line tik , can be 'out';'both'

%%
% Properties of X-Label
xlab=xlabel('Number of messages per ECU'); % Text Title of the X-Label
xlab.FontSize=18;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';                  % Color of the X-Axis Line Bar

%%
% Properties of Y-Label
ylab=ylabel('End to end delay (ms)'); % Text Title of the Y-Label
ylab.FontSize=18;                         % Text Front Size of the Y-Label
ylab.FontName=('Times New Roman');        % Text Type of front for Y-Label
ylab.FontWeight='bold';                   % Text Type of front, can be 'normal'
ylab.Color=('k');                         % Text color of the Y-Label
ax.YAxis.LineWidth = 1.5;                 % Width of the Y-Axis Line Bar
ax.YAxis.Color = 'k';     
%%
%%
% properties of the Legend
h=legend('\boldmath $ 8 $ \boldmath $ ECUs $','\boldmath $ 16 $ \boldmath $ ECUs $','\boldmath $ 24 $ \boldmath $ ECUs $'); % Legend name inside the box
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