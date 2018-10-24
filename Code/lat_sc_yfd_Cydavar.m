function r=lat_sc_ydf_Cydavar(Sv,Sw,taw,Clalphav,ARv)

% Sw  wing area 
% Sv  Vertical tail area  
% taw flap effectiveness factor 
% ARv Aspect ratio of vertical tail


CLalphav= Clalphav*57.3 / ( 1+ ( Clalphav*57.3/(ARv*pi) ) );
r=Sv*taw*CLalphav/Sw;
