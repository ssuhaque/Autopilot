function varargout = deq2(varargin)
% DEQ2 Application M-file for deq2.fig
%    FIG = DEQ2 launch deq2 GUI.
%    DEQ2('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 26-Oct-2001 18:42:36

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
function varargout = tpop_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ts.
global de2;
de2.sign=get(h,'Value');
if get(h,'Value')==1 set(handles.textN,'String','No of cycle for halving amplitude'); end;
if get(h,'Value')==2 set(handles.textN,'String','No of cycle for doubling amplitude'); end;
calculate(handles);

% --------------------------------------------------------------------
function varargout = t_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ts.
global de2;
de2.t=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = P_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Ps.
global de2;
de2.P=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = N_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Ns.
global de2;
de2.N=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = tform_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Ns.
global de2;
de2.type=1;
set(handles.eform,'value',0);
calculate(handles);
guidata(gcbo,handles);

% --------------------------------------------------------------------
function varargout = eform_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Ns.
global de2;
de2.type=2;
set(handles.tform,'value',0);
calculate(handles);
guidata(gcbo,handles);


% --------------------------------------------------------------------
function varargout = l2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.l4.
global de2;
de2.l2=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = l1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.l4.
global de2;
de2.l1=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = l0_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.l4.
global de2;
de2.l0=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.

global de2;

de2.t=str2double( get(handles.t,'string') );
de2.P=str2double( get(handles.P,'string') );
de2.N=str2double( get(handles.N,'string') );

de2.l2=str2double( get(handles.l2,'string') );
de2.l1=str2double( get(handles.l1,'string') );
de2.l0=str2double( get(handles.l0,'string') );

de2.sign=get(handles.tpop,'Value');

if get(handles.tform,'value')==1 de2.type=1; end;
if get(handles.eform,'value')==1 de2.type=2; end;
calculate(handles);
delete(handles.deq2);

% --------------------------------------------------------------------

function loadData(handles)
global de2;

set(handles.l2,'String',num2str(de2.l2) );
set(handles.l1,'String',num2str(de2.l1) );
set(handles.l0,'String',num2str(de2.l0) );
set(handles.t,'String',num2str(de2.t) );
set(handles.P,'String',num2str(de2.P) );
set(handles.N,'String',num2str(de2.N) );


if de2.type==1 set(handles.tform,'Value',1); set(handles.eform,'Value',0);end
if de2.type==2 set(handles.eform,'Value',1); set(handles.tform,'Value',0); end

if de2.sign==1 
    set(handles.tpop,'Value',1);
    set(handles.textN,'String','No of cycle for halving amplitude'); 
end;

if de2.sign==2 
    set(handles.tpop,'Value',2);
    set(handles.textN,'String','No of cycle for doubling amplitude'); 
end;


guidata(gcbo,handles)

% --------------------------------------------------------------------

function calculate(handles)
global de2;
neo=0;
w=0;       
mul=0;
v=zeros(2,1);
if de2.t~=0 & de2.P~=0 & de2.type==1 
            
    if de2.sign==1 mul=-1 end;
    if de2.sign==2 mul=+1 end;
    neo=mul*0.69/de2.t;
    w=2*pi/de2.P;
    de2.N=de2.t/de2.P;
    
    v(1)=neo+(w)*i;
    v(2)=neo-(w)*i;
    de2.eq=poly(v);
    de2.l2=de2.eq(1);
    de2.l1=de2.eq(2);
    de2.l0=de2.eq(3);

    loadData(handles);
end;

if de2.type==2
   de2.eq(1)=de2.l2;
   de2.eq(2)=de2.l1;
   de2.eq(3)=de2.l0; 
end;