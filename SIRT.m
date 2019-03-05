clear;
dt = 0.02;
N = ( 10 - 0 ) / dt;
a = 0.01;
b = 0.01;
c = 0.005
S(1) = 100;
I(1) = 2;
R(1) = 0;
T(1) = 18;
t(1) = 0;

 for n =1:N
     R( n + 1 ) =  R( n ) + dt * ( a * I( n )  + c * T ( n ) );
     I( n + 1 ) = I( n ) + dt * ( -a * I( n ) + b * I( n ) * S( n ) + b * I ( n ) * T ( n ) );
     S( n + 1 ) = S( n ) + dt * ( -b * I( n ) * S( n ) - b * I ( n ) * T ( n ) );
     T( n + 1 ) = T ( n ) + dt * ( -b * I ( n ) * T ( n ) + c );
     t( n + 1 ) = t( n ) + dt;
 end
 subplot(1,2,2)
 plot(S, I);
 xlabel('Susceptable');
 ylabel('Infected');
 title('Phase Portrait');
 subplot(1,2,1);
 plot(t, S, 'r');
 hold on;
 plot(t, I, 'b');
 hold on;
 plot(t, R, 'g');
 hold on;
 plot(t, T, 'y');
 legend('Susceptible', 'Infected', 'Removed', 'Tourists');
 xlabel('Time');
 ylabel('Population');
 title('SIRT Disease Model');
 hold off;