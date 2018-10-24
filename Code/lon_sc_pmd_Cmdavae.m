function r=lon_sc_pmd_Cmdavae(neot,...
                                 Clalphat,ARt,....
                                 St,Sw,taw,lt,cbarw...
                                )

% neot tail efficiency factor 

% St Horizontal tail area 
% Sw  Waing area 
% taw flap effectiveness 
% lt distance from cg to tail quarter chord
% cbarw  Wing mean aerodynamic chord 
% ARt tail aspect ratio (input)
% Clalphat tail airfoil characteristics (unit 1/deg) ( see page 57)
% CLalphat tail lift curve slope (unit 1/rad) (see page 57)


CLalphat= Clalphat*57.3 / ( 1+ ( Clalphat*57.3/(ARt*pi) ) );


r=-1*neot*CLalphat*taw*St*lt/(Sw*cbarw);

