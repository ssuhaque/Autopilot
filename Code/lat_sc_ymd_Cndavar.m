function r=lat_sc_ymd_Cndavar(lv,Sv,Sw,bw,neuv,taw,Clalphav,ARv)

% Vv Vertical tail volume ratio 
% neov efficiency factor of vertical tail 
% taw flap effectiveness factor 
% ARv Aspect ratio of vertical tail
% lv distance from cg to vertical tail aerodynamic center 
% Sv  Vertical tail area 
% Sw  wing area 
% bw Wing span 
Vv=lv*Sv/(Sw*bw);

CLalphav= Clalphav*57.3 / ( 1+ ( Clalphav*57.3/(ARv*pi) ) );
r=-Vv*neuv*taw*CLalphav;
