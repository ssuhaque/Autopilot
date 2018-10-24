function r=lon_sc_pmd_Cmalpha(Clalphaw,ARw, ...   
                              Xcg,Xac,cbarw, ...
                              Cmalphafus, ....
                              neot,....
                              lt,St,Sw,...
                              Clalphat,ARt...
                             )

% ARw wing aspect ratio (input)
% Clalphaw wing airfoil characteristics (unit 1/deg) ( see page 57)
% CLalphaw wing lift curve slope (unit 1/rad) (see page 57)

% Cbar Wing mean aerodynamic chord ft
% Xcg Center of gravity location measured from leading edge 
% Xac wing airfoil characteristics


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



CLalphaw= Clalphaw*57.3 / ( 1+ ( Clalphaw*57.3/(ARw*pi) ) );
Vh = (lt*St) / ( Sw*cbarw);

CLalphat= Clalphat*57.3 / ( 1+ ( Clalphat*57.3/(ARt*pi) ) );
d_ep_wrt_alpha=(2*CLalphaw)/(pi*ARw);

r=( CLalphaw*( (Xcg/cbarw)-(Xac/cbarw) ) )   + Cmalphafus - ( neot*Vh*CLalphat*(1-d_ep_wrt_alpha) );
