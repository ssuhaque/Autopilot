function varargout = Indata(varargin)
% INDATA Application M-file for Indata.fig
%    FIG = INDATA launch Indata GUI.
%    INDATA('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 20-Sep-2001 10:06:32

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    loadNames(handles);
    fixpop(handles)
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
% Stub for Callback of the uicontrol handles.exit.
global dataStruct;
if dataStruct.code==0 calculate(handles); end;
delete(handles.indata);

% --------------------------------------------------------------------
function varargout = model_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.model.
global dataStruct;
d=guidata(gcbo);
if dataStruct.code==0 GAData; end 
if dataStruct.code==1 GAData2; end 
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = lon_sc_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.lon_sc.
d=guidata(gcbo);
viewlongsc;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = lat_sc_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.lat_sc.
d=guidata(gcbo);
viewlatsc;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = lon_d_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.lon_d.
d=guidata(gcbo);
viewlongd;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = lat_d_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.lat_d.
d=guidata(gcbo);
viewlatd;
guidata(gcbo,d);

% --------------------------------------------------------------------
function varargout = save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
global dataStruct;
global lon_sc_Struct;
global lat_sc_Struct;
global lon_d_Struct;
global lat_d_Struct;

st=get(handles.modelpop,'String')
val=get(handles.modelpop,'Value')
if val==1
    store(handles)
else
    n=char(st(val));
    save(n,'dataStruct');
    save(n,'lon_d_Struct','-append'); 
    save(n,'lat_d_Struct','-append'); 
    save(n,'lon_sc_Struct','-append'); 
    save(n,'lat_sc_Struct','-append'); 
end

% --------------------------------------------------------------------
function varargout = delete_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.delete.
global dataStruct
global lon_sc_Struct;
global lat_sc_Struct;
global lon_d_Struct;
global lat_d_Struct;

old=dataStruct.name;
delete( strcat(old,'.mat') );


val=get(handles.modelpop,'Value')
load mnames 

for k=val:length(modelnames)
    if k==length(modelnames)
        modelnames(k)='';
    else 
        modelnames(k)=modelnames(k+1)
    end
end

%delete old;
load new;

set(handles.modelpop,'String',modelnames)
set(handles.modelpop,'Value',1)

save mnames modelnames;
guidata(gcbo,handles);

% --------------------------------------------------------------------
function store(handles)
global dataStruct;
    savef;
    if strcmp(dataStruct.name,'New')==0
       save(dataStruct.name,'dataStruct');
       save(dataStruct.name,'lon_d_Struct','-append'); 
       save(dataStruct.name,'lat_d_Struct','-append'); 
       save(dataStruct.name,'lon_sc_Struct','-append'); 
       save(dataStruct.name,'lat_sc_Struct','-append'); 
       load mnames 
       modelnames(length(modelnames)+1)=cellstr(dataStruct.name)
       save mnames modelnames;
       set(handles.modelpop,'String',modelnames)
       guidata(gcbo,handles);
       fixpop(handles);
       return
    end  


% --------------------------------------------------------------------
function loadNames(handles)
load mnames 
set(handles.modelpop,'String',modelnames)
guidata(gcbo,handles);

% --------------------------------------------------------------------
function fixpop(handles)
global dataStruct
str=get(handles.modelpop,'String')
for k=1:length(str)
    if strcmp(dataStruct.name,str(k))==1
        set(handles.modelpop,'Value',k);
        break
    else
    set(handles.modelpop,'Value',1);    
end
end


% --------------------------------------------------------------------
function varargout = modelpop_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.model.
global dataStruct;
global autoTF
autoTF.pitch   =tf(1);
autoTF.roll    =tf(1);
autoTF.heading =tf(1);
autoTF.velocity=tf(1);
autoTF.altitude=tf(1);   

st=get(handles.modelpop,'String')
val=get(handles.modelpop,'Value')
n=char(st(val));
load(n);

