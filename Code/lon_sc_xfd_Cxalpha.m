function r=lon_sc_xfd_Cxalpha(Cl,ARw,e,Clalphaw)
% alpha angle of attack
% Cl referance lift coefficient (input)
% e Oswald's Span efficiency factor (input)
% ARw wing aspect ratio (input)
% Clalphaw wing airfoil characteristics (unit 1/deg) ( see page 57)
% CLalphaw wing lift curve slope (unit 1/rad) (see page 57)
% Clxalpha change in Clx due change in alpha ( to be calculated here 'r')

CLalphaw= Clalphaw*57.3 / ( 1+ ( Clalphaw*57.3/(ARw*pi) ) );

r=Cl-(    (2*Cl*CLalphaw)/(pi*e*ARw)   );
