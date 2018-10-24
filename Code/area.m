function varargout = area(varargin)
% AREA Application M-file for area.fig
%    FIG = AREA launch area GUI.
%    AREA('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 25-Sep-2001 19:17:55

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    loadData(handles)

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
function varargout = Save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Save.
global dataStruct;
dataStruct.Sv=str2double(get(handles.Sv,'string'))  ;
dataStruct.Sw=str2double(get(handles.Sw,'string'))  ;
dataStruct.Sfs=str2double(get(handles.Sfs,'string'))  ;
dataStruct.St=str2double(get(handles.St,'string'))  ;
dataStruct.Se=str2double(get(handles.Se,'string'))  ;



% --------------------------------------------------------------------
function varargout = ok_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ok.
delete(handles.area);

% --------------------------------------------------------------------
function varargout = Sw_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Sw.

% --------------------------------------------------------------------
function varargout = St_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.St.

% --------------------------------------------------------------------
function varargout = Se_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Se.

% --------------------------------------------------------------------
function varargout = Sv_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Sv.

% --------------------------------------------------------------------
function varargout = Sfs_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Sfs.

% --------------------------------------------------------------------
function loadData(handles)

global dataStruct;
set(handles.Sw,'String',num2str(dataStruct.Sw ) )
set(handles.St,'String',num2str(dataStruct.St ) )
set(handles.Se,'String',num2str(dataStruct.Se ) )
set(handles.Sv,'String',num2str(dataStruct.Sv ) )
set(handles.Sfs,'String',num2str(dataStruct.Sfs ) )
guidata(gcbo,handles)

