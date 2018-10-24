function r=lat_sc_ymd_Cnbeta(lv,Sv,Sw,Clalphav,ARv,sweep,Zw,ARw,Kn,Krl,Sfs,lf,bw)

% ARw Aspect ratio of wing 
% ARv Aspect ratio of vertical tail
% Sw  wing area 
% Sv  Vertical tail area 
% Vv Vertical tail volume ratio 
% sweep sweep of wing quarter chord 
% Zw Distance from wing root quarter chord point to fuselage centerline 
% kn  an empirical wing body interference factor that is a function of the fuselage geometry 
% krl an empirical correction factor that is a function of the fuselage Reynolds number
% Sfs The projected side area of the fuselage 
% lf fuselage length 
% bw Wing span 
% lv distance from cg to vertical tail aerodynamic center 

Vv=lv*Sv/(Sw*bw);

CLalphav= Clalphav*57.3 / ( 1+ ( Clalphav*57.3/(ARv*pi) ) );

temp= 0.724 + (  (3.06*Sv)/(Sw*(1+cos(sweep))) ) + (0.4*Zw/d) +  0.009*ARw;

Cnbwf=-(Kn*Krl*Sfs*lf)/(Sw*bw);

r=Cnbwf+ (Vv*CLalphav*temp);

