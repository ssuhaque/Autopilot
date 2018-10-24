function r=lat_d_Lp(Q,Sw,Ix,Clp,bw,Uo)

% Q  1/2*p*Uo^2
% Sw  wing area
% Ix mass moments of inertia of plane about X axis measured about center of gravity
% bw Wing span 
% Uo Velocity 

r=Q*Sw*(bw^2)*Clp/(Ix*Uo*2);