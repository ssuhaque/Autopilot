function r=lat_sc_rmd_Clbeta (Clbeta,surface)

% surface boolean

if      surface==0
    deltaClbeta=-0.0002;
else if surface==1
    deltaClbeta=0;
else if surface==2
    deltaClbeta=0.0002;
end  

r=Clbeta+deltaClbeta;