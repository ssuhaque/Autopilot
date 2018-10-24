function r=lon_sc_zfd_Czalphadot(neot,...
                                 Clalphat,ARt,....
                                 lt,St,Sw,cbarw,...
                                 Clalphaw,ARw...
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

% ep downwash angle 
% d_ep_wrt_alpha change in downwash due to change in angle of attack 


% ARw wing aspect ratio (input)
% Clalphaw wing airfoil characteristics (unit 1/deg) ( see page 57)
% CLalphaw wing lift curve slope (unit 1/rad) (see page 57)

Vh = (lt*St) / ( Sw*cbarw);

CLalphat= Clalphat*57.3 / ( 1+ ( Clalphat*57.3/(ARt*pi) ) );

CLalphaw= Clalphaw*57.3 / ( 1+ ( Clalphaw*57.3/(ARw*pi) ) );

d_ep_wrt_alpha=(2*CLalphaw)/(pi*ARw);



r=-2*( neot*Vh*CLalphat*d_ep_wrt_alpha );

