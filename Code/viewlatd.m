function varargout = viewlatd(varargin)
% VIEWLATD Application M-file for viewlatd.fig
%    FIG = VIEWLATD launch viewlatd GUI.
%    VIEWLATD('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 26-Oct-2001 05:00:58

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    loadData(handles);    
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
function varargout = Ybeta_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.

% --------------------------------------------------------------------
function varargout = Yp_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.

% --------------------------------------------------------------------
function varargout = Yr_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.

% --------------------------------------------------------------------
function varargout = Ydavaa_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.

% --------------------------------------------------------------------
function varargout = Ydavar_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.

% --------------------------------------------------------------------
function varargout = Yv_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.

% --------------------------------------------------------------------
function varargout = Nbeta_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.

% --------------------------------------------------------------------
function varargout = Np_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.

% --------------------------------------------------------------------
function varargout = Nr_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.

% --------------------------------------------------------------------
function varargout = Ndavaa_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.

% --------------------------------------------------------------------
function varargout = Ndavar_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.

% --------------------------------------------------------------------
function varargout = Nv_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.

% --------------------------------------------------------------------
function varargout = Lbeta_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.

% --------------------------------------------------------------------
function varargout = Lp_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.

% --------------------------------------------------------------------
function varargout = Lr_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.

% --------------------------------------------------------------------
function varargout = Ldavaa_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.

% --------------------------------------------------------------------
function varargout = Ldavar_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.

% --------------------------------------------------------------------
function varargout = Lv_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.

% --------------------------------------------------------------------
function loadData(handles)

global lat_d_Struct;
set(handles.Ybeta,'String',num2str(lat_d_Struct.Ybeta ))
set(handles.Yp,'String',num2str(lat_d_Struct.Yp ))
set(handles.Yr,'String',num2str(lat_d_Struct.Yr ))
set(handles.Ydavaa,'String',num2str(lat_d_Struct.Ydavaa))
set(handles.Ydavar,'String',num2str(lat_d_Struct.Ydavar))

set(handles.Nbeta, 'String',num2str(lat_d_Struct.Nbeta ))
set(handles.Np, 'String',num2str(lat_d_Struct.Np ))
set(handles.Nr, 'String',num2str(lat_d_Struct.Nr ))
set(handles.Ndavaa, 'String',num2str(lat_d_Struct.Ndavaa))
set(handles.Ndavar,'String',num2str(lat_d_Struct.Ndavar ))

set(handles.Lbeta,'String',num2str(lat_d_Struct.Lbeta ))
set(handles.Lp,'String',num2str(lat_d_Struct.Lp ))
set(handles.Lr,'String',num2str(lat_d_Struct.Lr ))
set(handles.Ldavaa,'String',num2str(lat_d_Struct.Ldavaa ))
set(handles.Ldavar,'String',num2str(lat_d_Struct.Ldavar ))

set(handles.Yv,'String',num2str(lat_d_Struct.Yv ))
set(handles.Nv,'String',num2str(lat_d_Struct.Nv ))
set(handles.Lv,'String',num2str(lat_d_Struct.Lv ))
guidata(gcbo,handles)

% --------------------------------------------------------------------




% --------------------------------------------------------------------
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.
delete(handles.viewlatd);


% --------------------------------------------------------------------
function varargout = save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
global lat_d_Struct;
global dataStruct;
dataStruct.code=1;
lat_d_Struct.Ybeta=str2double(get(handles.Ybeta,'string'))  ;
lat_d_Struct.Yp=str2double(get(handles.Yp,'string'))  ;
lat_d_Struct.Yr=str2double(get(handles.Yr,'string'))  ;
lat_d_Struct.Ydavaa=str2double(get(handles.Ydavaa,'string'))  ;
lat_d_Struct.Ydavar=str2double(get(handles.Ydavar,'string'))  ;
lat_d_Struct.Yv=str2double(get(handles.Yv,'string'))  ;

lat_d_Struct.Nbeta=str2double(get(handles.Nbeta,'string'))  ;
lat_d_Struct.Np=str2double(get(handles.Np,'string'))  ;
lat_d_Struct.Nr=str2double(get(handles.Nr,'string'))  ;
lat_d_Struct.Ndavaa=str2double(get(handles.Ndavaa,'string'))  ;
lat_d_Struct.Ndavar=str2double(get(handles.Ndavar,'string'))  ;
lat_d_Struct.Nv=str2double(get(handles.Nv,'string'))  ;

lat_d_Struct.Lbeta=str2double(get(handles.Lbeta,'string'))  ;
lat_d_Struct.Lp=str2double(get(handles.Lp,'string'))  ;
lat_d_Struct.Lr=str2double(get(handles.Lr,'string'))  ;
lat_d_Struct.Ldavaa=str2double(get(handles.Ldavaa,'string'))  ;
lat_d_Struct.Ldavar=str2double(get(handles.Ldavar,'string'))  ;
lat_d_Struct.Lv=str2double(get(handles.Lv,'string'))  ;