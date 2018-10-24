function varargout = minertia(varargin)
% MINERTIA Application M-file for minertia.fig
%    FIG = MINERTIA launch minertia GUI.
%    MINERTIA('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 03-Oct-2001 21:31:58

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
function varargout = Ix_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Ix.

% --------------------------------------------------------------------
function varargout = Iy_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Iy.

% --------------------------------------------------------------------
function varargout = Iz_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Iz.

% --------------------------------------------------------------------
function varargout = save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
global dataStruct;
dataStruct.Ix=str2double(get(handles.Ix,'string'))  ;
dataStruct.Iy=str2double(get(handles.Iy,'string'))  ;
dataStruct.Iz=str2double(get(handles.Iz,'string'))  ;
dataStruct.Ixz=str2double(get(handles.Ixz,'string'))  ;
% --------------------------------------------------------------------
function varargout = ok_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ok.
delete(handles.minertia);

% --------------------------------------------------------------------

function loadData(handles)

global dataStruct;
set(handles.Iz,'String',num2str(dataStruct.Iz ) )
set(handles.Ix,'String',num2str(dataStruct.Ix ) )
set(handles.Iy,'String',num2str(dataStruct.Iy ) )
set(handles.Ixz,'String',num2str(dataStruct.Ixz) )
guidata(gcbo,handles)



% --------------------------------------------------------------------
function varargout = Ixz_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ixz.
