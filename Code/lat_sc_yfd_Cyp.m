function r=lat_sc_ydf_Cyp (Cl,ARw,wsweep)

% Cl referance lift coefficient 
% ARw Aspect ratio of wing 
% wsweep sweep of wing quarter chord 

r=Cl*(  (ARw+cos(sweepangle)) / (ARw+4*cos(wsweep/4)) )*tan(sweepangle);
