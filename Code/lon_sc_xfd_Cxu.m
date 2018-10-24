function r=lon_sc_xfd_Cxu(M,Cd,Gliding)
% M Match number (input)
% Cd Reference Drag Coefficient (input)
% Gliding  for plane in gliding or not (input)
% Cdu is change in Cd with forward speed u 
% Ctu is change in Ct ( thrust coefficient ) with forward speed u 
% Cxu Change in X force due to forward speed u ( to be calculated here 'r' )

Ctu=0;

if Gliding==1
    Ctu=0;
elseif Gliding==2
    Ctu=-Cd;
end

Cdu=( (M^2)/( 1-M^2) ) * Cd;

if Cdu<0.001
    Cdu=0;
end
    

r=-Cdu-(2*Cd)+Ctu;
