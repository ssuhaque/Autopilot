function varargout = flare(varargin)
% FLARE Application M-file for flare.fig
%    FIG = FLARE launch flare GUI.
%    FLARE('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 02-Jul-2002 02:54:58

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
    
    global tfc;
    tfc.tfdata=emptytfdata;
    tfc.tf=tf(1);
    
    global tffb;
    tffb.tfdata=emptytfdata;
    tffb.tf=(1);
    
    global reqtf;
    reqtf.tfdata=emptytfdata;
    reqtf.tf=tf(1);
    
    global autoTF;
    
    global tfauto;
    tfauto=autoTF.pitch; % to be confermed **********************
    
    [x,map] = imread('flare','bmp');
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
function varargout = autop_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.
d=guidata(gcbo);
pitch; % to confermed *****************************8888888888888
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.
delete(handles.flare);

% --------------------------------------------------------------------
function varargout = tfc_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.tfc.
global tfc;
global reqtf;
reqtf=tfc
tfunction;
tfc=reqtf;
rplot(handles);

% --------------------------------------------------------------------
function varargout = tffb_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.tfc.
global tffb;
global reqtf;
reqtf=tffb
tfunction;
tffb=reqtf;
rplot(handles);

% --------------------------------------------------------------------
function varargout = system_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.system.
rplot(handles);
if get(handles.system,'Value')==1    
    [x,map] = imread('flare','bmp');
end    
image(x,'Parent',handles.axes2)

% --------------------------------------------------------------------
function varargout = rplot(handles)

 global tfc;
 global tffb;
 global tfauto;
  
sys=get(handles.system,'Value');
ptype=get(handles.graph,'Value');

if sys==1 
    hin=tfc.tf*tfauto*tfad(handles);
    gin=tf(1);
    tfsysin=FEEDBACK(hin,gin);
    
    h=tfsysin*tf(1,[1,0]);
    g=tffb.tf;
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
function r = tfad(handles)
global dataStruct;

tf1=sptf('q','davae')*tf(1,[1,0]);
tf2=sptf('alpha','davae');
tfad1=tf(dataStruct.Uo,[1,0])*( tf1-tf2 );

tfad2=sptf('q','davae')*tf(1,[1,0]);  
r=tfad1/tfad2;

% --------------------------------------------------------------------
function varargout = graph_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.graph.
rplot(handles);