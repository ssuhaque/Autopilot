function varargout = tfunction(varargin)
% TFUNCTION Application M-file for tfunction.fig
%    FIG = TFUNCTION launch tfunction GUI.
%    TFUNCTION('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 12-Oct-2001 22:04:37

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
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.

global reqtf;

reqtf.tfdata.p0=str2double( get(handles.p0,'string') );
reqtf.tfdata.p1=str2double( get(handles.p1,'string') );
reqtf.tfdata.p2=str2double( get(handles.p2,'string') );
reqtf.tfdata.p3=str2double( get(handles.p3,'string') );
reqtf.tfdata.p4=str2double( get(handles.p4,'string') );

reqtf.tfdata.z0=str2double( get(handles.z0,'string') );
reqtf.tfdata.z1=str2double( get(handles.z1,'string') );
reqtf.tfdata.z2=str2double( get(handles.z2,'string') );
reqtf.tfdata.z3=str2double( get(handles.z3,'string') );
reqtf.tfdata.z4=str2double( get(handles.z4,'string') );

reqtf.tfdata.n0=str2double( get(handles.n0,'string') );
reqtf.tfdata.n1=str2double( get(handles.n1,'string') );
reqtf.tfdata.n2=str2double( get(handles.n2,'string') );
reqtf.tfdata.n3=str2double( get(handles.n3,'string') );
reqtf.tfdata.n4=str2double( get(handles.n4,'string') );

reqtf.tfdata.d0=str2double( get(handles.d0,'string') );
reqtf.tfdata.d1=str2double( get(handles.d1,'string') );
reqtf.tfdata.d2=str2double( get(handles.d2,'string') );
reqtf.tfdata.d3=str2double( get(handles.d3,'string') );
reqtf.tfdata.d4=str2double( get(handles.d4,'string') );

reqtf.tfdata.gain=str2double( get(handles.gain,'string') );

if( get(handles.pform,'Value') == 1 ) 
       global reqtf;
       disp(' poly form');
       if reqtf.tfdata.d4>0 | reqtf.tfdata.d3>0 | reqtf.tfdata.d2>0 | reqtf.tfdata.d1>0 | reqtf.tfdata.d0>0
          reqtf.tf=tf([reqtf.tfdata.n4,reqtf.tfdata.n3,reqtf.tfdata.n2,reqtf.tfdata.n1,reqtf.tfdata.n0],[reqtf.tfdata.d4,reqtf.tfdata.d3,reqtf.tfdata.d2,reqtf.tfdata.d1,reqtf.tfdata.d0]);
       end
end     

if ( get(handles.zpform,'Value') == 1 ) 
        global reqtf;
        disp(' zp form');
        reqtf.tf=tf(1);
        if( get(handles.onz0,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk(reqtf.tfdata.z0,[],1); end
        if( get(handles.onz1,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk(reqtf.tfdata.z1,[],1); end
        if( get(handles.onz2,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk(reqtf.tfdata.z2,[],1); end
        if( get(handles.onz3,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk(reqtf.tfdata.z3,[],1); end
        if( get(handles.onz4,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk(reqtf.tfdata.z4,[],1); end    
        
        if( get(handles.onp0,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk([],reqtf.tfdata.p0,1); end
        if( get(handles.onp1,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk([],reqtf.tfdata.p1,1); end
        if( get(handles.onp2,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk([],reqtf.tfdata.p2,1); end
        if( get(handles.onp3,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk([],reqtf.tfdata.p3,1); end
        if( get(handles.onp4,'Value') == 1 ) reqtf.tf=reqtf.tf*zpk([],reqtf.tfdata.p4,1); end  
end
reqtf.tf=reqtf.tf*reqtf.tfdata.gain;
delete(handles.tfunction);


% --------------------------------------------------------------------
function varargout = n0_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.n0.
global reqtf;
reqtf.tfdata.n0=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = n1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.n1.
global reqtf;
reqtf.tfdata.n1=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = n2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.n2.
global reqtf;
reqtf.tfdata.n2=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = n3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.n3.
global reqtf;
reqtf.tfdata.n3=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = n4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.n4.
global reqtf;
reqtf.tfdata.n4=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = d0_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.d0.
global reqtf;
reqtf.tfdata.d0=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = d1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.d1.
global reqtf;
reqtf.tfdata.d1=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = d2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.d2.
global reqtf;
reqtf.tfdata.d2=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = d3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.d3.
global reqtf;
reqtf.tfdata.d3=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = d4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.d4.
global reqtf;
reqtf.tfdata.d4=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = z0_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.z0.
global reqtf;
reqtf.tfdata.z0=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = z1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.z1.
global reqtf;
reqtf.tfdata.z1=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = z2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.z2.
global reqtf;
reqtf.tfdata.z2=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = z3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.z3.
global reqtf;
reqtf.tfdata.z3=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = z4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.z4.
global reqtf;
reqtf.tfdata.z4=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = p0_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.p0.
global reqtf;
reqtf.tfdata.p0=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = p1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.p1.
global reqtf;
reqtf.tfdata.p1=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = p2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.p2.
global reqtf;
reqtf.tfdata.p2=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = p3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.p3.
global reqtf;
reqtf.tfdata.p3=str2double( get(h,'string') );

% --------------------------------------------------------------------
function varargout = p4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.p4.
global reqtf;
reqtf.tfdata.p4=str2double( get(h,'string') );

% --------------------------------------------------------------------

function loadData(handles)
global reqtf;

set(handles.n4,'String',num2str(reqtf.tfdata.n4) );
set(handles.n3,'String',num2str(reqtf.tfdata.n3) );
set(handles.n2,'String',num2str(reqtf.tfdata.n2) );
set(handles.n1,'String',num2str(reqtf.tfdata.n1) );
set(handles.n0,'String',num2str(reqtf.tfdata.n0) );

set(handles.d4,'String',num2str(reqtf.tfdata.d4) );
set(handles.d3,'String',num2str(reqtf.tfdata.d3) );
set(handles.d2,'String',num2str(reqtf.tfdata.d2) );
set(handles.d1,'String',num2str(reqtf.tfdata.d1) );
set(handles.d0,'String',num2str(reqtf.tfdata.d0) );

set(handles.z4,'String',num2str(reqtf.tfdata.z4) );
set(handles.z3,'String',num2str(reqtf.tfdata.z3) );
set(handles.z2,'String',num2str(reqtf.tfdata.z2) );
set(handles.z1,'String',num2str(reqtf.tfdata.z1) );
set(handles.z0,'String',num2str(reqtf.tfdata.z0) );

set(handles.p4,'String',num2str(reqtf.tfdata.p4) );
set(handles.p3,'String',num2str(reqtf.tfdata.p3) );
set(handles.p2,'String',num2str(reqtf.tfdata.p2) );
set(handles.p1,'String',num2str(reqtf.tfdata.p1) );
set(handles.p0,'String',num2str(reqtf.tfdata.p0) );

set(handles.gain,'String',num2str(reqtf.tfdata.gain) );

if reqtf.tfdata.type==1 set(handles.pform,'Value',1); end 
if reqtf.tfdata.type==2 set(handles.zpform,'Value',1); end     

% --------------------------------------------------------------------
function varargout = pform_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pform.
global reqtf;
reqtf.tfdata.type=1;
set(handles.zpform,'Value',0);
guidata(gcbo,handles)


% --------------------------------------------------------------------
function varargout = zpform_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.zpform.
global reqtf;
reqtf.tfdata.type=2;
set(handles.pform,'Value',0);
guidata(gcbo,handles)


% --------------------------------------------------------------------
function varargout = onz0_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.checkbox2.

% --------------------------------------------------------------------
function varargout = onz1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.onz1.

% --------------------------------------------------------------------
function varargout = onz2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.onz2.

% --------------------------------------------------------------------
function varargout = onz3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.onz3.

% --------------------------------------------------------------------
function varargout = onz4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.onz4.

% --------------------------------------------------------------------
function varargout = onp0_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.onp0.

% --------------------------------------------------------------------
function varargout = onp1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.onp1.

% --------------------------------------------------------------------
function varargout = onp2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.onp2.

% --------------------------------------------------------------------
function varargout = onp3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.onp3.

% --------------------------------------------------------------------
function varargout = onp4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.onp4.

% --------------------------------------------------------------------
function varargout = gain_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.gain.
global reqtf;
reqtf.tfdata.gain=str2double( get(h,'string') );