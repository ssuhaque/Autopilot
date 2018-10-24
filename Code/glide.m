function varargout = glide(varargin)
% GLIDE Application M-file for glide.fig
%    FIG = GLIDE launch glide GUI.
%    GLIDE('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 02-Jul-2002 02:51:01

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
    
    global R;
        R=45;
        
    global tfgpc;
    tfgpc.tfdata=emptytfdata;
    tfgpc.tf=tf(1);
   
    global reqtf;
    reqtf.tfdata=emptytfdata;
    reqtf.tf=tf(1);
    
    
    [x,map] = imread('glide','bmp');
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
function varargout = tfgpc_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.tfgpc.
global tfgpc;
global reqtf;
reqtf=tfgpc
tfunction;
tfgpc=reqtf;
rplot(handles);


% --------------------------------------------------------------------
function varargout = pitch_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pitch.
d=guidata(gcbo);
pitch;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.
delete(handles.glide);


% --------------------------------------------------------------------
function varargout = system_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.system.
rplot(handles)
if get(handles.system,'Value')==1    
    [x,map] = imread('glide','bmp');
end    
image(x,'Parent',handles.axes2)
% --------------------------------------------------------------------
function varargout = rplot(handles)

global tfgpc;
global autoTF;
global R;
global dataStruct;


sys=get(handles.system,'Value');
ptype=get(handles.graph,'Value');

if sys==1 
    h=tfgpc.tf * autoTF.pitch * tf(dataStruct.Uo,[57.3,0]) * tf(57.3,R);
    g=tf(1);
    tfsys=FEEDBACK(h,g);

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
