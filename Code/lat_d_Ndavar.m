function r=lat_d_Ndavar(Q,Sw,Iz,Cndavar,bw)

% Q  1/2*p*Uo^2
% Sw  wing area 
% IZ mass moments of inertia of plane about Z axis measured about center of gravity
% bw Wing span 

r=Q*Sw*bw*Cndavar/Iz;