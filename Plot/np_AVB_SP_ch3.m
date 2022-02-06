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
f1 = rtccurve([[0 0 0];[2.05 0 20];[6 79 0]],15);
f2 = rtccurve([[0 0 0];[5.05 0 10];[12 70 0]],20);
f3 = rtccurve([[0 100 2]]);
f4 = rtccurve([[0 80 1.5]]);

rtcplot( f1,'m',f2,'c',f3,'r--',f4,'b--',[0 110 0 500], ...
    'LineWidth',2,...
    'MarkerSize',12,... 
     'MarkerEdgeColor','k',...
      'MarkerFaceColor','r') ;


hold on;
d1 = rtcploth(f3,f1);
hold on;
  d2 = rtcploth(f4,f2);
 hold off;


 xlim([0 110])                % X-Axis Limit 
 ylim([0 600])              % Y-Axis Limit
 xticks(0:50:100);     % Increment Limit in the X-Axis
 yticks(0:250:500);         % Increment Limit in the Y-Axis
%%
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
xlab=xlabel('time(ms)'); % Text Title of the X-Label
xlab.FontSize=12;                      % Text Front Size of the X-Label
xlab.FontName=('Times New Roman');     % Text Type of front for X-Label
xlab.FontWeight='bold';                % Text Type of front, can be 'normal'
xlab.Color=('k');                      % Text color of the X-Label
ax.XAxis.LineWidth = 1.5;                % Width of the X-Axis Line Bar
ax.XAxis.Color = 'k';  

%%
% Properties of Y-Label
ylab=ylabel('AVB_x Frame length (Kb)'); % Text Title of the Y-Label
ylab.FontSize=12;                         % Text Front Size of the Y-Label
ylab.FontName=('Times New Roman');        % Text Type of front for Y-Label
ylab.FontWeight='bold';                   % Text Type of front, can be 'normal'
ylab.Color=('k');                         % Text color of the Y-Label
ax.YAxis.LineWidth = 1.5;                 % Width of the Y-Axis Line Bar
ax.YAxis.Color = 'k';    
%
% ylabel('TT Frame length (bytes)');
% xlabel('time(\mus)');

%%
h=legend('\boldmath $ Service $ \boldmath $Curve$ \boldmath $of$ \boldmath $AVB_A$ ','\boldmath $ Service $ \boldmath $Curve$ \boldmath $of$ \boldmath $AVB_B$',...
    '\boldmath $ Arrival $ \boldmath $Curve$ \boldmath $of$ \boldmath $AVB_A$ ',...
    '\boldmath $ Arrival $ \boldmath $Curve$ \boldmath $of$ \boldmath $AVB_B$','   \boldmath $ Horizontal$ \boldmath $Delay $'); % Legend name inside the box



t = title('\boldmath $ Non $ \boldmath $ Preemption $ \boldmath $ mode $ \boldmath $ Service $ \boldmath $ Curve $ \boldmath $ of $ \boldmath $ AVB_x $')
set(h, 'Interpreter', 'latex','FontName','Time New Roman');
set(t, 'Interpreter', 'latex','FontName','Time New Roman');

h.Location='northwest';
















