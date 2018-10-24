function varargout = mlength(varargin)
% MLENGTH Application M-file for mlength.fig
%    FIG = MLENGTH launch mlength GUI.
%    MLENGTH('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 27-Sep-2001 04:00:02

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
function varargout = lf_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.

% --------------------------------------------------------------------
function varargout = lt_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.

% --------------------------------------------------------------------
function varargout = lv_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.

% --------------------------------------------------------------------
function varargout = lh_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.

% --------------------------------------------------------------------
function varargout = Xac_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.

% --------------------------------------------------------------------
function varargout = Xcg_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.

% --------------------------------------------------------------------
function varargout = dmax_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.

% --------------------------------------------------------------------
function varargout = save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
global dataStruct;
dataStruct.lf=str2double(get(handles.lf,'string'))  ;
dataStruct.lt=str2double(get(handles.lt,'string'))  ;
dataStruct.Iv=str2double(get(handles.Iv,'string'))  ;
dataStruct.Ih=str2double(get(handles.Ih,'string'))  ;
dataStruct.Xac=str2double(get(handles.Xac,'string'))  ;
dataStruct.Xcg=str2double(get(handles.Xcg,'string'))  ;
dataStruct.d=str2double(get(handles.dmax,'string'))  ;

% --------------------------------------------------------------------
function varargout = ok_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ok.
delete(handles.mlength);

% --------------------------------------------------------------------

function loadData(handles)

global dataStruct;
set(handles.lf,'String',num2str(dataStruct.lf ) )
set(handles.lt,'String',num2str(dataStruct.lt ) )
set(handles.lv,'String',num2str(dataStruct.lv ) )
set(handles.lh,'String',num2str(dataStruct.lh ) )
set(handles.Xac,'String',num2str(dataStruct.Xac ) )
set(handles.Xcg,'String',num2str(dataStruct.Xcg ) )
set(handles.dmax,'String',num2str(dataStruct.d ) )

guidata(gcbo,handles)


% --------------------------------------------------------------------

