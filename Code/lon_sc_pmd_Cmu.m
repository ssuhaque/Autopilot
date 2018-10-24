function r=lon_sc_pmd_Cmu(M,Cm)
% M Match number 
% Cm referance pitching momentum coefficient
% Cmu changing in Cm due to forward speed u ( to be calculated here 'r')

r= ( (M^2*Cm)/(1-M^2) )  ;