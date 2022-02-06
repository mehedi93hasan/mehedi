

TT_new = [1.3 4.264 5.344 6.304 1.560 6.416 4.724 5.464 1.688 6.560 1.776 2.168 1.024 6.624 5.504];
TT_luxi = [1.1 4.0 10.1 7.1 1.3 12.2 4.6 7.2 1.4 11.3 1.5 1.9 0.8 8.4 7.3];

t = 1:15;
subplot(211)
plot(t,TT_new,'^',...
     'LineWidth',2,...
    'MarkerSize',10,... 
     'MarkerEdgeColor','b',...
      'MarkerFaceColor','r');
hold on
  
  plot(t,TT_luxi,'o',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',10,...            % Marker Size
    'MarkerEdgeColor','b',...      % Marker Edge Color
    'MarkerFaceColor','g');        % Marker face color 

hold off


xlim([0 17])                % X-Axis Limit 
ylim([0 14])              % Y-Axis Limit
xticks(0:5:15);     % Increment Limit in the X-Axis
yticks(0:4:13);         % Increment Limit in the Y-Axis


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
xlab=xlabel('TT Traffic Flow'); % Text Title of the X-Label
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
h=legend('\boldmath $ Standard $ \boldmath $ Switch $','\boldmath $ TSN $ \boldmath $ Switch $'); % Legend name inside the box
%h = legend('\boldmath$\bar{\delta}$');
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
 h.FontSize = 12;              % Text Frontsize of the legend
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
%%



clc;
clear all
AVB_TSN = 5+[5.04 4.56 5.60 2.00 3.20 1.52 4.48 .96 .88 4.40 2.08 .32 .320 .3 1.12 14.96 .32 3.76 9.28 .64 3.04 .64 3.84 1.44 3.92 1.28 .80 9.92 .32 .72 5.44 4.56 1.28 1.36];
AVB_NP = 13+[50.4 45.6 56.0 20.0 32.0 15.2 44.8 9.6 8.8 44.0 20.8 3.2 32.0 3 11.2 149.6 3.2 37.6 92.8 6.4 30.4 6.4 38.4 14.4 39.2 12.8 8.0 99.2 3.2 7.2 54.4 45.6 12.8 13.6]*.01;
AVB_P = 11+[50.4 45.6 56.0 20.0 32.0 15.2 44.8 9.6 8.8 44.0 20.8 3.2 32.0 3 11.2 149.6 3.2 37.6 92.8 6.4 30.4 6.4 38.4 14.4 39.2 12.8 8.0 99.2 3.2 7.2 54.4 45.6 12.8 13.6]*0.01;
t = 1:34;
subplot(212)
plot(t,AVB_TSN,'^',...
     'LineWidth',2,...
    'MarkerSize',8,... 
     'MarkerEdgeColor','b',...
      'MarkerFaceColor','r');
hold on
  
  plot(t,AVB_NP,'o',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',8,...            % Marker Size
    'MarkerEdgeColor','b',...      % Marker Edge Color
    'MarkerFaceColor','g');        % Marker face color 

hold on
  
  plot(t,AVB_P,'*',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',8,...            % Marker Size
    'MarkerEdgeColor','b',...      % Marker Edge Color
    'MarkerFaceColor','g');        % Marker face color 
hold off


xlim([0 36])                % X-Axis Limit 
ylim([0 26])              % Y-Axis Limit
xticks(0:5:35);     % Increment Limit in the X-Axis
yticks(0:5:26);         % Increment Limit in the Y-Axis


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
xlab=xlabel('AVB Traffic Flow'); % Text Title of the X-Label
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
h=legend('\boldmath $ TSN $ \boldmath $ Switch $','\boldmath $ Nonpreemption $ \boldmath $ SS $','\boldmath $ Preemption $ \boldmath $ SS $'); % Legend name inside the box
%h = legend('\boldmath$\bar{\delta}$');
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
 h.FontSize = 12;              % Text Frontsize of the legend
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


