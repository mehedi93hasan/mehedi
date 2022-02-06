x = 0.01 : 0.01 : 1 ;
y = x + 1 ./ x ;
figure( 301 ) ;
hold on ;
plot( x, y ) ;
plot( [ 0 ,1 ], [ 2 , 2 ],  'r--' ) ;
hold off ;