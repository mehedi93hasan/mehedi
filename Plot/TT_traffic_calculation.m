TT_new = [13 42.64 103.44 73.04 15.60 124.16 47.24 74.64 16.88 115.60 17.76 21.68 10.24 86.24 75.04];
TT_luxi = [11 40 101 71 13 122 46 72 14 113 15 19 8 84 73];

t = 1:15;

plot(t,TT_new,'^',...
     'LineWidth',2,...
    'MarkerSize',12,... 
     'MarkerEdgeColor','b',...
      'MarkerFaceColor','r');
hold on
  
  plot(t,TT_luxi,'o',...       
    'LineWidth',2,...              % Marker Line Width
    'MarkerSize',12,...            % Marker Size
    'MarkerEdgeColor','b',...      % Marker Edge Color
    'MarkerFaceColor','g');        % Marker face color 
hold off


xlim([0 17])                % X-Axis Limit 
ylim([0 140])              % Y-Axis Limit
xticks(0:5:15);     % Increment Limit in the X-Axis
yticks(0:40:120);         % Increment Limit in the Y-Axis


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
xlab=xlabel('TT Traffic Flow'); % Text Title of the X-Label
xlab.FontSize=18;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';                  % Color of the X-Axis Line Bar

%%
% Properties of Y-Label
ylab=ylabel('WCDs(\mus)'); % Text Title of the Y-Label
ylab.FontSize=18;                         % Text Front Size of the Y-Label
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