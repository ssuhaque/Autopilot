function varargout = gdata(varargin)
% GDATA Application M-file for gdata.fig
%    FIG = GDATA launch gdata GUI.
%    GDATA('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 28-Sep-2001 17:19:30

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
function varargout = W_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.

% --------------------------------------------------------------------
function varargout = Uo_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.

% --------------------------------------------------------------------
function varargout = m_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.
global dataStruct;
dataStruct.m=dataStruct.W/dataStruct.g;
if dataStruct.m==inf dataStruct.m=0; end
set(handles.m,'String',num2str(dataStruct.m) )
guidata(gcbo,handles)

% --------------------------------------------------------------------
function varargout = g_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.

% --------------------------------------------------------------------
function varargout = p_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.

% --------------------------------------------------------------------
function varargout = e_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.

% --------------------------------------------------------------------
function varargout = Q_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit7.
global dataStruct;
dataStruct.Q=dataStruct.p*(dataStruct.Uo^2)*.5;
if dataStruct.Q==inf dataStruct.Q=0; end
set(handles.Q,'String',num2str(dataStruct.Q ) )
guidata(gcbo,handles)
% --------------------------------------------------------------------
function varargout = K_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit8.

% --------------------------------------------------------------------
function varargout = lamda_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit9.

% --------------------------------------------------------------------
function varargout = taw_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit10.

% --------------------------------------------------------------------
function varargout = M_Callback(h, eventdata, handles, varargin)
global dataStruct;
dataStruct.M=dataStruct.Uo/dataStruct.a;
if dataStruct.M==inf dataStruct.M=0; end
set(handles.M,'String',num2str(dataStruct.M) )
setFlow(handles)
guidata(gcbo,handles)

% --------------------------------------------------------------------
function varargout = surface_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.surface.
dataStruct.surface=get(h,'Value');

% --------------------------------------------------------------------
function varargout = gliding_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.gliding.
dataStruct.gliding=get(h,'Value');

% --------------------------------------------------------------------
function varargout = save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
global dataStruct;
dataStruct.W=str2double(get(handles.W,'string'))  ;
dataStruct.g=str2double(get(handles.g,'string'))  ;

dataStruct.Uo=str2double(get(handles.Uo,'string'))  ;

dataStruct.s_heat=str2double(get(handles.s_heat,'string'))  ;
dataStruct.R=str2double(get(handles.R,'string'))  ;
dataStruct.T=str2double(get(handles.T,'string'))  ;
%a=sqrt( handles.s_heat * handles.T * handles.R );

dataStruct.a=str2double(get(handles.a,'string'))  ;

dataStruct.m=dataStruct.W/dataStruct.g;
if dataStruct.m==inf dataStruct.m=0; end             
set(handles.m,'String',num2str(dataStruct.m) )

dataStruct.p=str2double(get(handles.p,'string'))  ;
dataStruct.e=str2double(get(handles.e,'string'))  ;

dataStruct.Q=dataStruct.p*(dataStruct.Uo^2)*.5;
if dataStruct.Q==inf dataStruct.Q=0; end             
set(handles.Q,'String',num2str(dataStruct.Q ) )
             
dataStruct.K=str2double(get(handles.K,'string'))  ;
dataStruct.lamda=str2double(get(handles.lamda,'string'))  ;
dataStruct.taw=str2double(get(handles.taw,'string'))  ;

dataStruct.M=dataStruct.Uo/dataStruct.a;
if dataStruct.M==inf dataStruct.M=0; end             
set(handles.M,'String',num2str(dataStruct.M) ) 
setFlow(handles)
guidata(gcbo,handles)

dataStruct.surface=get(handles.surface,'Value')  ;
dataStruct.gliding=get(handles.gliding,'Value')  ;

% --------------------------------------------------------------------
function varargout = ok_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ok.
delete(handles.gdata);

% --------------------------------------------------------------------
function loadData(handles)

global dataStruct;
set(handles.W,'String',num2str(dataStruct.W ) )
set(handles.g,'String',num2str(dataStruct.g ) )

set(handles.Uo,'String',num2str(dataStruct.Uo ) )

set(handles.R,'String',num2str(dataStruct.R ) )
set(handles.T,'String',num2str(dataStruct.T ) )
set(handles.s_heat,'String',num2str(dataStruct.s_heat ) )

%a=sqrt( handles.s_heat * handles.T * handles.R );

set(handles.a,'String',num2str(dataStruct.a ) )

set(handles.gliding,'Value',dataStruct.gliding);
set(handles.surface,'Value',dataStruct.surface);

dataStruct.m=dataStruct.W/dataStruct.g;
if dataStruct.m==inf dataStruct.m=0; end
set(handles.m,'String',num2str(dataStruct.m ) )

set(handles.p,'String',num2str(dataStruct.p ) )
set(handles.e,'String',num2str(dataStruct.e ) )

dataStruct.Q=dataStruct.p*(dataStruct.Uo^2)*.5;
if dataStruct.Q==inf dataStruct.Q=0; end
set(handles.Q,'String',num2str(dataStruct.Q ) )

set(handles.K,'String',num2str(dataStruct.K ) )
set(handles.lamda,'String',num2str(dataStruct.lamda ) )
set(handles.taw,'String',num2str(dataStruct.taw ) )

dataStruct.M=dataStruct.Uo/dataStruct.a;
if dataStruct.M==inf dataStruct.M=0; end
set(handles.M,'String',num2str(dataStruct.M ) )
setFlow(handles)

guidata(gcbo,handles)


% --------------------------------------------------------------------
function varargout = a_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.a.

% --------------------------------------------------------------------
function varargout = s_heat_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.s_heat.

% --------------------------------------------------------------------
function varargout = R_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.R.

% --------------------------------------------------------------------
function varargout = T_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.T.

% --------------------------------------------------------------------
function varargout = flow_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.flow.

% --------------------------------------------------------------------
function setFlow(handles)
global dataStruct;
if   0<dataStruct.M & dataStruct.M<0.5 set(handles.flow,'Value',1); end 
if 0.5<dataStruct.M & dataStruct.M<0.8 set(handles.flow,'Value',2); end 
if 0.8<dataStruct.M & dataStruct.M<1.2 set(handles.flow,'Value',3); end 
if 1.2<dataStruct.M & dataStruct.M<5   set(handles.flow,'Value',4); end 
if   5>dataStruct.M     set(handles.flow,'Value',5); end 
guidata(gcbo,handles)    