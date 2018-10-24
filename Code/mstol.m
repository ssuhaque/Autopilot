global dataStruct;
          dataStruct.name='STOL';
          dataStruct.code=0;
          
          dataStruct.Ix=0;     % mass moments of inertia of plane about X axis measured about cg
          dataStruct.Iy=21500;     % mass moments of inertia of plane about Y axis measured about cg
          dataStruct.Iz=0;     % mass moments of inertia of plane about Z axis measured about cg
          dataStruct.Ixz=0;
          
          dataStruct.Sw=945;     % Wing area
          dataStruct.St=233;     % Horizontal tail area 
          dataStruct.Se=81.5;     % Elevator area 
          dataStruct.Sv=0;     % Vertical tail area         
          dataStruct.Sfs=0;    % The projected side area of the fuselage 

          dataStruct.ARw=9.75;    % Aspect ratio of wing 
          dataStruct.ARt=4.4;    % Aspect ratio of tail
          dataStruct.ARv=0;    % Aspect ratio of vertical tail

          dataStruct.bw=96;     % Wing span 
          dataStruct.bt=32;     % Horizontal tail span 
      
          dataStruct.W=40000;      % Aircraft weight 
          dataStruct.Uo=215;     % Velocity 

          dataStruct.cbarw=10.1;  % Wing mean aerodynamic chord 
          dataStruct.cbart=7;  % tail mean aerodynamic chord     
          
          dataStruct.e=0.75;      % Span efficiency factor 
          dataStruct.p=0.0024;      % Ambient air density 
          dataStruct.K=0;      % empirical factor to be used in Cndavaa
          dataStruct.g=32.2;      % gravity constant 
          dataStruct.m=0;      % mass of aircraft 
          dataStruct.M=0;      % match number 
          dataStruct.d=0;      % maximum fuselage depth
          dataStruct.Q=0;      % dynamic persure
          dataStruct.neov=0;   % efficiency factor of vertical tail 
          dataStruct.neot=1;   % efficiency factor of horizontal tail 
          dataStruct.a=1116.4; % see 15 and 7
          dataStruct.s_heat=0; % Specific heats
          dataStruct.R=0;      % Gas constant 
          dataStruct.T=0;      % Ambient Temperature
          dataStruct.flow=1;   % Various flow regimes

          dataStruct.Zv=0;     % Distance from center of pressure of vertical tail to fuselage centerline
          dataStruct.Zw=0;     % Distance from wing root quarter chord point to fuselage centerline 

          dataStruct.kn=0;     % an empirical wing body interference factor that is a function of the fuselage geometry 
          dataStruct.krl=0;    % an empirical correction factor that is a function of the fuselage Reynolds number

          dataStruct.lf=0;     % fuselage length 
          dataStruct.lv=0;     % distance from cg to vertical tail aerodynamic center 
          dataStruct.lt=46;    % distance from cg to tail quarter chord
          dataStruct.lh=0;     % Distance from the wing trailing edge to the quater chord of the horizontal  tail
          
          dataStruct.lamda=0;  % tap ratio 
          dataStruct.taw=0.55;    % flap effectiveness factor 

          dataStruct.Xac=2.525;    % distance form wing leading edge to the aerodynamic center
          dataStruct.Xcg=4.04;    % distance form wing leading edge to the center og gravity 

          dataStruct.wf=zeros(1,12);     % Fuselage width see 61 
          dataStruct.Dx=zeros(1,12);
          dataStruct.xi=zeros(1,12);
          dataStruct.pd=zeros(1,12);
          
          dataStruct.Dx(1)=4.4;  dataStruct.wf(1)=4.4;   dataStruct.xi(1)=20.2;  dataStruct.pd(1)=0.34;   
          dataStruct.Dx(2)=2.5;  dataStruct.wf(2)=6.9;   dataStruct.xi(2)=17.0;  dataStruct.pd(2)=0.34;   
          dataStruct.Dx(3)=5.0;  dataStruct.wf(3)=8.8;   dataStruct.xi(3)=13.9;  dataStruct.pd(3)=0.34;   
          dataStruct.Dx(4)=5.0;  dataStruct.wf(4)=9.5;   dataStruct.xi(4)=7.6;   dataStruct.pd(4)=0.34;   
          dataStruct.Dx(5)=5.0;  dataStruct.wf(5)=10.1;  dataStruct.xi(5)=2.5;   dataStruct.pd(5)=0.34;   
          dataStruct.Dx(6)=6.3;  dataStruct.wf(6)=10.1;  dataStruct.xi(6)=2.5;   dataStruct.pd(6)=0.34;   
          dataStruct.Dx(7)=6.3;  dataStruct.wf(7)=10.1;  dataStruct.xi(7)=8.8;   dataStruct.pd(7)=0.34;   
          dataStruct.Dx(8)=6.3;  dataStruct.wf(8)=10.1;  dataStruct.xi(8)=15.1;  dataStruct.pd(8)=0.34;   
          dataStruct.Dx(9)=6.3;  dataStruct.wf(9)=8.2;   dataStruct.xi(9)=21.4;  dataStruct.pd(9)=0.34;   
          dataStruct.Dx(10)=6.3; dataStruct.wf(10)=7.6;  dataStruct.xi(10)=27.7; dataStruct.pd(10)=0.34;     
          dataStruct.Dx(11)=5.0; dataStruct.wf(11)=5.1;  dataStruct.xi(11)=33.4; dataStruct.pd(11)=0.34;          
          dataStruct.Dx(12)=5.0; dataStruct.wf(12)=2.5;  dataStruct.xi(12)=39.7; dataStruct.pd(12)=0.34;    
          
          dataStruct.surface=1; % boolean
          dataStruct.gliding=2; % boolean

          dataStruct.wsweep=0;   % sweep angle of wing quarter chord 
          dataStruct.wdehidral=0; % Dehidral angle of wing 
          
          dataStruct.Clalphaw=0.1092; % wing airfoil characteristics (unit 1/deg)
          dataStruct.Clalphav=0.0; % vertical tail airfoil characteristics (unit 1/deg)
          dataStruct.Clalphat=0.08178; % horizontal tail airfoil characteristics (unit 1/deg)

          dataStruct.Cm=0;       % referance pitching moment coefficient 
          dataStruct.Cd=.057;       % referance drag coefficient 
          dataStruct.Cl=0.77;       % referance lift coefficient 
                    
          dataStruct.y1=0; 
          dataStruct.y2=0;     % limits of region of aileron 
          
          dataStruct.cr=0;       % see 83
          dataStruct.ct=0;       % see 83

          dataStruct.Vh=1.1;
          dataStruct.Vv=0;

