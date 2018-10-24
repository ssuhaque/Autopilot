function r=lon_sc_zfd_Czu(M,Cl)
% M Match number 
% Cl reference lift coefficient 
% Czu change in Z force due to change in forward speed u ( to be calculated here 'r' )
r=-  ( (M^2*Cl)/(1-M^2) )    -   2*Cl;