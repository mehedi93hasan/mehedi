% compress-and-forward 04 
SCALE = 1000 ;
T_GCL = 1 ;
eta = 2/3 ;
L_TT = T_GCL - eta ;
o = T_GCL * 3/4 ;
%%
I_CBS = 1 ;
%%
R = I_CBS ;
x0 = mod( o , T_GCL ) * T_GCL ;
s0 = ( T_GCL - mod( o , T_GCL ) ) * R ;
t0 = ceil( o/T_GCL ) * T_GCL ;
s = eta * R ;
% c1_inv = rtccurve( [ [0  o 1/R ]  ] , ...
%     [ [0 0 1/R] ] , ...
%      s0 ,      a0 + L_TT ,      s,      T_GCL ) ; 
%%%   start_pos_h  start_pos_v  PERIOD     PHASE
%%%   note, that periods need to be integer
c1_inv = rtccurve( [ [0*SCALE  o*SCALE 1/R ]  ] , ...
    [ [0*SCALE 0*SCALE 1/R] ] , ...
     s0* SCALE ,      (t0 + L_TT)* SCALE ,      round ( s * SCALE ),   T_GCL * SCALE ) ; 
% rtcplot( c1_inv ,   [ 0 5 0 5 ]*T_GCL*SCALE ) ;
%%
r = 1/3 ;  %when eta = 2/3 ; 3/4 > (eta = 2 / 3 ) > 5/8 > ( 2-eta^-1 = 1/2 ) > 1/3
%%
R = I_CBS / r ;
x0 = mod( o , T_GCL ) * T_GCL ;
s0 = ( T_GCL - mod( o , T_GCL ) ) * R ;
t0 = ceil( o/T_GCL ) * T_GCL ;
if ( r >= eta )
    s = eta * R ;
   c2_inv =   rtccurve( [ [0*SCALE  o*SCALE 1/R ]  ] , ...
    [ [0*SCALE 0*SCALE 1/R] ] , ...
     s0* SCALE ,      (t0 + L_TT)* SCALE ,      round ( s * SCALE ),   T_GCL * SCALE ) ;
else
    delta_x2 = ( 1 - eta ) * r / ( 1 - r ) ;
    delta_y2 = delta_x2 * R ;
    s = delta_x2 * R + ( eta - delta_x2 ) * I_CBS ;
    c2_inv = rtccurve( [ [0*SCALE  o*SCALE 1/R ]  ] , ...
        [ [0*SCALE 0*SCALE 1/R] ; [ delta_y2*SCALE delta_x2*SCALE I_CBS ] ] , ...
        s0* SCALE ,    (t0 + L_TT)* SCALE ,  round ( s * SCALE ), T_GCL * SCALE ) ;
end
%%
delta_inv = rtcminus( c1_inv, c2_inv ) ;
%%
rtcplot( c1_inv, 'b', c2_inv ,'m', delta_inv, 'r--' , [ 0 5 0 5 ]*T_GCL*SCALE ) ;
x_lb = (0:0.5:5)  ;
xticks( x_lb * SCALE ) ;
xticklabels( x_lb ) ;
y_lb = (0:0.5:5)  ;
yticks( y_lb * SCALE ) ;
yticklabels( y_lb ) ;
legend('time\_cost (original) ','time\_cost (compressed) ', 'time\_saving' ) ;
xlabel('traffic\_accumulation');
ylabel('time');
