function r=lon_d_Malpha(Cmalpha,Q,Sw,cbarw,Iy)

% Q  1/2*p*Uo^2
% Sw  wing area 
% cbarw  Wing mean aerodynamic chord ?
% Iy mass moments of inertia of plane about Y axis measured about center of gravity

r=(Cmalpha*Q*Sw*cbarw)/Iy;