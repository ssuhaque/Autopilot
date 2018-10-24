function r=lon_d_Zwdot(Czalphadot,cbarw,Uo,Q,Sw,m)

% Q  1/2*p*Uo^2
% Sw  wing area 
% m mass of aircraft 
% Uo Velocity 
% cbarw  Wing mean aerodynamic chord 

r=(Czalphadot*Q*Sw*cbarw)/(2*m*(Uo^2));