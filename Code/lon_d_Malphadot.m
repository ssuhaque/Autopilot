function r=lon_d_Malphadot(Cmalphadot,cbarw,Uo,Q,Sw,Iy)

% cbarw  Wing mean aerodynamic chord ?
% Uo Velocity 
% Q  1/2*p*Uo^2
% Sw  wing area 
% Iy mass moments of inertia of plane about Y axis measured about center of gravity

r=(Cmalphadot*Q*Sw*(cbarw^2) )/(2*Iy*Uo);