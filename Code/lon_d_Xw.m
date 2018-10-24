function r=lon_d_Xw(Cxalpha,Q,Uo,Sw,m)

% Uo Velocity 
% Q  1/2*p*Uo^2
% Sw  wing area 
% m mass of aircraft 

r=(Cxalpha*Q*Sw)/(m*Uo);