function r=lat_d_Np(Q,Sw,Iz,Cnp,bw,Uo)

% Q  1/2*p*Uo^2
% Sw  wing area 
% IZ mass moments of inertia of plane about Z axis measured about center of gravity
% bw Wing span 
% Uo velocity 

r=Q*Sw*(bw^2)*Cnp/(Iz*2*Uo);