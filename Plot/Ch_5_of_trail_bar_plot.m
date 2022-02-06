
c = categorical({'ES_8 to ES_1','ES_8 to ES_2','ES_8 to ES_3','ES_8 to ES_4','ES_8 to ES_5','ES_8 to ES_6','ES_8 to ES_7'});


TT_delay = [5.5110 6.115 12.00;5.5110 6.115 12.10;5.5110 6.115 12.20;5.510 6.115 12;5.5110 6.115 12.2;5.5110 6.115 14.5;5.5110 6.115 13.5]; 
subplot(221) 
hb = bar(c, TT_delay,'LineWidth',2)


hb(1).FaceColor = 'y';
hb(2).FaceColor = 'k';
hb(3).FaceColor = 'b';




ylim([0 18])                % X-Axis Limit 
yticks(0:5:18);         % Increment Limit in the Y-Axis

% properties of XTickLabel
 ax=gca;
 a = get(gca,'XTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman'; %Front of the XTickLabel
 ax.FontWeight='bold';  % Front type of the XTickLabel
 ax.FontSize=10;         % Front size of the XTickLabel
 ax.FontAngle='normal';  % front type, Can be 'italic'
 ax.TickDir='in';        % line tik , can be 'out';'both'

  %%
% properties of YTickLabel
 ax=gca;
 a = get(gca,'YTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman';%Front of the YTickLabel
 ax.FontWeight='bold';% Front type of the YTickLabel
 ax.FontSize=10;% Front size of the YTickLabel
 ax.FontAngle='normal';% front type, Can be 'italic'
 ax.TickDir='in'; % line tik , can be 'out';'both'

%%
% Properties of X-Label
xlab=xlabel('Source to Destination'); % Text Title of the X-Label
xlab.FontSize=10;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';                  % Color of the X-Axis Line Bar

%%
% Properties of Y-Label
ylab=ylabel('End to End Delay(ms)'); % Text Title of the Y-Label
ylab.FontSize=10;                         % Text Front Size of the Y-Label
ylab.FontName=('Times New Roman');        % Text Type of front for Y-Label
ylab.FontWeight='bold';                   % Text Type of front, can be 'normal'
ylab.Color=('k');                         % Text color of the Y-Label
ax.YAxis.LineWidth = 1.5;                 % Width of the Y-Axis Line Bar
ax.YAxis.Color = 'k';     

%%
% properties of the Legend
h=legend('\boldmath $ Nonpreemption $ \boldmath $ Mode $\boldmath $ SS $','\boldmath $ preemption $ \boldmath $ Mode $\boldmath $ SS $','\boldmath $ TSN $ \boldmath $ Switch $'); % Legend name inside the box
%h = legend('\boldmath$\bar{\delta}$');
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
h.FontSize = 8;              % Text Frontsize of the legend
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


t = title('\boldmath $ a) $\boldmath $ End $ \boldmath $ to $ \boldmath $ End $ \boldmath $ delay $ \boldmath $ of $ \boldmath $ TT $ \boldmath $ for $ \boldmath $ TAS+CBS $')
   
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
set(t, 'Interpreter', 'latex','FontName','Time New Roman');
%%

c = categorical({'ES_8 to ES_1','ES_8 to ES_2','ES_8 to ES_3','ES_8 to ES_4','ES_8 to ES_5','ES_8 to ES_6','ES_8 to ES_7'});


 TT_delay = [5.5110 6.115 12.00;5.5110 6.115 12.10;5.5110 6.115 12.20;5.510 6.115 12;5.5110 6.115 12.2;5.5110 6.115 14.5;5.5110 6.115 13.5]; 
subplot(222)  
hb = bar(c, TT_delay,'LineWidth',2)


hb(1).FaceColor = 'r';
hb(2).FaceColor = 'g';
hb(3).FaceColor = 'c';




ylim([0 18])                % X-Axis Limit 
yticks(0:5:18);         % Increment Limit in the Y-Axis

% properties of XTickLabel
 ax=gca;
 a = get(gca,'XTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman'; %Front of the XTickLabel
 ax.FontWeight='bold';  % Front type of the XTickLabel
 ax.FontSize=10;         % Front size of the XTickLabel
 ax.FontAngle='normal';  % front type, Can be 'italic'
 ax.TickDir='in';        % line tik , can be 'out';'both'

  %%
% properties of YTickLabel
 ax=gca;
 a = get(gca,'YTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman';%Front of the YTickLabel
 ax.FontWeight='bold';% Front type of the YTickLabel
 ax.FontSize=10;% Front size of the YTickLabel
 ax.FontAngle='normal';% front type, Can be 'italic'
 ax.TickDir='in'; % line tik , can be 'out';'both'

%%
% Properties of X-Label
xlab=xlabel('Source to Destination'); % Text Title of the X-Label
xlab.FontSize=10;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';                  % Color of the X-Axis Line Bar

%%
% Properties of Y-Label
ylab=ylabel('End to End Delay(ms)'); % Text Title of the Y-Label
ylab.FontSize=10;                         % Text Front Size of the Y-Label
ylab.FontName=('Times New Roman');        % Text Type of front for Y-Label
ylab.FontWeight='bold';                   % Text Type of front, can be 'normal'
ylab.Color=('k');                         % Text color of the Y-Label
ax.YAxis.LineWidth = 1.5;                 % Width of the Y-Axis Line Bar
ax.YAxis.Color = 'k';     
%%
%%
% properties of the Legend
h=legend('\boldmath $ Nonpreemption $ \boldmath $ Mode $\boldmath $ SS $','\boldmath $ preemption $ \boldmath $ Mode $\boldmath $ SS $','\boldmath $ TSN $ \boldmath $ Switch $'); % Legend name inside the box
%h = legend('\boldmath$\bar{\delta}$');
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
h.FontSize = 8;              % Text Frontsize of the legend
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


t = title('\boldmath $ b) $\boldmath $ End $ \boldmath $ to $ \boldmath $ End $ \boldmath $ delay $ \boldmath $ of $ \boldmath $ TT $ \boldmath $ for $ \boldmath $ CBS $')
   
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
set(t, 'Interpreter', 'latex','FontName','Time New Roman');
%%

c = categorical({'ES_1 to ES_5','ES_4 to ES_5','ES_5 to ES_3','ES_3 to ES_6'});


 %AVB_delay_A = [550 480 400;560 490 410;540 470 390; 570 500 420] ;
AVB_delay_A = [12.560 13.555 14.550 ;12.550 13.555 14.560 ;12.530 13.535 14.540 ; 12.560 13.565 14.570 ];  
 subplot(223) 
 hb = bar(c, AVB_delay_A,'LineWidth',2)
 

hb(1).FaceColor = 'b';
hb(2).FaceColor = 'g';
hb(3).FaceColor = 'r';




ylim([0 18])                % X-Axis Limit 
yticks(0:5:18);         % Increment Limit in the Y-Axis

% properties of XTickLabel
 ax=gca;
 a = get(gca,'XTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman'; %Front of the XTickLabel
 ax.FontWeight='bold';  % Front type of the XTickLabel
 ax.FontSize=10;         % Front size of the XTickLabel
 ax.FontAngle='normal';  % front type, Can be 'italic'
 ax.TickDir='in';        % line tik , can be 'out';'both'

  %%
% properties of YTickLabel
 ax=gca;
 a = get(gca,'YTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman';%Front of the YTickLabel
 ax.FontWeight='bold';% Front type of the YTickLabel
 ax.FontSize=10;% Front size of the YTickLabel
 ax.FontAngle='normal';% front type, Can be 'italic'
 ax.TickDir='in'; % line tik , can be 'out';'both'

%%
% Properties of X-Label
xlab=xlabel('Source to Destination'); % Text Title of the X-Label
xlab.FontSize=10;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';                  % Color of the X-Axis Line Bar

%%
% Properties of Y-Label
ylab=ylabel('End to End Delay(ms)'); % Text Title of the Y-Label
ylab.FontSize=10;                         % Text Front Size of the Y-Label
ylab.FontName=('Times New Roman');        % Text Type of front for Y-Label
ylab.FontWeight='bold';                   % Text Type of front, can be 'normal'
ylab.Color=('k');                         % Text color of the Y-Label
ax.YAxis.LineWidth = 1.5;                 % Width of the Y-Axis Line Bar
ax.YAxis.Color = 'k';     
%%
%%
% properties of the Legend
h=legend('\boldmath $ Nonpreemption $ \boldmath $ Mode $\boldmath $ SS $','\boldmath $ preemption $ \boldmath $ Mode $\boldmath $ SS $','\boldmath $ TSN $ \boldmath $ Switch $'); % Legend name inside the box
%h = legend('\boldmath$\bar{\delta}$');
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
h.FontSize = 8;              % Text Frontsize of the legend
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


t = title('\boldmath $ c) $\boldmath $ End $ \boldmath $ to $ \boldmath $ End $ \boldmath $ delay $ \boldmath $ of $ \boldmath $ AVB_x $ \boldmath $ for $ \boldmath $ TAS+CBS $')
   
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
set(t, 'Interpreter', 'latex','FontName','Time New Roman');
%%

c = categorical({'ES_1 to ES_5','ES_4 to ES_5','ES_5 to ES_3','ES_3 to ES_6'});

AVB_delay_A = [12.560 13.555 14.550 ;12.550 13.555 14.560 ;12.530 13.535 14.540 ; 12.560 13.565 14.570 ]; 
 %AVB_delay_A = [540 470 390;550 480 400;550 460 380; 560 490 410] ;
 subplot(224) 
 hb = bar(c, AVB_delay_A,'LineWidth',2)

hb(1).FaceColor = 'c';
hb(2).FaceColor = 'm';
hb(3).FaceColor = 'k';




ylim([0 18])                % X-Axis Limit 
yticks(0:5:18);         % Increment Limit in the Y-Axis

% properties of XTickLabel
 ax=gca;
 a = get(gca,'XTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman'; %Front of the XTickLabel
 ax.FontWeight='bold';  % Front type of the XTickLabel
 ax.FontSize=10;         % Front size of the XTickLabel
 ax.FontAngle='normal';  % front type, Can be 'italic'
 ax.TickDir='in';        % line tik , can be 'out';'both'

  %%
% properties of YTickLabel
 ax=gca;
 a = get(gca,'YTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman';%Front of the YTickLabel
 ax.FontWeight='bold';% Front type of the YTickLabel
 ax.FontSize=10;% Front size of the YTickLabel
 ax.FontAngle='normal';% front type, Can be 'italic'
 ax.TickDir='in'; % line tik , can be 'out';'both'

%%
% Properties of X-Label
xlab=xlabel('Source to Destination'); % Text Title of the X-Label
xlab.FontSize=10;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';                  % Color of the X-Axis Line Bar

%%
% Properties of Y-Label
ylab=ylabel('End to End Delay(ms)'); % Text Title of the Y-Label
ylab.FontSize=10;                         % Text Front Size of the Y-Label
ylab.FontName=('Times New Roman');        % Text Type of front for Y-Label
ylab.FontWeight='bold';                   % Text Type of front, can be 'normal'
ylab.Color=('k');                         % Text color of the Y-Label
ax.YAxis.LineWidth = 1.5;                 % Width of the Y-Axis Line Bar
ax.YAxis.Color = 'k';     
%%
%%
% properties of the Legend
h=legend('\boldmath $ Nonpreemption $ \boldmath $ Mode $\boldmath $ SS $','\boldmath $ preemption $ \boldmath $ Mode $\boldmath $ SS $','\boldmath $ TSN $ \boldmath $ Switch $'); % Legend name inside the box
%h = legend('\boldmath$\bar{\delta}$');
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
h.FontSize = 8;              % Text Frontsize of the legend
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


t = title('\boldmath $ d) $\boldmath $ End $ \boldmath $ to $ \boldmath $ End $ \boldmath $ delay $ \boldmath $ of $ \boldmath $ AVB_x $ \boldmath $ for $ \boldmath $ CBS $')
   
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
set(t, 'Interpreter', 'latex','FontName','Time New Roman');









