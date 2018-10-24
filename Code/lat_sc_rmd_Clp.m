function r=lat_sc_rmd_Clp (Clalphaw,ARw,lamda)

% ARw Aspect ratio of wing 
% lamda tap ratio 

CLalphaw= Clalphaw*57.3 / ( 1+ ( Clalphaw*57.3/(ARw*pi) ) );
r=(-CLalpha/12)*( (1+3*lamda)/(1+lamda) );