function r=lon(n,d)

global lat_d_Struct;
global dataStruct;
global lon_d_Struct;

switch n 
   case 'theta'
               switch d
                        case 'davae'
                              An=lon_d_Struct.Mdavae+(lon_d_Struct.Zdavae*lon_d_Struct.Mwdot);
                              Bn=lon_d_Struct.Xdavae*(  (lon_d_Struct.Zu*lon_d_Struct.Mwdot) + lon_d_Struct.Mu) + lon_d_Struct.Zdavae*(lon_d_Struct.Mw- (lon_d_Struct.Xu*lon_d_Struct.Mwdot) -lon_d_Struct.Mdavae*(lon_d_Struct.Xu+lon_d_Struct.Zw);
                              Cn=lon_d_Struct.Xdavae*(  (lon_d_Struct.Zu*lon_d_Struct.Mwdot) + (lon_d_Struct.Zw*lon_d_Struct.Mu) ) + lon_d_Struct.Zdavae*( (lon_d_Struct.Mu*lon_d_Struct.Xw)- (lon_d_Struct.Xu*lon_d_Struct.Mw) -lon_d_Struct.Mdavae*( (lon_d_Struct.Zw*lon_d_Struct.Xu) +(lon_d_Struct.Zu*lon_d_Struct.Xw) );
                              Dn=0;
                              A=1;
                              B=-lon_d_Struct.Mq-(dataStruct.Uo*lon_d_Struct.Mwdot)-lon_d_Struct.Zw-lon_d_Struct.Xu;
                              C=lon_d_Struct.Zw*lon_d_Struct.Mq-(dataStruct.Uo*lon_d_Struct.Mwdot)-(lon_d_Struct.Xw*lon_d_Struct.Zu)+lon_d_Struct.Xu*(lon_d_Struct.Mq+(dataStruct.Uo*lon_d_Struct.Mwdot)+lon_d_Struct.Zw);
                              D=( -lon_d_Struct.Xu*( (lon_d_Struct.Zw*lon_d_Struct.Mq) -(dataStruct.Uo*lon_d_Struct.Mw) ))+ (lon_d_Struct.Zu*( (lon_d_Struct.Xw*lon_d_Struct.Mq) + (dataStruct.g*lon_d_Struct.Mw) ))-lon_d_Struct.Mu( (dataStruct.Uo*lon_d_Struct.Xu)-dataStruct.g)
                              E=dataStruct.g*(  (lon_d_Struct.Zu*lon_d_Struct.Mw) - (lon_d_Struct.Mu*lon_d_Struct.Zw) );
                              lontf=tf([An,Bn,Cn],[A,B,C,D,E]);
               end % end of switch d          
   case 'w'
               switch d
                        case 'davae'
                              An=lon_d_Struct.Zdavae
                              Bn=lon_d_Struct.Xdavae*lon_d_Struct.Zu- (lon_d_Struct.Zdavae(lon_d_Struct.Xu+lon_d_Struct.Mq)) + lon_d_Struct.Mdavae*dataStruct.Uo;
                              Cn=lon_d_Struct.Xdavae(dataStruct.Uo*lon_d_Struct.Mu - lon_d_Struct.Zu*lon_d_Struct.Mq)+ (lon_d_Struct.Zdavae*lon_d_Struct.Xu*lon_d_Struct.Mq)-(dataStruct.Uo*lon_d_Struct.Mdavae*lon_d_Struct.Xu);
                              Dn=dataStruct.g*(lon_d_Struct.Zdavae*lon_d_Struct.Mu-lon_d_Struct.Mdavae*lon_d_Struct.Zu)
                              A=1;
                              B=-lon_d_Struct.Mq-(dataStruct.Uo*lon_d_Struct.Mwdot)-lon_d_Struct.Zw-lon_d_Struct.Xu;
                              C=lon_d_Struct.Zw*lon_d_Struct.Mq-(dataStruct.Uo*lon_d_Struct.Mwdot)-(lon_d_Struct.Xw*lon_d_Struct.Zu)+lon_d_Struct.Xu*(lon_d_Struct.Mq+(dataStruct.Uo*lon_d_Struct.Mwdot)+lon_d_Struct.Zw);
                              D=( -lon_d_Struct.Xu*( (lon_d_Struct.Zw*lon_d_Struct.Mq) -(dataStruct.Uo*lon_d_Struct.Mw) ))+ (lon_d_Struct.Zu*( (lon_d_Struct.Xw*lon_d_Struct.Mq) + (dataStruct.g*lon_d_Struct.Mw) ))-lon_d_Struct.Mu( (dataStruct.Uo*lon_d_Struct.Xu)-dataStruct.g)
                              E=dataStruct.g*(  (lon_d_Struct.Zu*lon_d_Struct.Mw) - (lon_d_Struct.Mu*lon_d_Struct.Zw) );
                              lontf=tf([An,Bn,Cn,Dn],[A,B,C,D,E]);
               end % end of switch d
   case 'u'
               switch d
                        case 'davae'
                              An=lon_d_Struct.Xdavae
                              Bn=-lon_d_Struct.Xdavae( lon_d_Struct.Zw + lon_d_Struct.Mq + dataStruct.Uo*lon_d_Struct.Mwdot)+ lon_d_Struct.Zdavae*lon_d_Struct.Xw;
                              Cn=lon_d_Struct.Xdavae( (lon_d_Struct.Zw*lon_d_Struct.Mq) - (dataStruct.Uo*lon_d_Struct.Mw) )- lon_d_Struct.Zdavae( (lon_d_Struct.Xw*lon_d_Struct.Mq) + (dataStruct.g*lon_d_Struct.Mw) ) + lon_d_Struct.Mdavae(dataStruct.Uo*lon_d_Struct.Xw -dataStruct.g);
                              Dn=dataStruct.g*(lon_d_Struct.Mdavae*lon_d_Struct.Zw-lon_d_Struct.Zdavae*lon_d_Struct.Mw)
                              A=1;
                              B=-lon_d_Struct.Mq-(dataStruct.Uo*lon_d_Struct.Mwdot)-lon_d_Struct.Zw-lon_d_Struct.Xu;
                              C=lon_d_Struct.Zw*lon_d_Struct.Mq-(dataStruct.Uo*lon_d_Struct.Mwdot)-(lon_d_Struct.Xw*lon_d_Struct.Zu)+lon_d_Struct.Xu*(lon_d_Struct.Mq+(dataStruct.Uo*lon_d_Struct.Mwdot)+lon_d_Struct.Zw);
                              D=( -lon_d_Struct.Xu*( (lon_d_Struct.Zw*lon_d_Struct.Mq) -(dataStruct.Uo*lon_d_Struct.Mw) ))+ (lon_d_Struct.Zu*( (lon_d_Struct.Xw*lon_d_Struct.Mq) + (dataStruct.g*lon_d_Struct.Mw) ))-lon_d_Struct.Mu( (dataStruct.Uo*lon_d_Struct.Xu)-dataStruct.g)
                              E=dataStruct.g*(  (lon_d_Struct.Zu*lon_d_Struct.Mw) - (lon_d_Struct.Mu*lon_d_Struct.Zw) );
                              lontf=tf([An,Bn,Cn,Dn],[A,B,C,D,E]);
               end % end of switch d
end % end of switch n


r=lontf;

