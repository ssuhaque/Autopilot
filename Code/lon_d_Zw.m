function r=lon_d_Zw(Czalpha,Uo,Q,Sw,m)

% Q  1/2*p*Uo^2
% Sw  wing area 
% m mass of aircraft 
% Uo Velocity 

r=(Czalpha*Q*Sw)/(m*Uo);