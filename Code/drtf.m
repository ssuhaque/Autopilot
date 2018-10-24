function r=drtf(n,d)

global lat_d_Struct;
global dataStruct;
global lon_d_Struct;

switch n 
   case 'beta'
               switch d
                        case 'davaa'
                              An=0;
                              Bn=( (lat_d_Struct.Yr * lat_d_Struct.Ndavaa) - (lat_d_Struct.Ndavaa*dataStruct.Uo) ) /dataStruct.Uo;
                              A=1;
                              B=( -lat_d_Struct.Lbeta-(lat_d_Struct.Nr*dataStruct.Uo) )/dataStruct.Uo;
                              C=( (lat_d_Struct.Ybeta*lat_d_Struct.Nr) - (lat_d_Struct.Nbeta*lat_d_Struct.Yr) * (lat_d_Struct.Nbeta*dataStruct.Uo) ) /dataStruct.Uo ;
                    
                        case 'davar'
                              An=lat_d_Struct.Yr/dataStruct.Uo ;
                              Bn=( (lat_d_Struct.Yr*lat_d_Struct.Ndavar) - (lat_d_Struct.Ydavar*lat_d_Struct.Nr) * (lat_d_Struct.Ndavar*dataStruct.Uo) ) /dataStruct.Uo ;
                              A=1;
                              B=( -lat_d_Struct.Lbeta-(lat_d_Struct.Nr*dataStruct.Uo) )/dataStruct.Uo;
                              C=( (lat_d_Struct.Ybeta*lat_d_Struct.Nr) - (lat_d_Struct.Nbeta*lat_d_Struct.Yr) * (lat_d_Struct.Nbeta*dataStruct.Uo) ) /dataStruct.Uo ;
                    
               end % end of switch d          
   
   case 'r'
               switch d
                        case 'davaa'
                              An=lat_d_Struct.Ndavaa;
                              Bn=lat_d_Struct.Ndavaa*lat_d_Struct.Ybeta/dataStruct.Uo;
                              A=1;
                              B=( -lat_d_Struct.Lbeta-(lat_d_Struct.Nr*dataStruct.Uo) )/dataStruct.Uo;
                              C=( (lat_d_Struct.Ybeta*lat_d_Struct.Nr) - (lat_d_Struct.Nbeta*lat_d_Struct.Yr) * (lat_d_Struct.Nbeta*dataStruct.Uo) ) /dataStruct.Uo ;

                        case 'davar'
                              An=lat_d_Struct.Ndavar;
                              Bn=-lat_d_Struct.Ybeta*lat_d_Struct.Ndavaa/dataStruct.Uo;
                              A=1;
                              B=( -lat_d_Struct.Lbeta-(lat_d_Struct.Nr*dataStruct.Uo) )/dataStruct.Uo;
                              C=( (lat_d_Struct.Ybeta*lat_d_Struct.Nr) - (lat_d_Struct.Nbeta*lat_d_Struct.Yr) * (lat_d_Struct.Nbeta*dataStruct.Uo) ) /dataStruct.Uo ;
                end % end of switch d          
end % end of switch n

drtf=tf([An,Bn],[A,B,C]);
r=drtf;

