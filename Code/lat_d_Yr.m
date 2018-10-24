function r=lat_d_Yr(Q,Sw,m,Cyr,Uo,bw)

% Q  1/2*p*Uo^2
% Sw  wing area 
% m mass of aircraft 
% Uo Velocity 
% bw Wing span 

r=Q*Sw*bw*Cyr/(2*m*Uo);