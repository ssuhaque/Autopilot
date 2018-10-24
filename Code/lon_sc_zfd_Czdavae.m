function r=lon_sc_zfd_Czdavae(neot,...
                                 Clalphat,ARt,....
                                 St,Sw,taw...
                                )

% neot tail efficiency factor 

% St Horizontal tail area 
% Sw  Waing area 
% taw flap effectiveness factor  

% ARt tail aspect ratio (input)
% Clalphat tail airfoil characteristics (unit 1/deg) ( see page 57)
% CLalphat tail lift curve slope (unit 1/rad) (see page 57)


CLalphat= Clalphat*57.3 / ( 1+ ( Clalphat*57.3/(ARt*pi) ) );
disp(CLalphat);


r=-1*neot*CLalphat*taw*St/Sw;

