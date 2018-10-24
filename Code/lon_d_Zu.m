function r=lon_d_Zu(Czu,Uo,Q,Sw,m)

% Q  1/2*p*Uo^2
% Sw  wing area 
% m mass of aircraft 
% Uo Velocity 

r=(Czu*Q*Sw)/(Uo*m);