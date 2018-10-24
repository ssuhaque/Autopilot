function r=lon_sc_zfd_Czalpha(Cd,ARw,Clalphaw)

% alpha angle of attack
% Cd referance drag coefficient (input)
% ARw wing aspect ratio (input)
% Clalphaw wing airfoil characteristics (unit 1/deg) ( see page 57)
% CLalphaw wing lift curve slope (unit 1/rad) (see page 57)
% Clzalpha change in Clz due change in alpha ( to be calculated here 'r')

CLalphaw= Clalphaw*57.3 / ( 1+ ( Clalphaw*57.3/(ARw*pi) ) );


r=-CLalphaw-Cd;
