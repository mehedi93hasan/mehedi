% compress-and-forward 03 -- consider the values of r ( compress ratio ) and eta ( the ratio of CBS in one GCL peorid 
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
x1 = ceil( o / T_GCL ) * T_GCL ; 
s = eta * R ;
c1 = rtccurve( [ [0 0 0] ; [ o 0 R ] ] , ...
    [ [0 0 0] ; [ 1-eta 0 R ] ] , x1 , s0 , T_GCL, s ) ;   
rtcplot( c1 , [ 0 5 0 5 ]*T_GCL ) ;
%%
r = 1/3 ;  %when eta = 2/3 ; 3/4 > (eta = 2 / 3 ) > 5/8 > ( 2-eta^-1 = 1/2 ) > 1/3
%%
R = I_CBS / r ;
x0 = mod( o , T_GCL ) * T_GCL ;
s0 = ( T_GCL - mod( o , T_GCL ) ) * R ;
x1 = ceil( o / T_GCL ) * T_GCL ; 
if ( r >= eta )
    s = eta * R ;
    c2 = rtccurve( [ [0 0 0] ; [ o 0 R ] ] , ...
    [ [0 0 0] ; [ 1-eta 0 R ] ] , x1 , s0 , T_GCL, s ) ;   
else
    delta_x2 = ( 1 - eta ) * r / ( 1 - r ) ;
    delta_y2 = delta_x2 * R ;
    s = delta_x2 * R + ( eta - delta_x2 ) * I_CBS ;
    c2 = rtccurve( [ [0 0 0] ; [ o 0 R ] ] , ...
        [ [0 0 0 ] ; [ 1-eta 0 R ] ; [ 1 - eta + delta_x2 delta_y2 I_CBS ] ], ...
        x1 , s0, T_GCL, s ) ;
end
%%
rtcplot( c1, 'b', c2 ,'m',  [ 0 5 0 5 ]*T_GCL ) ;
legend('service\_curve (original) ','service\_curve (compressed) ' ) ;
ylabel('traffic\_accumulation');
xlabel('time');
%
% d = rtcminus( c2, c1 ) ;
% rtcplot( c1, 'b', c2 ,'m', d, 'r--',   [ 0 5 0 5 ]*T_GCL ) ;