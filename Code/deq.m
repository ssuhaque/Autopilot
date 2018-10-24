function varargout = deq(varargin)
% DEQ Application M-file for deq.fig
%    FIG = DEQ launch deq GUI.
%    DEQ('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 03-Jul-2002 16:18:22

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

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
function varargout = tlpop_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ts.
global de;
de.signl=get(h,'Value');
if get(h,'Value')==1 set(handles.textNl,'String','No of cycle for halving amplitude'); end;
if get(h,'Value')==2 set(handles.textNl,'String','No of cycle for doubling amplitude'); end;
calculate(handles);

% --------------------------------------------------------------------
function varargout = tl_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.tl.
global de;
de.tl=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = Pl_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Pl.
global de;
de.Pl=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = Nl_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Nl.
global de;
de.Nl=str2double( get(h,'string') );
calculate(handles);

% ----------------calculate(handles)----------------------------------------------------
function varargout = tspop_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ts.
global de;
de.signs=get(h,'Value');
if get(h,'Value')==1 set(handles.textNs,'String','No of cycle for halving amplitude'); end;
if get(h,'Value')==2 set(handles.textNs,'String','No of cycle for doubling amplitude'); end;
calculate(handles);

% --------------------------------------------------------------------
function varargout = ts_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ts.
global de;
de.ts=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = Ps_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Ps.
global de;
de.Ps=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = Ns_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Ns.
global de;
de.Ns=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = tform_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Ns.
global de;
de.type=1;
set(handles.eform,'value',0);
calculate(handles);
guidata(gcbo,handles);

% --------------------------------------------------------------------
function varargout = eform_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.Ns.
global de;
de.type=2;
set(handles.tform,'value',0);
calculate(handles);
guidata(gcbo,handles);

% --------------------------------------------------------------------
function varargout = l4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.l4.
global de;
de.l4=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = l3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.l4.
global de;
de.l3=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = l2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.l4.
global de;
de.l2=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = l1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.l4.
global de;
de.l1=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = l0_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.l4.
global de;
de.l0=str2double( get(h,'string') );
calculate(handles);

% --------------------------------------------------------------------
function varargout = close_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.close.

global de;

de.ts=str2double( get(handles.ts,'string') );
de.tl=str2double( get(handles.tl,'string') );
de.Ps=str2double( get(handles.Ps,'string') );
de.Pl=str2double( get(handles.Pl,'string') );
de.Ns=str2double( get(handles.Ns,'string') );
de.Nl=str2double( get(handles.Nl,'string') );

de.l4=str2double( get(handles.l4,'string') );
de.l3=str2double( get(handles.l3,'string') );
de.l2=str2double( get(handles.l2,'string') );
de.l1=str2double( get(handles.l1,'string') );
de.l0=str2double( get(handles.l0,'string') );

de.signs=get(handles.tspop,'Value');
de.signl=get(handles.tlpop,'Value');

if get(handles.tform,'value')==1 de.type=1; end;
if get(handles.eform,'value')==1 de.type=2; end;
calculate(handles);
delete(handles.deq);

% --------------------------------------------------------------------

function loadData(handles)
global de;

set(handles.l4,'String',num2str(de.l4) );
set(handles.l3,'String',num2str(de.l3) );
set(handles.l2,'String',num2str(de.l2) );
set(handles.l1,'String',num2str(de.l1) );
set(handles.l0,'String',num2str(de.l0) );

set(handles.ts,'String',num2str(de.ts) );
set(handles.tl,'String',num2str(de.tl) );
set(handles.Ps,'String',num2str(de.Ps) );
set(handles.Pl,'String',num2str(de.Pl) );
set(handles.Ns,'String',num2str(de.Ns) );
set(handles.Nl,'String',num2str(de.Nl) );

if de.type==1 set(handles.tform,'Value',1); set(handles.eform,'Value',0);end
if de.type==2 set(handles.eform,'Value',1); set(handles.tform,'Value',0); end

if de.signs==1 
    set(handles.tspop,'Value',1);
    set(handles.textNs,'String','No of cycle for halving amplitude'); 
end;

if de.signs==2 
    set(handles.tspop,'Value',2);
    set(handles.textNs,'String','No of cycle for doubling amplitude'); 
end;

if de.signl==1 
    set(handles.tlpop,'Value',1);
    set(handles.textNl,'String','No of cycle for halving amplitude'); 
end;

if de.signl==2 
    set(handles.tlpop,'Value',2);
    set(handles.textNl,'String','No of cycle for doubling amplitude'); 
end;

guidata(gcbo,handles)

% --------------------------------------------------------------------

function calculate(handles)
global de;
neol=0;
neos=0;
wl=0;       
ws=0;
mul=0;
v=zeros(4,1);
if de.ts~=0 & de.tl~=0 & de.Ps~=0 & de.Pl~=0 & de.type==1 
    
    if de.signl==1 mul=-1; end;
    if de.signl==2 mul=+1; end;
    neol=mul*0.69/de.tl;
    wl=2*pi/de.Pl;
    de.Nl=de.tl/de.Pl;
        
    if de.signs==1 mul=-1; end;
    if de.signs==2 mul=+1; end;
    neos=mul*0.69/de.ts;
    ws=2*pi/de.Ps;
    de.Ns=de.ts/de.Ps;
    
    v(1)=neos+(ws)*i;
    v(2)=neos-(ws)*i;
    v(3)=neol+(wl)*i;
    v(4)=neos-(wl)*i;
    de.eq=poly(v);
    de.l4=de.eq(1);
    de.l3=de.eq(2);
    de.l2=de.eq(3);
    de.l1=de.eq(4);
    de.l0=de.eq(5);

    loadData(handles);
end;

if de.type==2
   de.eq(1)=de.l4;
   de.eq(2)=de.l3;
   de.eq(3)=de.l2;
   de.eq(4)=de.l1;
   de.eq(5)=de.l0; 
end;