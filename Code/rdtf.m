function r=rdtf(n,d)

global lat_d_Struct;
global dataStruct;
global lon_d_Struct;

switch n 
   case 'phi'
               switch d
                        case 'davaa'
                              An=lat_d_Struct.Ldavaa;
                              A=1;
                              B=-lat_d_Struct.Lp;
                              C=0;
                              rdtf=tf(An,[A,B,C]);
               end % end of switch d          
      
   case 'p'
               switch d
                        case 'davaa'
                              An=lat_d_Struct.Ldavaa;
                              A=1;
                              B=-lat_d_Struct.Lp;
                              rdtf=tf(An,[A,B]);
                end % end of switch d          
end % end of switch n

r=rdtf;

