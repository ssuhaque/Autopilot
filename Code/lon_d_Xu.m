function r=lon_d_Xu(Cxu,Uo,Q,Sw,m)

% Uo Velocity 
% Q  1/2*p*Uo^2
% Sw  wing area 
% m mass of aircraft 

r=(Cxu*Q*Sw)/(Uo*m);