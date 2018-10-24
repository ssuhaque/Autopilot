function varargout = GAData2(varargin)
% GADATA2 Application M-file for GAData2.fig
%    FIG = GADATA2 launch GAData2 GUI.
%    GADATA2('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 25-Oct-2001 18:02:29

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    loadData(handles)
    
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
function varargout = Sw_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
disp('save Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = m_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
dataStruct.m=str2double(get(handles.m,'string'))  ;

if dataStruct.W==0
    if dataStruct.m>0 & dataStruct.g>0 
        dataStruct.W=dataStruct.m/dataStruct.g;
    end
end

set(handles.W,'String',num2str(dataStruct.W ) )
% --------------------------------------------------------------------
function varargout = g_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
dataStruct.g=str2double(get(handles.g,'string'))  ;

if dataStruct.W==0
    if dataStruct.m>0 & dataStruct.g>0 
        dataStruct.W=dataStruct.m/dataStruct.g;
    end
end

if dataStruct.m==0
    if dataStruct.W>0 & dataStruct.g>0 
        dataStruct.m=dataStruct.W/dataStruct.g;
    end
end

set(handles.W,'String',num2str(dataStruct.W ) )

% --------------------------------------------------------------------
function varargout = p_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
dataStruct.p=str2double(get(handles.p,'string'))  ;
if dataStruct.Q==0
    if dataStruct.p>0 & dataStruct.Uo>0 
        dataStruct.m=(0.5)*dataStruct.p*dataStruct.Uo^2;
    end
end
set(handles.Q,'String',num2str(dataStruct.Q ) )

% --------------------------------------------------------------------
function varargout = Q_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
disp('save Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = W_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
dataStruct.W=str2double(get(handles.W,'string'))  ;

if dataStruct.m==0
    if dataStruct.W>0 & dataStruct.g>0 
        dataStruct.m=dataStruct.W/dataStruct.g;
    end
end

set(handles.m,'String',num2str(dataStruct.m ) )

% --------------------------------------------------------------------
function varargout = Uo_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
disp('save Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = bw_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
disp('save Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = Ix_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
disp('save Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = Iy_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
disp('save Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = Iz_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
disp('save Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
global dataStruct;
dataStruct.code=0;
dataStruct.Sw=str2double(get(handles.Sw,'string'))  ;
dataStruct.m=str2double(get(handles.m,'string'))  ;
dataStruct.g=str2double(get(handles.g,'string'))  ;
dataStruct.p=str2double(get(handles.p,'string'))  ;
dataStruct.Q=str2double(get(handles.Q,'string'))  ;
dataStruct.W=str2double(get(handles.W,'string'))  ;
dataStruct.Uo=str2double(get(handles.Uo,'string'))  ;
dataStruct.bw=str2double(get(handles.bw,'string'))  ;
dataStruct.Ix=str2double(get(handles.Ix,'string'))  ;
dataStruct.Iy=str2double(get(handles.Iy,'string'))  ;
dataStruct.Iz=str2double(get(handles.Iz,'string'))  ;

% --------------------------------------------------------------------
function varargout = Close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Close.
delete(handles.GAData2);


% --------------------------------------------------------------------
function loadData(handles)

global dataStruct;
set(handles.Sw,'String',num2str(dataStruct.Sw ) )
if dataStruct.m==0
    if dataStruct.W>0 & dataStruct.g>0 
        dataStruct.m=dataStruct.W/dataStruct.g;
    end
end
set(handles.m,'String',num2str(dataStruct.m ) )
set(handles.g,'String',num2str(dataStruct.g ) )
set(handles.p,'String',num2str(dataStruct.p ) )

if dataStruct.Q==0
    if dataStruct.p>0 & dataStruct.Uo>0 
       dataStruct.Q=(0.5)*dataStruct.p*dataStruct.Uo^2;       
    end
end
set(handles.Q,'String',num2str(dataStruct.Q ) )

if dataStruct.W==0
    if dataStruct.m>0 & dataStruct.g>0 
        dataStruct.W=dataStruct.m/dataStruct.g;
    end
end

set(handles.W,'String',num2str(dataStruct.W ) )
set(handles.Uo,'String',num2str(dataStruct.Uo ) )
set(handles.bw,'String',num2str(dataStruct.bw ) )
set(handles.Ix,'String',num2str(dataStruct.Ix ) )
set(handles.Iz,'String',num2str(dataStruct.Iz ) )
set(handles.Iy,'String',num2str(dataStruct.Iy ) )

guidata(gcbo,handles)

