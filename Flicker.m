function varargout = Flicker(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Flicker_OpeningFcn, ...
                   'gui_OutputFcn',  @Flicker_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function Flicker_OpeningFcn(hObject, eventdata, handles, varargin)
global inicioFlicker duracionFlicker amplitudFlicker frecuenciaFlicker 
global faseFlicker
set(handles.InicioFlicker,'string',num2str(inicioFlicker));
set(handles.DuracionFlicker,'string',num2str(duracionFlicker));
set(handles.AmplitudFlicker,'string',num2str(amplitudFlicker));
set(handles.FrecuenciaFlicker,'string',num2str(frecuenciaFlicker));
set(handles.FaseFlicker,'string',num2str(faseFlicker));

% Choose default command line output for Flicker
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = Flicker_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function InicioFlicker_Callback(hObject, eventdata, handles)
% inicioFlicker=str2double(get(hObject,'string'));

function InicioFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionFlicker_Callback(hObject, eventdata, handles)
% duracionFlicker=str2double(get(hObject,'string'));

function DuracionFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudFlicker_Callback(hObject, eventdata, handles)
% amplitudFlicker=str2double(get(hObject,'string'));

function AmplitudFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaFlicker_Callback(hObject, eventdata, handles)
% frecuenciaFlicker=str2double(get(hObject,'string'));

function FrecuenciaFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseFlicker_Callback(hObject, eventdata, handles)
% faseFlicker=str2double(get(hObject,'string'));

function FaseFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AceptarFlicker_Callback(hObject, eventdata, handles)
global inicioFlicker duracionFlicker amplitudFlicker frecuenciaFlicker
global faseFlicker aceptarFlicker
inicioFlicker=str2double(get(handles.InicioFlicker,'string'));
duracionFlicker=str2double(get(handles.DuracionFlicker,'string'));
amplitudFlicker=str2double(get(handles.AmplitudFlicker,'string'));
frecuenciaFlicker=str2double(get(handles.FrecuenciaFlicker,'string'));
faseFlicker=str2double(get(handles.FaseFlicker,'string'));
aceptarFlicker=1;
close Flicker;

function CancelarFlicker_Callback(hObject, eventdata, handles)
close Flicker;
