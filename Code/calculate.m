function calculate(handles)
global lon_d_Struct;
global lon_sc_Struct;
global lat_sc_Struct;
global lat_d_Struct;
global dataStruct;

dataStruct.m=dataStruct.W/dataStruct.g;
dataStruct.Q=dataStruct.p*(dataStruct.Uo^2)*.5;

lon_sc_Struct.Czalpha=lon_sc_zfd_Czalpha(dataStruct.Cd,dataStruct.ARw,dataStruct.Clalphaw)
lon_sc_Struct.Czq=lon_sc_zfd_Czq(dataStruct.neot,dataStruct.Clalphat,dataStruct.ARt,dataStruct.lt,dataStruct.St,dataStruct.Sw,dataStruct.cbarw)
lon_sc_Struct.Czdavae=lon_sc_zfd_Czdavae(dataStruct.neot,dataStruct.Clalphat,dataStruct.ARt,dataStruct.St,dataStruct.Sw,dataStruct.taw)
lon_sc_Struct.Czalphadot=lon_sc_zfd_Czalphadot(dataStruct.neot,dataStruct.Clalphat,dataStruct.ARt,dataStruct.lt,dataStruct.St,dataStruct.Sw,dataStruct.cbarw,dataStruct.Clalphaw,dataStruct.ARw)                          
lon_sc_Struct.Czu=lon_sc_zfd_Czu(dataStruct.M,dataStruct.Cl)

lon_sc_Struct.Cxalpha=lon_sc_xfd_Cxalpha(dataStruct.Cl,dataStruct.ARw,dataStruct.e,dataStruct.Clalphaw)
lon_sc_Struct.Cxu=lon_sc_xfd_Cxu(dataStruct.M,dataStruct.Cd,dataStruct.gliding)

lon_sc_Struct.Cmq=lon_sc_pmd_Cmq(dataStruct.neot,dataStruct.Clalphat,dataStruct.ARt,dataStruct.lt,dataStruct.St,dataStruct.Sw,dataStruct.cbarw)
lon_sc_Struct.Cmalphadot=lon_sc_pmd_Cmalphadot(dataStruct.neot,dataStruct.Clalphat,dataStruct.ARt,dataStruct.lt,dataStruct.St,dataStruct.Sw,dataStruct.cbarw,dataStruct.Clalphaw,dataStruct.ARw)
lon_sc_Struct.Cmdavae=lon_sc_pmd_Cmdavae(dataStruct.neot,dataStruct.Clalphat,dataStruct.ARt,dataStruct.St,dataStruct.Sw,dataStruct.taw,dataStruct.lt,dataStruct.cbarw)
Cmalphafus=0.93;%lon_sc_pmd_Cmalphaf(dataStruct.pd,dataStruct.Dx,dataStruct.xi,dataStruct.wf,dataStruct.Sw,dataStruct.cbarw);%0.93;
lon_sc_Struct.Cmalpha=lon_sc_pmd_Cmalpha(dataStruct.Clalphaw,dataStruct.ARw,dataStruct.Xcg,dataStruct.Xac,dataStruct.cbarw,Cmalphafus,dataStruct.neot,dataStruct.lt,dataStruct.St,dataStruct.Sw,dataStruct.Clalphat,dataStruct.ARt)
lon_sc_Struct.Cmu=lon_sc_pmd_Cmu(dataStruct.M,dataStruct.Cm)

lon_d_Struct.Zalpha=lon_d_Zalpha(lon_sc_Struct.Czalpha,dataStruct.Q,dataStruct.Sw,dataStruct.m)
lon_d_Struct.Zalphadot=lon_d_Zalphadot(lon_sc_Struct.Czalphadot,dataStruct.cbarw,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.m)
lon_d_Struct.Zdavae=lon_d_Zdavae(lon_sc_Struct.Czdavae,dataStruct.Q,dataStruct.Sw,dataStruct.m)
lon_d_Struct.Zq=lon_d_Zq(lon_sc_Struct.Czq,dataStruct.cbarw,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.m)
lon_d_Struct.Zu=lon_d_Zu(lon_sc_Struct.Czu,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.m)
lon_d_Struct.Zw=lon_d_Zw(lon_sc_Struct.Czalpha,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.m)
lon_d_Struct.Zwdot=lon_d_Zwdot(lon_sc_Struct.Czalphadot,dataStruct.cbarw,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.m)

