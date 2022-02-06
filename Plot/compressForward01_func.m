LARGE = 20 ;
x = -0.5 : 0.05 : 1.5 ;
len = length( x ) ;
% y = zeros( 1 , len ) ;
% y( 1 ) = 1 / ( 1 - x(1) ) - 1 ;
% y( end ) = 1 / ( 1 - x(end) ) - 1 ;
% for i = 2 : len-1
%     if 1 - x( i ) == 0
%         if y( i-1 ) >  0
%             y ( i ) = y( i-1 ) + LARGE ;
%         else
%             y ( i ) = -LARGE ;
%         end
%     end
%     y ( i ) =  1 / ( 1 - x(i) ) - 1 ;
% end
y = 1 ./ ( 1 - x ) - 1 ;
temp_i = find ( y == Inf ) ;
y( temp_i ) = 0 ;
y( temp_i ) = max( y ) + LARGE ;
temp_i = find( y == -Inf ) ;
y( temp_i ) = 0 ;
y( temp_i ) = min( y ) - LARGE ;
figure ( 101 ) ;
hold on ;
plot(x , y, ':' );
plot( [x(1), x(end) ], [0 , 0], 'k' ) ;
plot( [0 , 0 ] , [max(y), min(y) ], 'k' );
k1 = find( x==0, 1 );
k2 = find( x==1, 1 );
plot( x( k1 : k2 ) , y( k1 : k2 ), 'r' ); 
title( 'The function, y( x ) = 1 / ( 1 - x ) - 1 ' ) ;
hold off ;