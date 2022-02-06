clc
close all;
clear all;




x = [2,4,6,8,10];
y1 = [2.65,4.00,4.31,4.29,4.15];
y2 = [2.62,3.95,4.28,4.18,4.02];
y3 = [2.66,4.04,4.30,4.22,4.03];
y4 = [2.63,4.08,4.30,4.22,4.10];
y5 = [2.64,4.01,4.30,4.22,4.07];
%%
% Size of the output  Figure
figure('Position',[0 0 800 600], 'Color','w')
%%
plot(x,y1,'s',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',12,...            % Marker Size
    'MarkerEdgeColor','k',...      % Marker Edge Color
    'MarkerFaceColor','r');        % Marker face color 


hold on
plot(x,y2,'o',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',12,...            % Marker Size
    'MarkerEdgeColor','k',...      % Marker Edge Color
    'MarkerFaceColor','y');        % Marker face color 

plot(x,y3,'^',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',12,...            % Marker Size
    'MarkerEdgeColor','k',...      % Marker Edge Color
    'MarkerFaceColor','g');        % Marker face color

plot(x,y4,'v',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',12,...            % Marker Size
    'MarkerEdgeColor','k',...      % Marker Edge Color
    'MarkerFaceColor','b');        % Marker face color

plot(x,y5,'d',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',12,...            % Marker Size
    'MarkerEdgeColor','k',...      % Marker Edge Color
    'MarkerFaceColor','m');        % Marker face color


hold off

%%
xlim([0 11])                % X-Axis Limit 
ylim([2.5 4.5])              % Y-Axis Limit
xticks(0:2:10);     % Increment Limit in the X-Axis
yticks(2.5:0.50:4.50);         % Increment Limit in the Y-Axis
%%
%%
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
xlab=xlabel('t^*'); % Text Title of the X-Label
xlab.FontSize=18;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';                  % Color of the X-Axis Line Bar

%%
% Properties of Y-Label
ylab=ylabel('\delta'); % Text Title of the Y-Label
ylab.FontSize=18;                         % Text Front Size of the Y-Label
ylab.FontName=('Times New Roman');        % Text Type of front for Y-Label
ylab.FontWeight='bold';                   % Text Type of front, can be 'normal'
ylab.Color=('k');                         % Text color of the Y-Label
ax.YAxis.LineWidth = 1.5;                 % Width of the Y-Axis Line Bar
ax.YAxis.Color = 'k';     
%%
%%
% properties of the Legend
h=legend('\boldmath $ T_w = 333K $','\boldmath $ T_w = 343K $','\boldmath $ T_w = 353K $',...
    '\boldmath $ T_w = 363K $','   \boldmath $$\overline{\delta}$$'); % Legend name inside the box
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

%%
% Save Figure 
print ('D30-U8-SF','-dpng','-r600')


