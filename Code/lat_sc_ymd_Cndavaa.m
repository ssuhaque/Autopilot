function r=lat_sc_ymd_Cndavaa(Sw,bw,taw,Clalphaw,ARw,Cr,y2,y1,lamda,K,Cl)

% Sw  wing area 
% bw Wing span 
% taw flap effectiveness factor
% ARw Aspect ratio of wing 
% cr see 83
% y1 y2 limits of region of aileron 
% lamda tap ratio 
% K empirical factor to be used in Cndavaa
% Cl referance lift coefficient 



CLalphaw= Clalphaw*57.3 / ( 1+ ( Clalphaw*57.3/(ARw*pi) ) );
temp=(2*CLalphaw*taw*Cr/(Sw*bw))* ( (   (y2^2)/2   + (((lamda-1)*y2^3) / (3*bw/2))   )-(   (y1^2)/2   + (((lamda-1)*y1^3) / (3*bw/2))   ) )
r=2*K*Cl*temp;