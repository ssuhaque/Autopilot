function r=lat_sc_ydf_Cyr (lv,bw,neov,Sv,Sw,Clalphav,ARv)

% lv distance from cg to vertical tail aerodynamic center 
% bw Wing span 
% neov efficiency factor of vertical tail 
% Sw  wing area 
% Sv  Vertical tail area 
% ARv Aspect ratio of vertical tail

CLalphav= Clalphav*57.3 / ( 1+ ( Clalphav*57.3/(ARv*pi) ) );
Cybtail=-CLalphav*neov*Sv/Sw

r=-2*lv*Cybtail/bw;
