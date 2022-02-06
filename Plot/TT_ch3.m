% f1 = rtccurve([[0 0 0];[4 0 0.35];[5 0.35 0];[9 0.35 0.35];[10 0.70 0];[15 0.70 0]],15);
% %rtcplot(f1,60);
%  f2 = rtccurve([[0 0 0];[5 0 0.35];[7 0.70 0];[12 0.70 0.35];...
%    [14 1.40 0];[15 1.40 0]],15);

%rtcplot(f2,60);
% rtcplot( f1, 'b', f2 ,'m', d, 'r--', 60 ) ;
% rtcplot( f1, 'b', f2 ,'m',  60 ) ;
%  d = rtcminus( f2, f1 ) ;
%   rtcplot( f1, 'b', f2 ,'m', d, 'r-',   60,'LineWidth',2) ;
% legend('Service Curve (Overlapped Gate) ','Service Curve (Non Overlapped Gate) ','time saving' ) ;
% ylabel('Traffic Accumulation');
% xlabel('time');

% plot(x,y1,'s',...       
%     'LineWidth',2,...              % Marker Line Width
%     'MarkerSize',12,...            % Marker Size
%     'MarkerEdgeColor','k',...      % Marker Edge Color
%     'MarkerFaceColor','r'); 


%%

%% Service Curve of TT non preemption mode

figure('Position',[0 0 800 600], 'Color','w')
f1 = rtccurve([[0 0 0];[0.8 0 12.5];[12.4 145 0];[75.7 124 0]],75.7);

rtcplot( f1,[0 500 0 1000],...
    'LineWidth',2,...
    'MarkerSize',12,... 
     'MarkerEdgeColor','k',...
      'MarkerFaceColor','r') ;




xlim([0 550])                % X-Axis Limit 
ylim([0 1000])              % Y-Axis Limit
xticks(0:250:500);     % Increment Limit in the X-Axis
yticks(0:300:1000);         % Increment Limit in the Y-Axis
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
xlab=xlabel('time(\mus)'); % Text Title of the X-Label
xlab.FontSize=18;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';  

%%
% Properties of Y-Label
ylab=ylabel('TT Frame length (bytes)'); % Text Title of the Y-Label
ylab.FontSize=18;                         % Text Front Size of the Y-Label
ylab.FontName=('Times New Roman');        % Text Type of front for Y-Label
ylab.FontWeight='bold';                   % Text Type of front, can be 'normal'
ylab.Color=('k');                         % Text color of the Y-Label
ax.YAxis.LineWidth = 1.5;                 % Width of the Y-Axis Line Bar
ax.YAxis.Color = 'k';    
%
% ylabel('TT Frame length (bytes)');
% xlabel('time(\mus)');