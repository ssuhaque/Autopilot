function r=lat_d_Lr(Q,Sw,Ix,Clr,bw,Uo)

% Q  1/2*p*Uo^2
% Sw  wing area 
% Ix mass moments of inertia of plane about X axis measured about cg 
% bw Wing span 
% Uo Velocity 

r=Q*Sw*(bw^2)*Clr/(Ix*Uo*2);