 global dataStruct;
           dataStruct.name='F104A';
           dataStruct.code=1;
           
           dataStruct.Ix=3549;     % mass moments of inertia of plane about X axis measured about cg
           dataStruct.Iy=58611;     % mass moments of inertia of plane about Y axis measured about cg
           dataStruct.Iz=59669;     % mass moments of inertia of plane about Z axis measured about cg
           dataStruct.Ixz=0;
           
           dataStruct.Sw=196.1; % Wing area
           dataStruct.St=0;     % Horizontal tail area 
           dataStruct.Se=0;     % Elevator area 
           dataStruct.Sv=0;     % Vertical tail area         
           dataStruct.Sfs=0;    % The projected side area of the fuselage 
 
           dataStruct.ARw=0;    % Aspect ratio of wing 
           dataStruct.ARt=0;    % Aspect ratio of tail
           dataStruct.ARv=0;    % Aspect ratio of vertical tail

           dataStruct.bw=21.94;     % Wing span 
           dataStruct.bt=0;     % Horizontal tail span 
      
           dataStruct.W=16300;      % Aircraft weight 
           dataStruct.Uo=176;     % Velocity 

           dataStruct.cbarw=9.55;% Wing mean aerodynamic chord 
           dataStruct.cbart=0;  % tail mean aerodynamic chord     
          
           dataStruct.e=0;      % Span efficiency factor 
           dataStruct.p=0.00238;% Ambient air density 
           dataStruct.K=0;      % empirical factor to be used in Cndavaa
           dataStruct.g=32.2;      % gravity constant 
           dataStruct.m=0;      % mass of aircraft 
           dataStruct.M=0;      % match number 
           dataStruct.d=0;      % maximum fuselage depth
           dataStruct.Q=0;      % Dynamic presure 
           dataStruct.a=0;      % Local Speed of Sound 
           dataStruct.s_heat=0; % Specific heats
           dataStruct.R=0;      % Gas constant 
           dataStruct.T=0;      % Ambient Temperature
           dataStruct.flow=1;   % Various flow regimes
           
           dataStruct.neov=0;   % efficiency factor of vertical tail 
           dataStruct.neot=0;   % efficiency factor of horizontal tail 
     
           dataStruct.Zv=0;     % Distance from center of pressure of vertical tail to fuselage centerline
           dataStruct.Zw=0;     % Distance from wing root quarter chord point to fuselage centerline 

           dataStruct.kn=0;     % an empirical wing body interference factor that is a function of the fuselage geometry 
           dataStruct.krl=0;    % an empirical correction factor that is a function of the fuselage Reynolds number

           dataStruct.lf=0;     % fuselage length 
           dataStruct.lv=0;     % distance from cg to vertical tail aerodynamic center 
           dataStruct.lt=0;     % distance from cg to tail quarter chord
           dataStruct.lh=0;     % Distance from the wing trailing edge to the quater chord of the horizontal  tail
          
           dataStruct.lamda=0;  % tap ratio 
           dataStruct.taw=0;    % flap effectiveness factor 

           dataStruct.Xac=0;    % distance form wing leading edge to the aerodynamic center
           dataStruct.Xcg=0;    % distance form wing leading edge to the center og gravity 

           dataStruct.wf=zeros(1,12);     % Fuselage width see 61 
           dataStruct.Dx=zeros(1,12);
           dataStruct.xi=zeros(1,12);
           dataStruct.pd=zeros(1,12);
         
           dataStruct.surface=1; % boolean
           dataStruct.gliding=2; % boolean

           dataStruct.wsweep=0;   % sweep angle of wing quarter chord 
           dataStruct.wdehidral=0; % Dehidral angle of wing 
          
           dataStruct.Clalphaw=0; % wing airfoil characteristics (unit 1/deg)
           dataStruct.Clalphav=0; % vertical tail airfoil characteristics (unit 1/deg)
           dataStruct.Clalphat=0; % horizontal tail airfoil characteristics (unit 1/deg)

           dataStruct.Cm=0;       % referance pitching moment coefficient 
           dataStruct.Cd=0;       % referance drag coefficient 
           dataStruct.Cl=0;       % referance lift coefficient 
          
           dataStruct.y1=0; 
           dataStruct.y2=0;     % limits of region of aileron 

           dataStruct.cr=0;       % see 83
           dataStruct.ct=0;       % see 83
           
           dataStruct.Vh=0;
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
           lon_d_Struct.Xu=-0.0426;
           lon_d_Struct.Xw=0.0231;
           lon_d_Struct.Xwdot=0;
           lon_d_Struct.Xalpha=4.067;
           lon_d_Struct.Xalphadot=0;
           lon_d_Struct.Xq=0;
           lon_d_Struct.Xdavae=0;
           lon_d_Struct.XdavaT=0;
           
           lon_d_Struct.Zu=0.1192;
           lon_d_Struct.Zw=0.3003;
           lon_d_Struct.Zwdot=0;
           lon_d_Struct.Zalpha=52.855;
           lon_d_Struct.Zalphadot=0;
           lon_d_Struct.Zq=0;
           lon_d_Struct.Zdavae=9.70972;
           lon_d_Struct.ZdavaT=0;
           
           lon_d_Struct.Mu=0;
           lon_d_Struct.Mw=-6.432/1000;
           lon_d_Struct.Mwdot=-4.36/10000;
           lon_d_Struct.Malpha=-1.132;
           lon_d_Struct.Malphadot=-0.0767;
           lon_d_Struct.Mq=-2.2446;
           lon_d_Struct.Mdavae=2.5842;
           lon_d_Struct.MdavaT=0;
    global lon_d_Struct;
    
    global lat_d_Struct;
           lat_d_Struct.Ybeta=-16.7;
           lat_d_Struct.Yp=0;
           lat_d_Struct.Yr=0;
           lat_d_Struct.Ydavaa=0;
           lat_d_Struct.Ydavar=2.97;
           lat_d_Struct.Yv=0.094;
           
           lat_d_Struct.Nbeta=-1.3285;
           lat_d_Struct.Np=-0.3892;
           lat_d_Struct.Nr=-2.085;
           lat_d_Struct.Ndavaa=0.01115;
           lat_d_Struct.Ndavar=-0.425;
           lat_d_Struct.Nv=-7.548/1000;
           
           lat_d_Struct.Lbeta=-7.81;
           lat_d_Struct.Lp=-0.7923;
           lat_d_Struct.Lr=0.7367;
           lat_d_Struct.Ldavaa=1.742;
           lat_d_Struct.Ldavar=7.1476;
           lat_d_Struct.Lv=-0.044375;
    global lat_d_Struct;
    
    save F104A 'dataStruct'
    save F104A 'lon_d_Struct'  -append
    save F104A 'lat_d_Struct'  -append
    save F104A 'lon_sc_Struct' -append
    save F104A 'lat_sc_Struct' -append