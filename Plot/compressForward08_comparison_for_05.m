% compressForward08_comparison_for_05
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
c1_inv = rtccurve( [ [0*SCALE  o*SCALE 1/R ]  ] , ...
    [ [0*SCALE 0*SCALE 1/R] ] , ...
     s0* SCALE ,      (t0 + L_TT)* SCALE ,      round ( s * SCALE ),   T_GCL * SCALE ) ; 
%%
%%% r = 1/3 ;  %when eta = 2/3 ; 3/4 > (eta = 2 / 3 ) > 5/8 > ( 2-eta^-1 = 1/2 ) > 1/3
% r = [ 3/4 , 5/8 , 1/2 , 1/3 ] ;
% r = [ 3/4 , 2/3 , 5/8 , 1/2 , 1/3 ] ;
r = 0.9 : -0.05 : 0.1 ;
NUM = length( r ) ;
%%
inv_curves = c1_inv ;
delta_inv_curves = rtccurve( [[ 0 0 0 ]] );
for i = 1:NUM
	R = I_CBS / r(i) ;
	x0 = mod( o , T_GCL ) * T_GCL ;
%	s0 = ( T_GCL - mod( o , T_GCL ) ) * R ;
%  the s0 had been computed when in the c1_inv
% APPROXIMATION s0 (compressed) >= s0 (original)     
	t0 = ceil( o/T_GCL ) * T_GCL ;
	%%
	if ( r(i) >= eta )
		s = eta * R ;
	   c2_inv =   rtccurve( [ [0*SCALE  o*SCALE 1/I_CBS ]  ] , ...%approximation
		[ [0*SCALE 0*SCALE 1/R] ] , ...
		 s0* SCALE ,      (t0 + L_TT)* SCALE ,      round ( s * SCALE ),   T_GCL * SCALE ) ;
	else
		delta_x2 = ( 1 - eta ) * r / ( 1 - r ) ;
		delta_y2 = delta_x2 * R ;
		s = delta_x2 * R + ( eta - delta_x2 ) * I_CBS ;
 		c2_inv = rtccurve( [ [0*SCALE  o*SCALE 1/I_CBS ]  ] , ... %approximation
			[ [0*SCALE 0*SCALE 1/R] ; [ delta_y2*SCALE delta_x2*SCALE I_CBS ] ] , ...
			s0* SCALE ,    (t0 + L_TT)* SCALE ,  round ( s * SCALE ), T_GCL * SCALE ) ; 
	end
	%%
	delta_inv = rtcminus( c1_inv, c2_inv ) ;
	%%
	inv_curves = [ inv_curves c2_inv ] ;
	delta_inv_curves = [ delta_inv_curves delta_inv ] ;
end
%%
figure( 311 ) ;
%%
%%%%% rtcplot can't support ¡®Color¡¯ [ 0.x 0.x 0.x ]
% clmp = hsv( 2*NUM) ; % color map 1~NUM for curves , 2*NUM~NUM+1 for delta
clmp = [ 'r' ; 'm' ; 'k' ; 'g' ; 'c' ];
LEN_clmp = length( clmp ) ; 
%%
hold on ;
rtcplot( inv_curves( 1 ) , 'b', [ 0 5 0 5 ]*T_GCL*SCALE ) ;
legend_labels = "r = 1 (ori)";
for i = 2 : NUM+1 
	temp_char1 = clmp( mod( (i-1) , LEN_clmp ) + 1 ) ;
	temp_char2 = [ temp_char1 , '--' ] ;
    temp_char1 = 'y' ; % if the delay curves are fuzzied by curves, let
    % curves printed in yellow
	rtcplot( inv_curves( i ), temp_char1 , ...
			delta_inv_curves( i ) , temp_char2 , ...
		[ 0 5 0 5 ]*T_GCL*SCALE ) ;
    temp_char1 = [ 'r=' , num2str( r( i-1 ) ) ] ;
    temp_char2 = [ 'delta ' , temp_char1 ] ;
    legend_labels = [ legend_labels ; temp_char1 ; temp_char2 ] ;
end
%
x_lb = (0:0.5:5)  ;
xticks( x_lb * SCALE ) ;
xticklabels( x_lb ) ;
y_lb = (0:0.5:5)  ;
yticks( y_lb * SCALE ) ;
yticklabels( y_lb ) ;
xlabel('traffic\_accumulation');
ylabel('time');
legend( legend_labels ) ;
hold off ;
