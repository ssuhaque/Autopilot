function varargout = velocity(varargin)
% VELOCITY Application M-file for velocity.fig
%    FIG = VELOCITY launch velocity GUI.
%    VELOCITY('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 02-Jul-2002 02:52:07

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    
    emptytfdata.n4=0;
    emptytfdata.n3=0;
    emptytfdata.n2=0;
    emptytfdata.n1=0;
    emptytfdata.n0=0;
    
    emptytfdata.d4=0;
    emptytfdata.d3=0;
    emptytfdata.d2=0;
    emptytfdata.d1=0;
    emptytfdata.d0=0;
    
    emptytfdata.z0=0;
    emptytfdata.z1=0;
    emptytfdata.z2=0;
    emptytfdata.z3=0;
    emptytfdata.z4=0;
    
    emptytfdata.p0=0;
    emptytfdata.p1=0;
    emptytfdata.p2=0;
    emptytfdata.p3=0;
    emptytfdata.p4=0;

    emptytfdata.type=0;
    emptytfdata.gain=1;
    
    global tfel;
    tfel.tfdata=emptytfdata;
    tfel.tf=tf(1);
    
    global tffb;
    tffb.tfdata=emptytfdata;
    tffb.tf=tf(1);
    
    global tfetc;
    tfetc.tfdata=emptytfdata;
    tfetc.tf=tf(1);
    
    global tfampc;
    tfampc.tfdata=emptytfdata;
    tfampc.tf=tf(1);
    
    global reqtf;
    reqtf.tfdata=emptytfdata;
    reqtf.tf=tf(1);
    
    global tfad;
    tfad=lptf('u','davaT');%tf(3,[1,12,25,50]);
    
    global Kpu;
    Kpu=0;
    
    global Tu;
    Tu=0;
    
    
    set(handles.Kpu,'String',num2str(Kpu));
    set(handles.Tu,'String',num2str(Tu));
    
    
    [x,map] = imread('pid-velocity','bmp');
    image(x,'Parent',handles.axes2)
    
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
function varargout = system_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.system.
rplot(handles);


if get(handles.system,'Value')==1 
   [x,map] = imread('pid-velocity','bmp');
end

if get(handles.system,'Value')==2 
   [x,map] = imread('comp-velocity','bmp');
end
image(x,'Parent',handles.axes2)

% --------------------------------------------------------------------
function varargout = tfampc_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.comp.
global tfampc;
global reqtf;
reqtf=tfampc;
tfunction;
tfampc=reqtf
rplot(handles);

% --------------------------------------------------------------------
function varargout = tfetc_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.tfetc.
global tfetc;
global reqtf;
reqtf=tfetc;
tfunction;
tfetc=reqtf;
rplot(handles);

% --------------------------------------------------------------------
function varargout = tfel_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.tfel.
global tfel;
global reqtf;
reqtf=tfel;
tfunction;
tfel=reqtf;
rplot(handles);

% --------------------------------------------------------------------
function varargout = tffb_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.tffb.
global tffb;
global reqtf;
reqtf=tffb
tfunction;
tffb=reqtf;
rplot(handles);

% --------------------------------------------------------------------
function varargout = Kpu_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Kpu.
global Kpu;
global Tu;
Kpu=str2double( get(h,'string') );

if get(handles.system,'Value')==1 & Tu>0 & Kpu>0
   rplot(handles);
end

% --------------------------------------------------------------------
function varargout = Tu_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Tu.
global Tu;
global Kpu;
Tu=str2double( get(h,'string') );

if get(handles.system,'Value')==1  & Tu>0 & Kpu>0
   rplot(handles);
end

% --------------------------------------------------------------------
function varargout = P_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.P.
if get(h,'Value')==0 
    set(handles.I,'Value',0);
    set(handles.D,'Value',0);
end 
if get(handles.system,'Value')==1
   rplot(handles);
end   

% --------------------------------------------------------------------
function varargout = I_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.I.
if get(h,'Value')==1 set(handles.P,'Value',1); end 
if get(h,'Value')==0 set(handles.D,'Value',0); end 
if get(handles.system,'Value')==1 
   rplot(handles);
end

% --------------------------------------------------------------------
function varargout = D_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.D.
if get(h,'Value')==1 
   set(handles.P,'Value',1);
   set(handles.I,'Value',1);
end

if get(handles.system,'Value')==1
   rplot(handles);
end

% --------------------------------------------------------------------
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.
delete(handles.velocity);


% --------------------------------------------------------------------
function tfpid = pid(handles)
global Kpu;
global Tu;

Pstatus=get(handles.P,'Value');
Istatus=get(handles.I,'Value');
Dstatus=get(handles.D,'Value');
kp=0;
ki=0;
kd=0;

if Pstatus==1 & Istatus==0 & Dstatus==0 % ok
   if Kpu>0 & Tu>0 
        kp=0.5*Kpu; 
        tfpid=kp;
  end 
end


if Pstatus==1 & Istatus==1 & Dstatus==0 % ok
    if Kpu>0 & Tu>0 
        kp=.45*Kpu;  
        ki=.45*Kpu/(0.83*Tu); 
        tfpid=tf([kp,ki],[1,0]);
    end 
end


if Pstatus==1 & Istatus==1 & Dstatus==1  % ok   
   if Kpu>0 & Tu>0 
       kp=0.6*Kpu;  
       ki=0.6*Kpu/(0.5*Tu); 
       kd=0.6*Kpu*0.125*Tu; 
       tfpid=tf([kd,kp,ki],[1,0]);
   end;
end

if (Pstatus==0 & Istatus==0 & Dstatus==0) | (kp==0 & ki==0 & kd==0)
    tfpid=tf(1);
end

if Pstatus==1 | Istatus==1 | Dstatus==1 
tfpid=tf([kd,kp,ki],[1,0]);
end

% --------------------------------------------------------------------
function varargout = rplot(handles)

global dataStruct;
global tfel;
global tffb;
global tfetc;
global tfampc;

global tfad;
global autoTF;

sys=get(handles.system,'Value');
ptype=get(handles.graph,'Value');

if dataStruct.name(1)=='F' 
    tfad=tf([0.038,0],[1,0.039,0.039,0.053]); 
end;
if sys==1 
    h=pid(handles)*tfetc.tf*tfel.tf*tfad;
    g=tffb.tf;
    
    tfsys=FEEDBACK(h,g);
    autoTF.velocity=tfsys;
end

if sys==2 
    h=tfampc.tf*tfetc.tf*tfel.tf*tfad;
    g=tffb.tf;
    
    tfsys=FEEDBACK(h,g);
    autoTF.velocity=tfsys;
end


if ptype==1  plot(step(tfsys),'Parent',handles.axes1); end;
%if ptype==2  plot(impulse(tfsys),'Parent',handles.axes1); end;
%if ptype==3  plot(nyquist(tfsys),'Parent',handles.axes1); end;
%if ptype==4  plot(nichols(tfsys),'Parent',handles.axes1); end;
%if ptype==5  plot(bode(tfsys),'Parent',handles.axes1); end;
%if ptype==6  plot(margin(tfsys),'Parent',handles.axes1); end;
%if ptype==7  plot(pzmap(tfsys),'Parent',handles.axes1); end;
if ptype==2 pzmap(tfsys); end;
set(handles.axes1,'XGrid','on','YGrid','on');

% --------------------------------------------------------------------
function varargout = graph_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.graph.
rplot(handles);
