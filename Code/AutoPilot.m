function varargout = AutoPilot(varargin)
% AUTOPILOT Application M-file for AutoPilot.fig
%    FIG = AUTOPILOT launch AutoPilot GUI.
%    AUTOPILOT('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 20-Oct-2001 05:28:13

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

    global dataStruct;
           dataStruct.name='New';
           dataStruct.code=0;
           
           dataStruct.Ix=0;     % mass moments of inertia of plane about X axis measured about cg
           dataStruct.Iy=0;     % mass moments of inertia of plane about Y axis measured about cg
           dataStruct.Iz=0;     % mass moments of inertia of plane about Z axis measured about cg
           dataStruct.Ixz=0;
           
           dataStruct.Sw=0;     % Wing area
           dataStruct.St=0;     % Horizontal tail area 
           dataStruct.Se=0;     % Elevator area 
           dataStruct.Sv=0;     % Vertical tail area         
           dataStruct.Sfs=0;    % The projected side area of the fuselage 
 
           dataStruct.ARw=0;    % Aspect ratio of wing 
           dataStruct.ARt=0;    % Aspect ratio of tail
           dataStruct.ARv=0;    % Aspect ratio of vertical tail

           dataStruct.bw=0;     % Wing span 
           dataStruct.bt=0;     % Horizontal tail span 
      
           dataStruct.W=0;      % Aircraft weight 
           dataStruct.Uo=0;     % Velocity 

           dataStruct.cbarw=0;  % Wing mean aerodynamic chord 
           dataStruct.cbart=0;  % tail mean aerodynamic chord     
          
           dataStruct.e=0;      % Span efficiency factor 
           dataStruct.p=0;      % Ambient air density 
           dataStruct.K=0;      % empirical factor to be used in Cndavaa
           dataStruct.g=0;      % gravity constant 
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
    
    global autoTF
           autoTF.pitch   =tf(1);
           autoTF.roll    =tf(1);
           autoTF.heading =tf(1);
           autoTF.velocity=tf(1);
           autoTF.altitude=tf(1);           
    global autoTF;
    set(handles.model,'String',dataStruct.name);    
	% Wait for callbacks to run and window to be dismissed:
	uiwait(fig);

	if nargout > 0
		varargout{1} = fig;
	end

elseif ischar(varargin{1}) % INVOKE NAMED SUBFUNCTION OR CALLBACK

	try
		[varargout{1:nargout}] = feval(varargin{:}); % FEVAL switchyard
	catch
		disp(lasterr);
	end

end


%| ABOUT CALLBACKS:
%| GUIDE automatically appends subfunction prototypes to this file, and 
%| sets objects' callback properties to call them through the FEVAL 
%| switchyard above. This comment describes that mechanism.
%|
%| Each callback subfunction declaration has the following form:
%| <SUBFUNCTION_NAME>(H, EVENTDATA, HANDLES, VARARGIN)
%|
%| The subfunction name is composed using the object's Tag and the 
%| callback type separated by '_', e.g. 'slider2_Callback',
%| 'figure1_CloseRequestFcn', 'axis1_ButtondownFcn'.
%|
%| H is the callback object's handle (obtained using GCBO).
%|
%| EVENTDATA is empty, but reserved for future use.
%|
%| HANDLES is a structure containing handles of components in GUI using
%| tags as fieldnames, e.g. handles.figure1, handles.slider2. This
%| structure is created at GUI startup using GUIHANDLES and stored in
%| the figure's application data using GUIDATA. A copy of the structure
%| is passed to each callback.  You can store additional information in
%| this structure at GUI startup, and you can change the structure
%| during callbacks.  Call guidata(h, handles) after changing your
%| copy to replace the stored original so that subsequent callbacks see
%| the updates. Type "help guihandles" and "help guidata" for more
%| information.
%|
%| VARARGIN contains any extra arguments you have passed to the
%| callback. Specify the extra arguments by editing the callback
%| property in the inspector. By default, GUIDE sets the property to:
%| <MFILENAME>('<SUBFUNCTION_NAME>', gcbo, [], guidata(gcbo))
%| Add any extra arguments after the last argument, before the final
%| closing parenthesis.


% --------------------------------------------------------------------
 function varargout = model_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.model.


% --------------------------------------------------------------------
 function varargout = data_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
global dataStruct;
d=guidata(gcbo);
Indata;
guidata(gcbo,d);
set(handles.model,'String',dataStruct.name);    


% --------------------------------------------------------------------
 function varargout = pitch_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
d=guidata(gcbo);
pitch;
guidata(gcbo,d);


% --------------------------------------------------------------------
 function varargout = roll_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
d=guidata(gcbo);
roll;
guidata(gcbo,d);


% --------------------------------------------------------------------
 function varargout = heading_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
d=guidata(gcbo);
heading;
guidata(gcbo,d);


% --------------------------------------------------------------------
 function varargout = altitude_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
d=guidata(gcbo);
altitude;
guidata(gcbo,d);


% --------------------------------------------------------------------
 function varargout = velocity_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
d=guidata(gcbo);
velocity;
guidata(gcbo,d);



% --------------------------------------------------------------------
 function varargout = glide_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
d=guidata(gcbo);
glide;
guidata(gcbo,d);


% --------------------------------------------------------------------
 function varargout = flare_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
d=guidata(gcbo);
flare;
guidata(gcbo,d);


% --------------------------------------------------------------------
 function varargout = opcontrol_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
d=guidata(gcbo);
opcontrol;
guidata(gcbo,d);


% --------------------------------------------------------------------
 function varargout = saug_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.data.
d=guidata(gcbo);
saug;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = exit_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.exit.
delete(handles.autopilot);