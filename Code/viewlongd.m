function varargout = viewlongd(varargin)
% VIEWLONGD Application M-file for viewlongd.fig
%    FIG = VIEWLONGD launch viewlongd GUI.
%    VIEWLONGD('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 20-Sep-2001 20:30:39

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



function loadData(handles)

global lon_d_Struct;
set(handles.Xu,'String',num2str(lon_d_Struct.Xu ))
set(handles.Xw,'String',num2str(lon_d_Struct.Xw ))
set(handles.Xwdot,'String',num2str(lon_d_Struct.Xwdot ))
set(handles.Xalpha, 'String',num2str(lon_d_Struct.Xalpha ))
set(handles.Xalphadot, 'String',num2str(lon_d_Struct.Xalphadot ))
set(handles.Xq, 'String',num2str(lon_d_Struct.Xq ))
set(handles.Xdavae, 'String',num2str(lon_d_Struct.Xdavae ))
set(handles.XdavaT, 'String',num2str(lon_d_Struct.XdavaT ))

set(handles.Mu,'String',num2str(lon_d_Struct.Mu ))
set(handles.Mw,'String',num2str(lon_d_Struct.Mw ))
set(handles.Mwdot,'String',num2str(lon_d_Struct.Mwdot ))
set(handles.Malpha, 'String',num2str(lon_d_Struct.Malpha))
set(handles.Malphadot, 'String',num2str(lon_d_Struct.Malphadot ))
set(handles.Mq, 'String',num2str(lon_d_Struct.Mq ))
set(handles.Mdavae, 'String',num2str(lon_d_Struct.Mdavae ))
set(handles.MdavaT, 'String',num2str(lon_d_Struct.MdavaT ))

set(handles.Zu,'String',num2str(lon_d_Struct.Zu ))
set(handles.Zw,'String',num2str(lon_d_Struct.Zw ))
set(handles.Zwdot,'String',num2str(lon_d_Struct.Zwdot ))
set(handles.Zalpha,'String',num2str(lon_d_Struct.Zalpha ))
set(handles.Zalphadot,'String',num2str(lon_d_Struct.Zalphadot ))
set(handles.Zq,'String',num2str(lon_d_Struct.Zq ))
set(handles.Zdavae,'String',num2str(lon_d_Struct.Zdavae ))
set(handles.ZdavaT,'String',num2str(lon_d_Struct.ZdavaT ))
guidata(gcbo,handles)


% --------------------------------------------------------------------



% --------------------------------------------------------------------
function varargout = Xu_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Xu.
disp('Xu Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Xw_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Xw.
disp('Xw Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Xwdot_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Xwdot.
disp('Xwdot Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Xalpha_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Xalpha.
disp('Xalpha Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Xalphadot_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Xalphadot.
disp('Xalphadot Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Xq_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Xq.
disp('Xq Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Xdavae_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Xdavae.
disp('Xdavae Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = XdavaT_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.XdavaT.
disp('XdavaT Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = Mu_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Mu.
disp('Mu Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Mw_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Mw.
disp('Mw Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Mwdot_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Mwdot.
disp('Mwdot Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Malpha_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Malpha.
disp('Malpha Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Malphadot_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.malphadot.
disp('malphadot Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Mq_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Mq.
disp('Mq Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Mdavae_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Mdavae.
disp('Mdavae Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = MdavaT_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.MdavaT.
disp('MdavaT Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Zu_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Zu.
disp('Zu Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Zw_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Zw.
disp('Zw Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Zwdot_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Zwdot.
disp('Zwdot Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Zalpha_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Zalpha.
disp('Zalpha Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Zalphadot_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Zalphadot.
disp('Zalphadot Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Zq_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Zq.
disp('Zq Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = Zdavae_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Zdavae.
disp('Zdavae Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = ZdavaT_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ZdavaT.
disp('ZdavaT Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.
delete(handles.viewlongd);

% --------------------------------------------------------------------
function varargout = save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
global lon_d_Struct;
global dataStruct;
dataStruct.code=1;
lon_d_Struct.Xu=str2double(get(handles.Xu,'string'))  ;
lon_d_Struct.Xw=str2double(get(handles.Xw,'string'))  ;
lon_d_Struct.Xwdot=str2double(get(handles.Xwdot,'string'))  ;
lon_d_Struct.Xalpha=str2double(get(handles.Xalpha,'string'))  ;
lon_d_Struct.Xalphadot=str2double(get(handles.Xalphadot,'string'))  ;
lon_d_Struct.Xq=str2double(get(handles.Xq,'string'))  ;
lon_d_Struct.Xdavae=str2double(get(handles.Xdavae,'string'))  ;
lon_d_Struct.Xdavaa=str2double(get(handles.Xdavaa,'string'))  ;
lon_d_Struct.XdavaT=str2double(get(handles.XdavaT,'string'))  ;

lon_d_Struct.Mu=str2double(get(handles.Mu,'string'))  ;
lon_d_Struct.Mw=str2double(get(handles.Mw,'string'))  ;
lon_d_Struct.Mwdot=str2double(get(handles.Mwdot,'string'))  ;
lon_d_Struct.Malpha=str2double(get(handles.Malpha,'string'))  ;
lon_d_Struct.Malphadot=str2double(get(handles.Malphadot,'string'))  ;
lon_d_Struct.Mq=str2double(get(handles.Mq,'string'))  ;
lon_d_Struct.Mdavae=str2double(get(handles.Mdavae,'string'))  ;
lon_d_Struct.Mdavaa=str2double(get(handles.Mdavaa,'string'))  ;
lon_d_Struct.MdavaT=str2double(get(handles.MdavaT,'string'))  ;

lon_d_Struct.Zu=str2double(get(handles.Zu,'string'))  ;
lon_d_Struct.Zw=str2double(get(handles.Zw,'string'))  ;
lon_d_Struct.Zwdot=str2double(get(handles.Zwdot,'string'))  ;
lon_d_Struct.Zalpha=str2double(get(handles.Zalpha,'string'))  ;
lon_d_Struct.Zalphadot=str2double(get(handles.Zalphadot,'string'))  ;
lon_d_Struct.Zq=str2double(get(handles.Zq,'string'))  ;
lon_d_Struct.Zdavae=str2double(get(handles.Zdavae,'string'))  ;
lon_d_Struct.Zdavaa=str2double(get(handles.Zdavaa,'string'))  ;
lon_d_Struct.ZdavaT=str2double(get(handles.ZdavaT,'string'))  ;
