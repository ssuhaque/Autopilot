function varargout = viewlatsc(varargin)
% VIEWLATSC Application M-file for viewlatsc.fig
%    FIG = VIEWLATSC launch viewlatsc GUI.
%    VIEWLATSC('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 12-Sep-2001 21:03:53

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
function varargout = edit1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.


% --------------------------------------------------------------------
function varargout = edit2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.


% --------------------------------------------------------------------
function varargout = edit3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.


% --------------------------------------------------------------------
function varargout = edit4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.


% --------------------------------------------------------------------
function varargout = edit5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.


% --------------------------------------------------------------------
function varargout = edit6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.


% --------------------------------------------------------------------
function varargout = edit7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit7.


% --------------------------------------------------------------------
function varargout = edit8_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit8.


% --------------------------------------------------------------------
function varargout = edit9_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit9.


% --------------------------------------------------------------------
function varargout = edit10_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit10.


% --------------------------------------------------------------------
function varargout = edit11_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit11.


% --------------------------------------------------------------------
function varargout = edit12_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit11.


% --------------------------------------------------------------------
function varargout = edit13_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit11.


% --------------------------------------------------------------------
function varargout = edit14_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit11.


% --------------------------------------------------------------------
function varargout = edit15_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit11.

function loadData(handles)

global lat_sc_Struct;
set(handles.e1,'String',num2str(lat_sc_Struct.Cybeta ))
set(handles.e2,'String',num2str(lat_sc_Struct.Cyp ))
set(handles.e3,'String',num2str(lat_sc_Struct.Cyr ))
set(handles.e4,'String',num2str(lat_sc_Struct.Cydavaa ))
set(handles.e5,'String',num2str(lat_sc_Struct.Cydavar ))

set(handles.e6, 'String',num2str(lat_sc_Struct.Cnbeta ))
set(handles.e7, 'String',num2str(lat_sc_Struct.Cnp ))
set(handles.e8, 'String',num2str(lat_sc_Struct.Cnr ))
set(handles.e9, 'String',num2str(lat_sc_Struct.Cndavaa ))
set(handles.e10,'String',num2str(lat_sc_Struct.Cndavar ))

set(handles.e11,'String',num2str(lat_sc_Struct.Clbeta ))
set(handles.e12,'String',num2str(lat_sc_Struct.Clp ))
set(handles.e13,'String',num2str(lat_sc_Struct.Clr ))
set(handles.e14,'String',num2str(lat_sc_Struct.Cldavaa ))
set(handles.e15,'String',num2str(lat_sc_Struct.Cldavar ))
guidata(gcbo,handles)


% --------------------------------------------------------------------
