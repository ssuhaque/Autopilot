function varargout = wingd(varargin)
% WINGD Application M-file for wingd.fig
%    FIG = WINGD launch wingd GUI.
%    WINGD('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 26-Sep-2001 18:34:40

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    loadData(handles)
    [x,map] = imread('wing4','bmp');
    image(x,'Parent',handles.fig)
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
function varargout = cr_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.cr.
disp('cr Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = ct_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ct.
disp('ct Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = y1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.y1.
disp('y1 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = y2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.y2.
disp('y2 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
global dataStruct;
set(handles.cr,'String',num2str(dataStruct.cr) )
set(handles.ct,'String',num2str(dataStruct.ct) )
set(handles.y1,'String',num2str(dataStruct.y1) )
set(handles.y2,'String',num2str(dataStruct.y2) )


% --------------------------------------------------------------------
function varargout = ok_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.exit.
delete(handles.wingd);
% --------------------------------------------------------------------

function loadData(handles)

global dataStruct;
set(handles.cr,'String',num2str(dataStruct.cr) )
set(handles.ct,'String',num2str(dataStruct.ct) )
set(handles.y1,'String',num2str(dataStruct.y1) )
set(handles.y2,'String',num2str(dataStruct.y2) )
guidata(gcbo,handles)
