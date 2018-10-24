function r=lat_d_Ldavar(Q,Sw,Ix,Cldavar,bw)

% Q  1/2*p*Uo^2
% Sw  wing area
% Ix mass moments of inertia of plane about X axis measured about center of gravity
% bw Wing span 

r=Q*Sw*bw*Cldavar/Ix;