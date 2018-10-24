function r=lat_d_Nr(Q,Sw,Iz,Cnr,bw,Uo)

% Q  1/2*p*Uo^2
% Sw  wing area 
% IZ mass moments of inertia of plane about Z axis measured about center of gravity
% bw Wing span 
% Uo Velocity 

r=Q*Sw*(bw^2)*Cnr/(Iz*2*Uo);