global dataStruct;

  
    global lon_sc_Struct;
           lon_sc_Struct.Cxu=0;
           lon_sc_Struct.Cxalpha=0;
           lon_sc_Struct.Cxalphadot=0;
           lon_sc_Struct.Cxq=0;
           lon_sc_Struct.Cxdavae=0;
           lon_sc_Struct.Czu=0;
           lon_sc_Struct.Czalpha=0;
           lon_sc_Struct.Czalphadot=0;
           lon_sc_Struct.Czq=0;
           lon_sc_Struct.Czdavae=0;
           lon_sc_Struct.Cmu=0;
           lon_sc_Struct.Cmalpha=0;
           lon_sc_Struct.Cmalphadot=0;
           lon_sc_Struct.Cmq=0;
           lon_sc_Struct.Cmdavae=0;
    global lon_sc_Struct;
    
    global lat_sc_Struct;
           lat_sc_Struct.Cybeta=0;
           lat_sc_Struct.Cyp=0;
           lat_sc_Struct.Cyr=0;
           lat_sc_Struct.Cydavaa=0;
           lat_sc_Struct.Cydavar=0;           
           lat_sc_Struct.Cnbeta=0;
           lat_sc_Struct.Cnp=0;
           lat_sc_Struct.Cnr=0;
           lat_sc_Struct.Cndavaa=0;
           lat_sc_Struct.Cndavar=0;          
           lat_sc_Struct.Clbeta=0;
           lat_sc_Struct.Clp=0;
           lat_sc_Struct.Clr=0;
           lat_sc_Struct.Cldavaa=0;
           lat_sc_Struct.Cldavar=0;
    global lat_sc_Struct;
    
    global lon_d_Struct;
           lon_d_Struct.Xu=0;
           lon_d_Struct.Xw=0;
           lon_d_Struct.Xwdot=0;
           lon_d_Struct.Xalpha=0;
           lon_d_Struct.Xalphadot=0;
           lon_d_Struct.Xq=0;
           lon_d_Struct.Xdavae=0;
           lon_d_Struct.XdavaT=0;
           
           lon_d_Struct.Zu=0;
           lon_d_Struct.Zw=0;
           lon_d_Struct.Zwdot=0;
           lon_d_Struct.Zalpha=0;
           lon_d_Struct.Zalphadot=0;
           lon_d_Struct.Zq=0;
           lon_d_Struct.Zdavae=0;
           lon_d_Struct.ZdavaT=0;           

           lon_d_Struct.Mu=0;
           lon_d_Struct.Mw=0;
           lon_d_Struct.Mwdot=0;
           lon_d_Struct.Malpha=0;
           lon_d_Struct.Malphadot=0;
           lon_d_Struct.Mq=0;
           lon_d_Struct.Mdavae=0;
           lon_d_Struct.MdavaT=0;           
    global lon_d_Struct;
    
    global lat_d_Struct;
           lat_d_Struct.Ybeta=0;
           lat_d_Struct.Yp=0;
           lat_d_Struct.Yr=0;
           lat_d_Struct.Ydavaa=0;
           lat_d_Struct.Ydavar=0;
           lat_d_Struct.Yv=0;
           
           lat_d_Struct.Nbeta=0;
           lat_d_Struct.Np=0;
           lat_d_Struct.Nr=0;
           lat_d_Struct.Ndavaa=0;
           lat_d_Struct.Ndavar=0;
           lat_d_Struct.Nv=0;
           
           lat_d_Struct.Lbeta=0;
           lat_d_Struct.Lp=0;
           lat_d_Struct.Lr=0;
           lat_d_Struct.Ldavaa=0;
           lat_d_Struct.Ldavar=0;
           lat_d_Struct.Lv=0;
    global lat_d_Struct;
    
    save STOL 'dataStruct'
    save STOL 'lon_d_Struct'  -append
    save STOL 'lat_d_Struct'  -append
    save STOL 'lon_sc_Struct' -append
    save STOL 'lat_sc_Struct' -append