function varargout = GAData(varargin)
% GADATA Application M-file for GAData.fig
%    FIG = GADATA launch GAData GUI.
%    GADATA('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 28-Sep-2001 02:34:39

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    

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
function varargout = aspect_ratio_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.aspect_ratio.
d=guidata(gcbo);
aspect_ratio;
guidata(gcbo,d);


% --------------------------------------------------------------------
function varargout = area_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.area.
d=guidata(gcbo);
area;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = efactor_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.efactor.
d=guidata(gcbo);
efactor;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = span_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.span.
d=guidata(gcbo);
span;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = achord_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.achord.
d=guidata(gcbo);
achord;
guidata(gcbo,d);


% --------------------------------------------------------------------
function varargout = vratio_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.vratio.
d=guidata(gcbo);
vratio;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = minertia_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.minertia.
d=guidata(gcbo);
minertia;
guidata(gcbo,d);


% --------------------------------------------------------------------
function varargout = achar_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.achar.
d=guidata(gcbo);
achar;
guidata(gcbo,d);


% --------------------------------------------------------------------
function varargout = rcoeff_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.rcoeff.
d=guidata(gcbo);
rcoeff;
guidata(gcbo,d);


% --------------------------------------------------------------------
function varargout = gdata_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.gdata.
d=guidata(gcbo);
gdata;
guidata(gcbo,d);


% --------------------------------------------------------------------
function varargout = mlength_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.mlength.
d=guidata(gcbo);
mlength;
guidata(gcbo,d);


% --------------------------------------------------------------------
function varargout = angle_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.angle.
d=guidata(gcbo);
wangle;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = fuselage_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.fuselage.
d=guidata(gcbo);
fuselage;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = wingd_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.wingd.
d=guidata(gcbo);
wingd;
guidata(gcbo,d);


% --------------------------------------------------------------------
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.
calculate(handles);
delete(handles.GAData);


% --------------------------------------------------------------------




