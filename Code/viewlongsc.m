function varargout = viewlongsc(varargin)
% VIEWLONGSC Application M-file for viewlongsc.fig
%    FIG = VIEWLONGSC launch viewlongsc GUI.
%    VIEWLONGSC('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 12-Sep-2001 18:59:52

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
function varargout = e1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e1.


% --------------------------------------------------------------------
function varargout = e2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e2.


% --------------------------------------------------------------------
function varargout = e3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e3.


% --------------------------------------------------------------------
function varargout = e4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e4.


% --------------------------------------------------------------------
function varargout = e5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e5.


% --------------------------------------------------------------------
function varargout = e6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e6.


% --------------------------------------------------------------------
function varargout = e7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e7.


% --------------------------------------------------------------------
function varargout = e8_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e8.


% --------------------------------------------------------------------
function varargout = e9_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e9.


% --------------------------------------------------------------------
function varargout = e10_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e10.


% --------------------------------------------------------------------
function varargout = e11_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e11.


% --------------------------------------------------------------------
function varargout = e12_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e12.


% --------------------------------------------------------------------
function varargout = e13_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e13.


% --------------------------------------------------------------------
function varargout = e14_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e14.


% --------------------------------------------------------------------
function varargout = e15_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.e15.

% --------------------------------------------------------------------
function loadData(handles)

global lon_sc_Struct;
set(handles.e1,'String',num2str(lon_sc_Struct.Cxu ))
set(handles.e2,'String',num2str(lon_sc_Struct.Cxalpha ))
set(handles.e3,'String',num2str(lon_sc_Struct.Cxalphadot ))
set(handles.e4,'String',num2str(lon_sc_Struct.Cxq ))
set(handles.e5,'String',num2str(lon_sc_Struct.Cxdavae ))

set(handles.e6, 'String',num2str(lon_sc_Struct.Czu ))
set(handles.e7, 'String',num2str(lon_sc_Struct.Czalpha ))
set(handles.e8, 'String',num2str(lon_sc_Struct.Czalphadot ))
set(handles.e9, 'String',num2str(lon_sc_Struct.Czq ))
set(handles.e10,'String',num2str(lon_sc_Struct.Czdavae ))

set(handles.e11,'String',num2str(lon_sc_Struct.Cmu ))
set(handles.e12,'String',num2str(lon_sc_Struct.Cmalpha ))
set(handles.e13,'String',num2str(lon_sc_Struct.Cmalphadot ))
set(handles.e14,'String',num2str(lon_sc_Struct.Cmq ))
set(handles.e15,'String',num2str(lon_sc_Struct.Cmdavae ))
guidata(gcbo,handles)


% --------------------------------------------------------------------
