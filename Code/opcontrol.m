function varargout = opcontrol(varargin)
% OPCONTROL Application M-file for opcontrol.fig
%    FIG = OPCONTROL launch opcontrol GUI.
%    OPCONTROL('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 02-Jul-2002 02:52:44

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    
    set(handles.maxe,'String',num2str(0)) ;
    set(handles.maxa,'String',num2str(0)) ;
    set(handles.maxr,'String',num2str(0)) ;
    set(handles.maxT,'String',num2str(0)) ;
    
    set(handles.con1,'String',num2str(0)) ;
    set(handles.con2,'String',num2str(0)) ;
    set(handles.con3,'String',num2str(0)) ;
    set(handles.con4,'String',num2str(0)) ;
    
    set(handles.init1,'String',num2str(0)) ;
    set(handles.init2,'String',num2str(0)) ;
    set(handles.init3,'String',num2str(0)) ;
    set(handles.init4,'String',num2str(0)) ;
    sas_Callback(handles, 0, handles, 0)
    global dim;
    dim=4; 
    
    global A;
    A=0;
    global B;
    B=0;
    global Q;
    Q=0
    global R;
    R=0;
    global g
    g=1;
      
    
    
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
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton3.
delete(handles.opcontrol);


% --------------------------------------------------------------------
function varargout = sas_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.sas.
global dim;
global A;
global B;
global C;
global g;
 global lat_d_Struct;
 global dataStruct;
 global lon_d_Struct;
if( get(handles.sas,'Value') == 1 ) 
    set(handles.tcon1,'String','u');
    set(handles.tcon2,'String','w');
    set(handles.tcon3,'String','q');
    set(handles.tcon4,'String','theta');
    set(handles.tcon3,'Value',0);
    set(handles.tcon3,'Enable','on');
    set(handles.tcon4,'Value',0);
    set(handles.tcon4,'Enable','on');
    dim=4;
    set(handles.ccon1,'Value',0);
    set(handles.ccon1,'Enable','on');
    set(handles.ccon2,'Value',0);
    set(handles.ccon2,'Enable','off');
    set(handles.ccon3,'Value',0);
    set(handles.ccon3,'Enable','off');
    cn(1)=cellstr('u');
    cn(2)=cellstr('w');
    cn(3)=cellstr('q');
    cn(4)=cellstr('theta');
    set(handles.graph,'String',cn)
    A=[lon_d_Struct.Xu,lon_d_Struct.Xw,0,-dataStruct.g;....
       lon_d_Struct.Zu,lon_d_Struct.Zw,dataStruct.Uo,0;....
       lon_d_Struct.Mu+(lon_d_Struct.Mwdot*lon_d_Struct.Zu),lon_d_Struct.Mw+(lon_d_Struct.Mwdot*lon_d_Struct.Zw) , lon_d_Struct.Mq+(lon_d_Struct.Mwdot*dataStruct.Uo) ,0;.....
       0,0,1,0];
    
    B=[lon_d_Struct.Xdavae,lon_d_Struct.XdavaT;...
       lon_d_Struct.Zdavae,lon_d_Struct.ZdavaT;...
       lon_d_Struct.Mdavae+(lon_d_Struct.Mwdot*lon_d_Struct.Zdavae),lon_d_Struct.MdavaT+(lon_d_Struct.Mwdot*lon_d_Struct.ZdavaT);...
       0,0];
    C=[1,0,0,0];
    
    if get(handles.ccon2,'Value') == 1 & get(handles.ccon4,'Value') == 1
        g=[1;.25];B=B*g
    else
        g=1;
        if get(handles.ccon2,'Value') == 1 B=B(:,1); end;
        if get(handles.ccon4,'Value') == 1 B=B(:,2); end;
    end;
end;

if( get(handles.sas,'Value') == 2 ) 
    set(handles.tcon1,'String','v');
    set(handles.tcon2,'String','p');
    set(handles.tcon3,'String','r');
    set(handles.tcon4,'String','phi');
    set(handles.tcon3,'Value',0);
    set(handles.tcon3,'Enable','on');
    set(handles.tcon4,'Value',0);
    set(handles.tcon4,'Enable','on');
    dim=4;
    set(handles.ccon1,'Value',0);
    set(handles.ccon1,'Enable','off');
    set(handles.ccon2,'Value',0);
    set(handles.ccon2,'Enable','on');
    set(handles.ccon3,'Value',0);
    set(handles.ccon3,'Enable','on');
    cn(1)=cellstr('v');
    cn(2)=cellstr('p');
    cn(3)=cellstr('r');
    cn(4)=cellstr('phi');
    set(handles.graph,'String',cn)
    
    A=[lat_d_Struct.Yv,lat_d_Struct.Yp,-(dataStruct.Uo-lat_d_Struct.Yr),dataStruct.g ;....
            lat_d_Struct.Lv,lat_d_Struct.Lp,lat_d_Struct.Lr,0;....
            lat_d_Struct. Nv,lat_d_Struct.Np,lat_d_Struct.Nr,0;....
            0,1,0,0];
    B=[0,lat_d_Struct.Ydavar;....
      lat_d_Struct.Ldavaa,lat_d_Struct.Ldavar;....
      lat_d_Struct.Ndavaa,lat_d_Struct.Ndavar;....
      0,0];
    C=[1,0,0,0];
    
    if get(handles.ccon2,'Value') == 1 & get(handles.ccon3,'Value') == 1
        g=[1;.25];B=B*g
    else
        g=1;
        if get(handles.ccon2,'Value') == 1 B=B(:,1); end;
        if get(handles.ccon3,'Value') == 1 B=B(:,2); end;
    end;
    
end;

if( get(handles.sas,'Value') == 3 ) 
    set(handles.tcon1,'String','Beta');
    set(handles.tcon2,'String','r');
    set(handles.tcon3,'String','empty');
    set(handles.tcon4,'String','empty');
    set(handles.tcon3,'Value',0);
    set(handles.tcon3,'Enable','off');
    set(handles.tcon4,'Value',0);
    set(handles.tcon4,'Enable','off');
    dim=2;
    set(handles.ccon1,'Value',0);
    set(handles.ccon1,'Enable','off');
    set(handles.ccon2,'Value',0);
    set(handles.ccon2,'Enable','on');
    set(handles.ccon3,'Value',0);
    set(handles.ccon3,'Enable','on');
    cn(1)=cellstr('Beta');
    cn(2)=cellstr('r');
    set(handles.graph,'String',cn)
    A=[lat_d_Struct.Ybeta/dataStruct.Uo,-(1-lat_d_Struct.Yr/dataStruct.Uo);....
       lat_d_Struct.Nbeta,lat_d_Struct.Nr];
    B=[lat_d_Struct.Ydavar/dataStruct.Uo ,0 ;....
       lat_d_Struct.Ndavar , lat_d_Struct.Ndavaa];
    C=[1,0];
    
    if get(handles.ccon2,'Value') == 1 & get(handles.ccon3,'Value') == 1
        g=[1;.25];B=B*g
    else
        g=1;
        if get(handles.ccon2,'Value') == 1 B=B(:,1); end;
        if get(handles.ccon3,'Value') == 1 B=B(:,2); end;
    end;
end;

if( get(handles.sas,'Value') == 4 ) 
    set(handles.tcon1,'String','alpha');
    set(handles.tcon2,'String','q');
    set(handles.tcon3,'String','theta');
    set(handles.tcon4,'String','h');
    set(handles.tcon3,'Value',0);
    set(handles.tcon3,'Enable','on');
    set(handles.tcon4,'Value',0);
    set(handles.tcon4,'Enable','on');
    dim=4;
    set(handles.ccon1,'Value',0);
    set(handles.ccon1,'Enable','on');
    set(handles.ccon2,'Value',0);
    set(handles.ccon2,'Enable','off');
    set(handles.ccon3,'Value',0);
    set(handles.ccon3,'Enable','off');
    cn(1)=cellstr('alpha');
    cn(2)=cellstr('q');
    cn(3)=cellstr('theta');
    cn(4)=cellstr('h');
    set(handles.graph,'String',cn)
    
    A=[lon_d_Struct.Zalpha/dataStruct.Uo,1,0,0;....
       lon_d_Struct.Malpha+ (lon_d_Struct.Malphadot*lon_d_Struct.Malphadot*lon_d_Struct.Zalpha/dataStruct.Uo), lon_d_Struct.Mq+lon_d_Struct.Malphadot,0,0;....
       0,1,0,0;....
       -dataStruct.Uo,0,dataStruct.Uo,0];
    B=[lon_d_Struct.Zdavae/dataStruct.Uo ;.....
       lon_d_Struct.Mdavae+(lon_d_Struct.Zdavae/dataStruct.Uo);....
       0;...
       0];
    C=[1,0,0,0];
    g=1;
end;

if( get(handles.sas,'Value') == 5 ) 
    set(handles.tcon1,'String','u');
    set(handles.tcon2,'String','theta');
    set(handles.tcon3,'String','empty');
    set(handles.tcon4,'String','empty');
    set(handles.tcon3,'Value',0);
    set(handles.tcon3,'Enable','off');
    set(handles.tcon4,'Value',0);
    set(handles.tcon4,'Enable','off');
    dim=2;
    set(handles.ccon1,'Value',0);
    set(handles.ccon1,'Enable','on');
    set(handles.ccon2,'Value',0);
    set(handles.ccon2,'Enable','off');
    set(handles.ccon3,'Value',0);
    set(handles.ccon3,'Enable','off');
    cn(1)=cellstr('u');
    cn(2)=cellstr('theta');
    set(handles.graph,'String',cn)
    A=[lon_d_Struct.Xu,-dataStruct.g;-lon_d_Struct.Zu/dataStruct.Uo,0]
    B=[lon_d_Struct.Xdavae;-lon_d_Struct.Zdavae/dataStruct.Uo];
    C=[1,0];

    if get(handles.ccon2,'Value') == 1 & get(handles.ccon4,'Value') == 1
        g=[1;.25];B=B*g
    else
        g=1;
        if get(handles.ccon2,'Value') == 1 B=B(:,1); end;
        if get(handles.ccon4,'Value') == 1 B=B(:,2); end;
    end;
end;


% --------------------------------------------------------------------
function varargout = con1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.con1.

% --------------------------------------------------------------------
function varargout = con2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.con2.

% --------------------------------------------------------------------
function varargout = con3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.con3.

% --------------------------------------------------------------------
function varargout = con4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.con4.

% --------------------------------------------------------------------
function varargout = tcon1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.tcon1.


% --------------------------------------------------------------------
function varargout = maxe_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.maxe.

% --------------------------------------------------------------------
function varargout = maxr_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.maxr.

% --------------------------------------------------------------------
function varargout = maxa_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.maxa.

% --------------------------------------------------------------------
function varargout = maxT_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.maxT.

% --------------------------------------------------------------------
function varargout = init1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.maxa.

% --------------------------------------------------------------------
function varargout = init2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.maxa.

% --------------------------------------------------------------------
function varargout = init3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.maxa.

% --------------------------------------------------------------------
function varargout = init4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.maxa.

% --------------------------------------------------------------------
function varargout = cal_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.maxe.
setmat(handles)

% --------------------------------------------------------------------
function varargout = graph_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.graph.


% --------------------------------------------------------------------
function varargout = setmat(handles)

global dataStruct;
global dim;
global A;
global B;
global C;
global g;

if dataStruct.name(1)=='F' 
A=[-1.397 ,1,0,0; -5.47,-3.27,0,0; 0 ,1,0,0 ; -400,0,400,0]
B=[-0.124;-13.2;0;0];
C=[1,0,0,0];
end;

x0 = zeros(1,dim);
Q=zeros(dim);
if( get(handles.ccon1,'Value') == 1 ) R=(1/str2double( get(handles.maxe,'string') ))^2; end
if( get(handles.ccon2,'Value') == 1 ) R=(1/str2double( get(handles.maxa,'string') ))^2; end
if( get(handles.ccon3,'Value') == 1 ) R=(1/str2double( get(handles.maxr,'string') ))^2; end
if( get(handles.ccon4,'Value') == 1 ) R=(1/str2double( get(handles.maxT,'string') ))^2; end

if( get(handles.tcon1,'Value') == 1 ) Q(1,1)=(1/str2double( get(handles.con1,'string') ))^2 ;end
if( get(handles.tcon2,'Value') == 1 ) Q(2,2)=(1/str2double( get(handles.con2,'string') ))^2 ;end
if( get(handles.tcon3,'Value') == 1 ) Q(3,3)=(1/str2double( get(handles.con3,'string') ))^2 ;end
if( get(handles.tcon4,'Value') == 1 ) Q(4,4)=(1/str2double( get(handles.con4,'string') ))^2 ;end

[K,S,E]=lqr(A,B,Q,R);
kt=R^-1*B'*S;

t = 0:0.01:20;
u = 0*t;

if dim>0  x0(1)=str2double( get(handles.init1,'string') );end 
if dim>1  x0(2)=str2double( get(handles.init2,'string') );end
if dim>2  x0(3)=str2double( get(handles.init3,'string') );end
if dim>3  x0(4)=str2double( get(handles.init4,'string') );end

[y,x] = lsim(A-B*kt,B,C,0,u,t,x0);



if( get(handles.graph,'Value') == 1 )h = x(:,1);end; 
if( get(handles.graph,'Value') == 2 )h = x(:,2);end; 
if( get(handles.graph,'Value') == 3 )h = x(:,3);end; 
if( get(handles.graph,'Value') == 4 )h = x(:,4);end; 

set(handles.axes1,'XGrid','on','YGrid','on');
plot(t,h,'Parent',handles.axes1)







% --------------------------------------------------------------------
function varargout = ccon1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ccon1.
disp('ccon1 Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = ccon2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ccon2.
disp('ccon2 Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = ccon3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ccon3.
disp('ccon3 Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = ccon4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ccon4.
disp('ccon4 Callback not implemented yet.')