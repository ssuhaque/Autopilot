function r=lattf(n,d)

global lat_d_Struct;
global dataStruct;
global lon_d_Struct;

switch n 
   case 'v'
               switch d
                        case 'davaa'
                              An=lat_d_Struct.Ydavaa*( dataStruct.Ixz^2/(dataStruct.Ix*dataStruct.Iz) );
                              Bn=-lat_d_Struct.Ydavaa*( lat_d_Struct.Lp + lat_d_Struct.Nr + dataStruct.Ixz*lat_d_Struct.Np/dataStruct.Ix + dataStruct.Ixz*lat_d_Struct.Lr/dataStruct.Ix) -dataStruct.Uo* (dataStruct.Ixz*lat_d_Struct.Ldavaa/dataStruct.Iz + lat_d_Struct.Ndavaa);
                              Cn=lat_d_Struct.Ydavaa(lat_d_Struct.Lp*lat_d_Struct.Nr - lat_d_Struct.Np*lat_d_Struct.Lr)+ dataStruct.Uo*(lat_d_Struct.Ndavaa*lat_d_Struct.Lp - lat_d_Struct.Ldavaa*lat_d_Struct.Np) + dataStruct.g*(lat_d_Struct.Ldavaa + dataStruct.Ixz*lat_d_Struct.Ndavaa/dataStruct.Ix ); 
                              Dn=dataStruct.g*(lat_d_Struct.Ndavaa*lat_d_Struct.Lr - lat_d_Struct.Ldavaa*lat_d_Struct.Nr);
                              A=1-( dataStruct.Ixz^2/(dataStruct.Ix*dataStruct.Iz) );
                              B=-lat_d_Struct.Yv*( dataStruct.Ixz^2/(dataStruct.Ix*dataStruct.Iz) )-lat_d_Struct.Lp-lat_d_Struct.Nr-(dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Np-(dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Lr;
                              C=dataStruct.Uo*lat_d_Struct.Nv+lat_d_Struct.Lp*(lat_d_Struct.Yv+lat_d_Struct.Nr)+lat_d_Struct.Np*( (dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Yv -  lat_d_Struct.Lr)+ lat_d_Struct.Yv( (dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Lr +lat_d_Struct.Nr) + dataStruct.Uo*dataStruct.Ixz*lat_d_Struct.Lv/dataStruct.Iz;
                              D=-dataStruct.Uo*lat_d_Struct.Nv*lat_d_Struct.Lp - lat_d_Struct.Yv*(lat_d_Struct.Np*lat_d_Struct.Lr - lat_d_Struct.Lp* lat_d_Struct.Nr ) +dataStruct.Uo*lat_d_Struct.Np*lat_d_Struct.Lv -dataStruct.g*(lat_d_Struct.Lv + dataStruct.Ixz*lat_d_Struct.Nv/dataStruct.Ix) 
                              E=dataStruct.g*(lat_d_Struct.Lv*lat_d_Struct.Nr - lat_d_Struct.Nv*lat_d_Struct.Lr ); 
                              lattf=tf([An,Bn,Cn,Dn],[A,B,C,D,E]);
               end % end of switch d          
  
   case 'phi'
               switch d
                        case 'davaa'
                              An=lat_d_Struct.Ldavaa+ dataStruct.Ixz*lat_d_Struct.Ndavaa/dataStruct.Ix;
                              Bn=lat_d_Struct.davaa*(lat_d_Struct.Lv+ dataStruct.Ixz*lat_d_Struct.Nv/dataStruct.Ix) - lat_d_Struct.Ldavaa*(lat_d_Struct.Nr + lat_d_Struct.Yv) + lat_d_Struct.Ndavaa*(lat_d_Struct.Lr - dataStruct.Ixz* lat_d_Struct.Yv /dataStruct.Ix);
                              Cn=lat_d_Struct.Ydavaa*(lat_d_Struct.Lr*lat_d_Struct.Nv - lat_d_Struct.Lv*lat_d_Struct.Nr) + lat_d_Struct.davaa*(lat_d_Struct.Yv*lat_d_Struct.Nr + dataStruct.Uo*lat_d_Struct.Nv) - lat_d_Struct.Ndavaa*(dataStruct.Uo*lat_d_Struct.Lv+ lat_d_Struct.Yv*lat_d_Struct.Lr);
                              A=1-( dataStruct.Ixz^2/(dataStruct.Ix*dataStruct.Iz) );
                              B=-lat_d_Struct.Yv*( dataStruct.Ixz^2/(dataStruct.Ix*dataStruct.Iz) )-lat_d_Struct.Lp-lat_d_Struct.Nr-(dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Np-(dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Lr;
                              C=dataStruct.Uo*lat_d_Struct.Nv+lat_d_Struct.Lp*(lat_d_Struct.Yv+lat_d_Struct.Nr)+lat_d_Struct.Np*( (dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Yv -  lat_d_Struct.Lr)+ lat_d_Struct.Yv( (dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Lr +lat_d_Struct.Nr) + dataStruct.Uo*dataStruct.Ixz*lat_d_Struct.Lv/dataStruct.Iz;
                              D=-dataStruct.Uo*lat_d_Struct.Nv*lat_d_Struct.Lp - lat_d_Struct.Yv*(lat_d_Struct.Np*lat_d_Struct.Lr - lat_d_Struct.Lp* lat_d_Struct.Nr ) +dataStruct.Uo*lat_d_Struct.Np*lat_d_Struct.Lv -dataStruct.g*(lat_d_Struct.Lv + dataStruct.Ixz*lat_d_Struct.Nv/dataStruct.Ix) 
                              E=dataStruct.g*(lat_d_Struct.Lv*lat_d_Struct.Nr - lat_d_Struct.Nv*lat_d_Struct.Lr );         
                              lattf=tf([An,Bn,Cn],[A,B,C,D,E]);
               end % end of switch d
  
   case 'r'
               switch d
                        case 'davaa'
                              An=
                              Bn=lat_d_Struct.Ydavaa*(lat_d_Struct.Nv + dataStruct.Ixz*lat_d_Struct.Lv/dataStruct.Ix) +lat_d_Struct.davaa*(lat_d_Struct.Np -dataStruct.Ixz*lat_d_Struct.Yv/dataStruct.Iz) - lat_d_Struct.Ndavaa(lat_d_Struct.Yv +lat_d_Struct.Lp);
                              Cn=lat_d_Struct.ydavaa*(lat_d_Struct.Lv*lat_d_Struct.Np - lat_d_Struct.Nv*lat_d_Struct.Lp) - lat_d_Struct.Ldavaa*lat_d_Struct.Yv*lat_d_Struct.Np+ lat_d_Struct.Ndavaa*lat_d_Struct.Yv*lat_d_Struct.Lp; 
                              Dn=dataStruct.g(lat_d_Struct.Ldavaa*lat_d_Struct.Nv - lat_d_Struct.Ndavaa*lat_d_Struct.Lv);
                              A=1-( dataStruct.Ixz^2/(dataStruct.Ix*dataStruct.Iz) );
                              B=-lat_d_Struct.Yv*( dataStruct.Ixz^2/(dataStruct.Ix*dataStruct.Iz) )-lat_d_Struct.Lp-lat_d_Struct.Nr-(dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Np-(dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Lr;
                              C=dataStruct.Uo*lat_d_Struct.Nv+lat_d_Struct.Lp*(lat_d_Struct.Yv+lat_d_Struct.Nr)+lat_d_Struct.Np*( (dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Yv -  lat_d_Struct.Lr)+ lat_d_Struct.Yv( (dataStruct.Ixz/dataStruct.Ix)*lat_d_Struct.Lr +lat_d_Struct.Nr) + dataStruct.Uo*dataStruct.Ixz*lat_d_Struct.Lv/dataStruct.Iz;
                              D=-dataStruct.Uo*lat_d_Struct.Nv*lat_d_Struct.Lp - lat_d_Struct.Yv*(lat_d_Struct.Np*lat_d_Struct.Lr - lat_d_Struct.Lp* lat_d_Struct.Nr ) +dataStruct.Uo*lat_d_Struct.Np*lat_d_Struct.Lv -dataStruct.g*(lat_d_Struct.Lv + dataStruct.Ixz*lat_d_Struct.Nv/dataStruct.Ix) 
                              E=dataStruct.g*(lat_d_Struct.Lv*lat_d_Struct.Nr - lat_d_Struct.Nv*lat_d_Struct.Lr );                             
                              lattf=tf([An,Bn,Cn,Dn],[A,B,C,D,E]);
                end % end of switch d
end % end of switch n


r=lattf;

