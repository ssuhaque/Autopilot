function r=lon_sc_zfd_Czq(neot,...
                                 Clalphat,ARt,....
                                 lt,St,Sw,cbarw...
                                )

% neot tail efficiency factor 

% Vh Horizontal tail volume ratio 
% lt length of tail 
% St Horizontal tail area 
% Sw  Waing area 
% Cbarw Wing mean aerodynamic chord ft

% ARt tail aspect ratio (input)
% Clalphat tail airfoil characteristics (unit 1/deg) ( see page 57)
% CLalphat tail lift curve slope (unit 1/rad) (see page 57)


Vh = (lt*St) / ( Sw*cbarw);

CLalphat= Clalphat*57.3 / ( 1+ ( Clalphat*57.3/(ARt*pi) ) );


r=-2*( neot*Vh*CLalphat);

