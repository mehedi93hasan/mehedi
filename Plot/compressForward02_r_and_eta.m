% compress-and-forward 02 -- the amplified ratio
% compress-and-forward 03 -- consider the values of r ( compress ratio ) and eta ( the ratio of CBS in one GCL peorid 
T_GCL = 1 ;
eta = 2/3 ;
L_TT = T_GCL - eta ;
o = T_GCL * 3/4 ;
%
I_CBS = 1 ;
%
R = I_CBS ;
x0 = mod( o , T_GCL ) * T_GCL ;
s0 = ( T_GCL - mod( o , T_GCL ) ) * R ;
x1 = ceil( o / T_GCL ) * T_GCL ; 
s = eta * R ;
c1 = rtccurve( [ [0 0 0] ; [ o 0 R ] ] , ...
    [ [0 0 0] ; [ 1-eta 0 R ] ] , x1 , s0 , T_GCL, s ) ;   
rtcplot( c1 , [ 0 5 0 5 ]*T_GCL ) ;
%
r = 3 / 4 ; 
R = I_CBS / r ;
x0 = mod( o , T_GCL ) * T_GCL ;
s0 = ( T_GCL - mod( o , T_GCL ) ) * R ;
x1 = ceil( o / T_GCL ) * T_GCL ; 
s = eta * R ;
c2 = rtccurve( [ [0 0 0] ; [ o 0 R ] ] , ...
    [ [0 0 0] ; [ 1-eta 0 R ] ] , x1 , s0 , T_GCL, s ) ;   
rtcplot( c1, 'b', c2 ,'m',  [ 0 5 0 5 ]*T_GCL ) ;
%
% d = rtcminus( c2, c1 ) ;
% rtcplot( c1, 'b', c2 ,'m', d, 'r--',   [ 0 5 0 5 ]*T_GCL ) ;