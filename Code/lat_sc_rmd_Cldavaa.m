function r=lat_sc_rmd_Cldavaa (Sw,bw,taw,Clalphaw,ARw,Cr,y2,y1,lamda)

% bw Wing span 
% Sw  wing area 
% lamda tap ratio 
% taw flap effectiveness factor 
% ARw Aspect ratio of wing 
% cr see 83
% y1 y2 limits of region of aileron 

CLalphaw= Clalphaw*57.3 / ( 1+ ( Clalphaw*57.3/(ARw*pi) ) );
r=(2*CLalphaw*taw*Cr/(Sw*bw))* ( (   (y2^2)/2   + (((lamda-1)*y2^3) / (3*bw/2))   )-(   (y1^2)/2   + (((lamda-1)*y1^3) / (3*bw/2))   ) )