function r=lat_sc_yfd_Cybeta(Sv,Sw,Clalphav,ARv,wsweep,Zw,ARw)

% Sw  wing area 
% Sv  Vertical tail area 
% ARv Aspect ratio of vertical tail
% wsweep sweep of wing quarter chord 
% Zw Distance from wing root quarter chord point to fuselage centerline 
% ARw Aspect ratio of wing 


CLalphav= Clalphav*57.3 / ( 1+ ( Clalphav*57.3/(ARv*pi) ) );

temp= 0.724 + (  (3.06*Sv)/(Sw*(1+cos(wsweep/4))) ) + (0.4*Zw/d) +  0.009*ARw;
r=-Sv*CLalphav*temp/Sw;