lon_d_Struct.Xu=lon_d_Xu(lon_sc_Struct.Cxu,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.m)
lon_d_Struct.Xalpha=lon_d_Xalpha(lon_sc_Struct.Cxalpha,dataStruct.Q,dataStruct.Sw,dataStruct.m)
lon_d_Struct.Xw=lon_d_Xw(lon_sc_Struct.Cxalpha,dataStruct.Q,dataStruct.Uo,dataStruct.Sw,dataStruct.m)

lon_d_Struct.Mq=lon_d_Mq(lon_sc_Struct.Cmq,dataStruct.cbarw,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.Iy)
lon_d_Struct.Malphadot=lon_d_Malphadot(lon_sc_Struct.Cmalphadot,dataStruct.cbarw,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.Iy)
lon_d_Struct.Mdavae=lon_d_Mdavae(lon_sc_Struct.Cmdavae,dataStruct.Q,dataStruct.Sw,dataStruct.cbarw,dataStruct.Iy)
lon_d_Struct.Malpha=lon_d_Malpha(lon_sc_Struct.Cmalpha,dataStruct.Q,dataStruct.Sw,dataStruct.cbarw,dataStruct.Iy)
lon_d_Struct.Mu=lon_d_Mu(lon_sc_Struct.Cmu,dataStruct.cbarw,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.Iy)
lon_d_Struct.Mwdot=lon_d_Mwdot(lon_sc_Struct.Cmalphadot,dataStruct.cbarw,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.Iy)
lon_d_Struct.Mw=lon_d_Mw(lon_sc_Struct.Cmalpha,dataStruct.cbarw,dataStruct.Uo,dataStruct.Q,dataStruct.Sw,dataStruct.Iy)

%lat_sc_Struct.Clr=lat_sc_rmd_Clr (dataStruct.lv,dataStruct.zv,dataStruct.bw,dataStruct.neov,dataStruct.Sv,dataStruct.Sw,dataStruct.Clalphav,dataStruct.ARv,dataStruct.Cl)
%lat_sc_Struct.Cldavaa=lat_sc_rmd_Cldavaa (dataStruct.Sw,dataStruct.bw,dataStruct.taw,dataStruct.Clalphaw,dataStruct.ARw,dataStruct.Cr,dataStruct.y2,dataStruct.y1,dataStruct.lamda)
%lat_sc_Struct.Cldavar=lat_sc_rmd_Cldavar (dataStruct.Sv,dataStruct.Sw,dataStruct.Zv,dataStruct.bw,dataStruct.taw,dataStruct.Clalphaw,dataStruct.ARw)
%lat_sc_Struct.Clp=lat_sc_rmd_Clp (dataStruct.Clalphaw,dataStruct.ARw,dataStruct.lamda)
%lat_sc_Struct.Clbeta=lat_sc_rmd_Clbeta (dataStruct.Clbeta,dataStruct.surface)

%lat_sc_Struct.Cyr=lat_sc_ydf_Cyr (dataStruct.lv,dataStruct.bw,dataStruct.neov,dataStruct.Sv,dataStruct.Sw,dataStruct.Clalphav,dataStruct.ARv)
%lat_sc_Struct.Cydavaa=lat_sc_ydf_Cydavaa(0)
%lat_sc_Struct.Cydavar=lat_sc_ydf_Cydavar(dataStruct.Sv,dataStruct.Sw,dataStruct.taw,dataStruct.Clalphav,dataStruct.ARv)
%lat_sc_Struct.Cyp=lat_sc_ydf_Cyp (dataStruct.Cl,dataStruct.ARw,dataStruct.wsweep)
%lat_sc_Struct.Cybeta=lat_sc_yfd_Cybeta(dataStruct.Sv,dataStruct.Sw,dataStruct.Clalphav,dataStruct.ARv,dataStruct.wsweep,dataStruct.Zw,dataStruct.ARw)

