function r=lptf(n,d)

global lat_d_Struct;
global dataStruct;
global lon_d_Struct;

switch n 
         case 'u'
                switch d
                         case 'davae';
                              An=lon_d_Struct.Xdavae;
                              Bn=dataStruct.g*lon_d_Struct.Zdavae/dataStruct.Uo;
                        
                              A=1;
                              B=-lon_d_Struct.Xu;
                              C=-lon_d_Struct.Zu*dataStruct.g/dataStruct.Uo;
                         case 'davaT'
                              An=lon_d_Struct.XdavaT;
                              Bn=dataStruct.g*lon_d_Struct.ZdavaT/dataStruct.Uo;
                        
                              A=1;
                              B=-lon_d_Struct.Xu;
                              C=-lon_d_Struct.Zu*dataStruct.g/dataStruct.Uo;
                 end % end switch d 

   
         case 'theta'
                switch d
                        case 'davae'
                              An=-lon_d_Struct.Zdavae/dataStruct.Uo;
                              Bn=(lon_d_Struct.Xu*lon_d_Struct.Zdavae/dataStruct.Uo)-(lon_d_Struct.Zu*lon_d_Struct.Xdavae/dataStruct.Uo)
                              A=1;
                              B=-lon_d_Struct.Xu;
                              C=-lon_d_Struct.Zu*dataStruct.g/dataStruct.Uo;

                        case 'davaT'
                              An=-lon_d_Struct.ZdavaT/dataStruct.Uo;
                              Bn=(lon_d_Struct.Xu*lon_d_Struct.ZdavaT/dataStruct.Uo)-(lon_d_Struct.Zu*lon_d_Struct.XdavaT/dataStruct.Uo)
                              A=1;
                              B=-lon_d_Struct.Xu;
                              C=-lon_d_Struct.Zu*dataStruct.g/dataStruct.Uo;

                end % end switch d
end % end of switch n 

lptf=tf([An,Bn],[A,B,C]);
r=lptf;
