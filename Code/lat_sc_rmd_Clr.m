function r=lat_sc_rmd_Clr (lv,zv,bw,neov,Sv,Sw,Clalphav,ARv,Cl)

% lv distance from cg to vertical tail aerodynamic center 
% Zv Distance from center of pressure of vertical tail to fuselage centerline
% bw Wing span 
% neov efficiency factor of vertical tail 
% Sv  Vertical tail area 
% Sw  wing area 
% ARv Aspect ratio of vertical tail
% Cl referance lift coefficient 


CLalphav= Clalphav*57.3 / ( 1+ ( Clalphav*57.3/(ARv*pi) ) );
Cybtail=-CLalphav*neov*Sv/Sw
r= (Cl/4) - (2*lv*zv*Cybtail/(bw^2)); 