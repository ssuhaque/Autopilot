function varargout = fuselage(varargin)
% FUSELAGE Application M-file for fuselage.fig
%    FIG = FUSELAGE launch fuselage GUI.
%    FUSELAGE('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 26-Sep-2001 16:16:17

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);
    global dataStruct;
    global objp;
    global objDx;
    global objxi;
    global objw;
     objp=zeros(1,12);     objDx=zeros(1,12);        objxi=zeros(1,12);       objw=zeros(1,12);
     objp(1)=handles.p1;   objDx(1)=handles.D1;     objxi(1)=handles.x1;    objw(1)=handles.w1;   
     objp(2)=handles.p2;   objDx(2)=handles.D2;     objxi(2)=handles.x2;    objw(2)=handles.w2;   
     objp(3)=handles.p3;   objDx(3)=handles.D3;     objxi(3)=handles.x3;    objw(3)=handles.w3;   
     objp(4)=handles.p4;   objDx(4)=handles.D4;     objxi(4)=handles.x4;    objw(4)=handles.w4;   
     objp(5)=handles.p5;   objDx(5)=handles.D5;     objxi(5)=handles.x5;    objw(5)=handles.w5;   
     objp(6)=handles.p6;   objDx(6)=handles.D6;     objxi(6)=handles.x6;    objw(6)=handles.w6;   
     objp(7)=handles.p7;   objDx(7)=handles.D7;     objxi(7)=handles.x7;    objw(7)=handles.w7;   
     objp(8)=handles.p8;   objDx(8)=handles.D8;     objxi(8)=handles.x8;    objw(8)=handles.w8;   
     objp(9)=handles.p9;   objDx(9)=handles.D9;     objxi(9)=handles.x9;    objw(9)=handles.w9;   
     objp(10)=handles.p10; objDx(10)=handles.D10;   objxi(10)=handles.x10;  objw(10)=handles.w10;   
     objp(11)=handles.p11; objDx(11)=handles.D11;   objxi(11)=handles.x11;  objw(11)=handles.w11;   
     objp(12)=handles.p12; objDx(12)=handles.D12;   objxi(12)=handles.x12;  objw(12)=handles.w12;   
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
function varargout = D1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.
disp('edit1 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.
disp('edit2 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.
disp('edit3 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.
disp('edit4 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.
disp('edit5 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.
disp('edit6 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit7.
disp('edit7 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D8_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit8.
disp('edit8 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D9_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit9.
disp('edit9 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D10_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit10.
disp('edit10 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D11_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit11.
disp('edit11 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = D12_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit12.
disp('edit12 Callback not implemented yet.')



% --------------------------------------------------------------------
function varargout = w1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.
disp('edit1 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.
disp('edit2 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.
disp('edit3 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.
disp('edit4 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.
disp('edit5 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.
disp('edit6 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit7.
disp('edit7 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w8_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit8.
disp('edit8 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w9_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit9.
disp('edit9 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w10_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit10.
disp('edit10 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w11_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit11.
disp('edit11 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = w12_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit12.
disp('edit12 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.
disp('edit1 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.
disp('edit2 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.
disp('edit3 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.
disp('edit4 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.
disp('edit5 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.
disp('edit6 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit7.
disp('edit7 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x8_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit8.
disp('edit8 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x9_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit9.
disp('edit9 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x10_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit10.
disp('edit10 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x11_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit11.
disp('edit11 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = x12_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit12.
disp('edit12 Callback not implemented yet.')



% --------------------------------------------------------------------
function varargout = p1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.
disp('edit1 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.
disp('edit2 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.
disp('edit3 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.
disp('edit4 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit5.
disp('edit5 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p6_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit6.
disp('edit6 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p7_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit7.
disp('edit7 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p8_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit8.
disp('edit8 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p9_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit9.
disp('edit9 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p10_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit10.
disp('edit10 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p11_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit11.
disp('edit11 Callback not implemented yet.')


% --------------------------------------------------------------------
function varargout = p12_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit12.
disp('edit12 Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = kn_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit50.
disp('edit50 Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = krl_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit50.
disp('edit50 Callback not implemented yet.')

% --------------------------------------------------------------------
function varargout = save_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.save.
global objp;
global objDx;
global objxi;
global objw;
global dataStruct;

for n=1:12
    dataStruct.p(n)=str2double(get(objp(n),'string'))  ;
end
for n=1:12
    dataStruct.Dx(n)=str2double(get(objDx(n),'string'))  ;
end
for n=1:12
    dataStruct.xi(n)=str2double(get(objxi(n),'string'))  ;
end
for n=1:12
    dataStruct.wf(n)=str2double(get(objw(n),'string'))  ;
end
dataStruct.kn=str2double(get(handles.kn,'string'))  ;
dataStruct.krl=str2double(get(handles.krl,'string'))  ;

% --------------------------------------------------------------------
function varargout = ok_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.ok.
delete(handles.fuselage);
% --------------------------------------------------------------------

function loadData(handles)
global objp;
global objDx;
global objxi;
global objw;
global dataStruct;

for n=1:12
    set(objw(n),'String',dataStruct.wf(n) )
end
for n=1:12
    set(objp(n),'String',dataStruct.pd(n) )
end
for n=1:12
    set(objDx(n),'String',dataStruct.Dx(n) )
end
for n=1:12
    set(objxi(n),'String',dataStruct.xi(n) )
end

set(handles.kn,'String',num2str(dataStruct.kn) )
set(handles.krl,'String',num2str(dataStruct.krl ) )

%guidata(gcbo,handles)
