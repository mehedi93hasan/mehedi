
c = categorical({'ES_8 to ES_1','ES_8 to ES_2','ES_8 to ES_3','ES_8 to ES_4','ES_8 to ES_5','ES_8 to ES_6','ES_8 to ES_7'});


 TT_delay = [290 270 190;300 280 200;310 280 210;280 260 180;302 282 202;295 275 195;308 285 205] ;
 
  hb = bar(c, TT_delay,'LineWidth',2)


hb(1).FaceColor = 'r';
hb(2).FaceColor = 'g';
hb(3).FaceColor = 'c';




ylim([0 410])                % X-Axis Limit 
yticks(0:100:400);         % Increment Limit in the Y-Axis

% properties of XTickLabel
 ax=gca;
 a = get(gca,'XTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman'; %Front of the XTickLabel
 ax.FontWeight='bold';  % Front type of the XTickLabel
 ax.FontSize=14;         % Front size of the XTickLabel
 ax.FontAngle='normal';  % front type, Can be 'italic'
 ax.TickDir='in';        % line tik , can be 'out';'both'

  %%
% properties of YTickLabel
 ax=gca;
 a = get(gca,'YTickLabel');
 ax.Color = 'w'; % Backgroud color 
 ax.FontName = 'Times New Roman';%Front of the YTickLabel
 ax.FontWeight='bold';% Front type of the YTickLabel
 ax.FontSize=14;% Front size of the YTickLabel
 ax.FontAngle='normal';% front type, Can be 'italic'
 ax.TickDir='in'; % line tik , can be 'out';'both'

%%
% Properties of X-Label
xlab=xlabel('Source to Destination'); % Text Title of the X-Label
xlab.FontSize=14;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';                  % Color of the X-Axis Line Bar

%%
% Properties of Y-Label
ylab=ylabel('End to End Delay(\mus)'); % Text Title of the Y-Label
ylab.FontSize=14;                         % Text Front Size of the Y-Label
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
h.FontSize = 10;              % Text Frontsize of the legend
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


t = title('\boldmath $ End $ \boldmath $ to $ \boldmath $ End $ \boldmath $ delay $ \boldmath $ of $ \boldmath $ TT $ \boldmath $ for $ \boldmath $ CBS $')
   
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
set(t, 'Interpreter', 'latex','FontName','Time New Roman');










