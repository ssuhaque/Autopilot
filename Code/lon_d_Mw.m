function r=lon_d_Mw(Cmalpha,cbarw,Uo,Q,Sw,Iy)

% cbarw  Wing mean aerodynamic chord ?
% Uo Velocity 
% Q  1/2*p*Uo^2
% Sw  wing area 
% Iy mass moments of inertia of plane about Y axis measured about center of gravity

r=(Cmalpha*Q*Sw*cbarw)/(Iy*Uo);