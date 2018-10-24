function r=lat_sc_ymd_Cnr(neov,lv,Sv,Sw,bw,Clalphav,ARv)

% neov efficiency factor of vertical tail 
% lv distance from cg to vertical tail aerodynamic center 
% Sw  wing area 
% Sv  Vertical tail area
% bw Wing span 
% ARv Aspect ratio of vertical tail


CLalphav= Clalphav*57.3 / ( 1+ ( Clalphav*57.3/(ARv*pi) ) );
Vv=(lv*Sv)/ (Sw*bw);
r=-2*neov*Vv*lv*CLalphav/bw