%lat_sc_Struct.Cnr=lat_sc_ymd_Cnr(dataStruct.neov,dataStruct.lv,dataStruct.Sv,dataStruct.Sw,dataStruct.bw,dataStruct.Clalphav,dataStruct.ARv)
%lat_sc_Struct.Cndavaa=lat_sc_ymd_Cndavaa(dataStruct.Sw,dataStruct.bw,dataStruct.taw,dataStruct.Clalphaw,dataStruct.ARw,dataStruct.Cr,dataStruct.y2,dataStruct.y1,dataStruct.lamda,dataStruct.K,dataStruct.Cl)
%lat_sc_Struct.Cndavar=lat_sc_ymd_Cndavar(dataStruct.lv,dataStruct.Sv,dataStruct.Sw,dataStruct.bw,dataStruct.neuv,dataStruct.taw,dataStruct.Clalphav,dataStruct.ARv)
%lat_sc_Struct.Cnp=lat_sc_ymd_Cnp(dataStruct.Cl)
%lat_sc_Struct.Cnbeta=lat_sc_ymd_Cnbeta(dataStruct.lv,dataStruct.Sv,dataStruct.Sw,dataStruct.Clalphav,dataStruct.ARv,dataStruct.sweep,dataStruct.Zw,dataStruct.ARw,dataStruct.Kn,dataStruct.Krl,dataStruct.Sfs,dataStruct.lf,dataStruct.bw)

%lat_d_Struct.Lr=lat_d_Lr(dataStruct.Q,dataStruct.Sw,dataStruct.Ix,lat_sc_Struct.Clr,dataStruct.bw,dataStruct.Uo)
%lat_d_Struct.Ldavaa=lat_d_Ldavaa(dataStruct.dataStruct.Q,dataStruct.Sw,dataStruct.Ix,lat_sc_Struct.Cldavaa,dataStruct.bw)
%lat_d_Struct.Ldavar=lat_d_Ldavar(dataStruct.Q,dataStruct.Sw,dataStruct.Ix,lat_sc_Struct.Cldavar,dataStruct.bw)
%lat_d_Struct.Lp=lat_d_Lp(dataStruct.Q,dataStruct.Sw,dataStruct.Ix,lat_sc_Struct.Clp,dataStruct.bw,dataStruct.Uo)
%lat_d_Struct.Lbeta=lat_d_Lbeta(dataStruct.Q,dataStruct.Sw,dataStruct.Ix,lat_sc_Struct.Clbeta,dataStruct.bw)
%lat_d_Struct.Lv=lat_d_Struct.Lbeta/dataStruct.Uo;

%lat_d_Struct.Nr=lat_d_Nr(dataStruct.Q,dataStruct.Sw,dataStruct.Iz,lat_sc_Struct.Cnr,dataStruct.bw,dataStruct.Uo)
%lat_d_Struct.Ndavaa=lat_d_Ndavaa(dataStruct.Q,dataStruct.Sw,dataStruct.Iz,lat_sc_Struct.Cndavaa,dataStruct.bw)
%lat_d_Struct.Ndavar=lat_d_Ndavar(dataStruct.Q,dataStruct.Sw,dataStruct.Iz,lat_sc_Struct.Cndavar,dataStruct.bw)
%lat_d_Struct.Np=lat_d_Np(dataStruct.Q,dataStruct.Sw,dataStruct.Iz,lat_sc_Struct.Cnp,dataStruct.bw,dataStruct.Uo)
%lat_d_Struct.Nbeta=lat_d_Nbeta(dataStruct.Q,dataStruct.Sw,dataStruct.Iz,lat_sc_Struct.Cnbeta,dataStruct.bw)
%lat_d_Struct.Nv=lat_d_Struct.Nbeta/dataStruct.Uo;

%lat_d_Struct.Yr=lat_d_Yr(dataStruct.Q,dataStruct.Sw,dataStruct.m,lat_sc_Struct.Cyr,dataStruct.Uo,dataStruct.bw)
%lat_d_Struct.Ydavaa=lat_d_Ydavaa(dataStruct.Q,dataStruct.Sw,dataStruct.m,lat_sc_Struct.Cydavaa)
%lat_d_Struct.Ydavar=lat_d_Ydavar(dataStruct.Q,dataStruct.Sw,dataStruct.m,lat_sc_Struct.Cydavar)
%lat_d_Struct.Yp=lat_d_Yp(dataStruct.Q,dataStruct.Sw,dataStruct.m,lat_sc_Struct.Cyp,dataStruct.Uo,dataStruct.bw)
%lat_d_Struct.Ybeta=lat_d_Ybeta(dataStruct.Q,dataStruct.Sw,dataStruct.m,lat_sc_Struct.Cybeta)
%lat_d_Struct.Yv=lat_d_Struct.Ybeta/dataStruct.Uo;