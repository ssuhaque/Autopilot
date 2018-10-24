function r=lat_sc_rmd_Cldavar (Sv,Sw,Zv,bw,taw,Clalphaw,ARw)

% Sw  wing area 
% Sv  Vertical tail area 
% Zv Distance from center of pressure of vertical tail to fuselage centerline
% bw Wing span
% taw flap effectiveness factor 
% ARw Aspect ratio of wing 

CLalphaw= Clalphaw*57.3 / ( 1+ ( Clalphaw*57.3/(ARw*pi) ) );
r=(Sv*Zv*taw*CLalphaw)/(Sw*bw);