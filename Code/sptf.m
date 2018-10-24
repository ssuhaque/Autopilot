function r=sptf(n,d)

global lat_d_Struct;
global dataStruct;
global lon_d_Struct;

switch n 
   case 'alpha'
               switch d
                        case 'davae'
                              An=lon_d_Struct.Zdavae/dataStruct.Uo;
                              Bn=(lon_d_Struct.Mdavae)-(lon_d_Struct.Mq*lon_d_Struct.Zdavae/dataStruct.Uo);
                              A=1;
                              B=-lon_d_Struct.Mq-lon_d_Struct.Malphadot-(lon_d_Struct.Zalpha/dataStruct.Uo);
                              C=(lon_d_Struct.Zalpha*lon_d_Struct.Mq/dataStruct.Uo)-lon_d_Struct.Malpha;     
               end % end of switch d          
               

   case 'q'
               switch d
                        case 'davae'
                              An=lon_d_Struct.Mdavae+( lon_d_Struct.Malphadot* lon_d_Struct.Zdavae /dataStruct.Uo);
                              Bn=( lon_d_Struct.Malpha* lon_d_Struct.Zdavae /dataStruct.Uo)- ( lon_d_Struct.Mdavae* lon_d_Struct.Zalpha /dataStruct.Uo);
                              A=1;
                              B=-lon_d_Struct.Mq-lon_d_Struct.Malphadot-(lon_d_Struct.Zalpha/dataStruct.Uo);
                              C=(lon_d_Struct.Zalpha*lon_d_Struct.Mq/dataStruct.Uo)-lon_d_Struct.Malpha;
                end % end of switch d   
end % end of switch n

sptf=tf([An,Bn],[A,B,C]);
r=sptf;

