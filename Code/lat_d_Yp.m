function r=lat_d_Yp(Q,Sw,m,Cyp,Uo,bw)

% Q  1/2*p*Uo^2
% Sw  wing area
% m mass of aircraft 
% Uo Velocity 
% bw Wing span 

r=Q*Sw*bw*Cyp/(2*m*Uo);