function varargout = Transitorios(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Transitorios_OpeningFcn, ...
                   'gui_OutputFcn',  @Transitorios_OutputFcn, ...
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

function Transitorios_OpeningFcn(hObject, eventdata, handles, varargin)
global inicioTransitorio1 inicioTransitorio2 inicioTransitorio3 inicioTransitorio4 inicioTransitorio5
global inicioTransitorio6 inicioTransitorio7 inicioTransitorio8 inicioTransitorio9 inicioTransitorio10
global duracionTransitorio1 duracionTransitorio2 duracionTransitorio3 duracionTransitorio4 duracionTransitorio5
global duracionTransitorio6 duracionTransitorio7 duracionTransitorio8 duracionTransitorio9 duracionTransitorio10
global amplitudSenoTransitorio1 amplitudSenoTransitorio2 amplitudSenoTransitorio3 amplitudSenoTransitorio4 amplitudSenoTransitorio5
global amplitudSenoTransitorio6 amplitudSenoTransitorio7 amplitudSenoTransitorio8 amplitudSenoTransitorio9 amplitudSenoTransitorio10
global frecuenciaSenoTransitorio1 frecuenciaSenoTransitorio2 frecuenciaSenoTransitorio3 frecuenciaSenoTransitorio4 frecuenciaSenoTransitorio5
global frecuenciaSenoTransitorio6 frecuenciaSenoTransitorio7 frecuenciaSenoTransitorio8 frecuenciaSenoTransitorio9 frecuenciaSenoTransitorio10
global faseSenoTransitorio1 faseSenoTransitorio2 faseSenoTransitorio3 faseSenoTransitorio4 faseSenoTransitorio5
global faseSenoTransitorio6 faseSenoTransitorio7 faseSenoTransitorio8 faseSenoTransitorio9 faseSenoTransitorio10
global exponenteTransitorio1 exponenteTransitorio2 exponenteTransitorio3 exponenteTransitorio4 exponenteTransitorio5
global exponenteTransitorio6 exponenteTransitorio7 exponenteTransitorio8 exponenteTransitorio9 exponenteTransitorio10
set(handles.InicioTransitorio1,'string',num2str(inicioTransitorio1));
set(handles.InicioTransitorio2,'string',num2str(inicioTransitorio2));
set(handles.InicioTransitorio3,'string',num2str(inicioTransitorio3));
set(handles.InicioTransitorio4,'string',num2str(inicioTransitorio4));
set(handles.InicioTransitorio5,'string',num2str(inicioTransitorio5));
set(handles.InicioTransitorio6,'string',num2str(inicioTransitorio6));
set(handles.InicioTransitorio7,'string',num2str(inicioTransitorio7));
set(handles.InicioTransitorio8,'string',num2str(inicioTransitorio8));
set(handles.InicioTransitorio9,'string',num2str(inicioTransitorio9));
set(handles.InicioTransitorio10,'string',num2str(inicioTransitorio10));
set(handles.DuracionTransitorio1,'string',num2str(duracionTransitorio1));
set(handles.DuracionTransitorio2,'string',num2str(duracionTransitorio2));
set(handles.DuracionTransitorio3,'string',num2str(duracionTransitorio3));
set(handles.DuracionTransitorio4,'string',num2str(duracionTransitorio4));
set(handles.DuracionTransitorio5,'string',num2str(duracionTransitorio5));
set(handles.DuracionTransitorio6,'string',num2str(duracionTransitorio6));
set(handles.DuracionTransitorio7,'string',num2str(duracionTransitorio7));
set(handles.DuracionTransitorio8,'string',num2str(duracionTransitorio8));
set(handles.DuracionTransitorio9,'string',num2str(duracionTransitorio9));
set(handles.DuracionTransitorio10,'string',num2str(duracionTransitorio10));
set(handles.AmplitudSenoTransitorio1,'string',num2str(amplitudSenoTransitorio1));
set(handles.AmplitudSenoTransitorio2,'string',num2str(amplitudSenoTransitorio2));
set(handles.AmplitudSenoTransitorio3,'string',num2str(amplitudSenoTransitorio3));
set(handles.AmplitudSenoTransitorio4,'string',num2str(amplitudSenoTransitorio4));
set(handles.AmplitudSenoTransitorio5,'string',num2str(amplitudSenoTransitorio5));
set(handles.AmplitudSenoTransitorio6,'string',num2str(amplitudSenoTransitorio6));
set(handles.AmplitudSenoTransitorio7,'string',num2str(amplitudSenoTransitorio7));
set(handles.AmplitudSenoTransitorio8,'string',num2str(amplitudSenoTransitorio8));
set(handles.AmplitudSenoTransitorio9,'string',num2str(amplitudSenoTransitorio9));
set(handles.AmplitudSenoTransitorio10,'string',num2str(amplitudSenoTransitorio10));
set(handles.FrecuenciaSenoTransitorio1,'string',num2str(frecuenciaSenoTransitorio1));
set(handles.FrecuenciaSenoTransitorio2,'string',num2str(frecuenciaSenoTransitorio2));
set(handles.FrecuenciaSenoTransitorio3,'string',num2str(frecuenciaSenoTransitorio3));
set(handles.FrecuenciaSenoTransitorio4,'string',num2str(frecuenciaSenoTransitorio4));
set(handles.FrecuenciaSenoTransitorio5,'string',num2str(frecuenciaSenoTransitorio5));
set(handles.FrecuenciaSenoTransitorio6,'string',num2str(frecuenciaSenoTransitorio6));
set(handles.FrecuenciaSenoTransitorio7,'string',num2str(frecuenciaSenoTransitorio7));
set(handles.FrecuenciaSenoTransitorio8,'string',num2str(frecuenciaSenoTransitorio8));
set(handles.FrecuenciaSenoTransitorio9,'string',num2str(frecuenciaSenoTransitorio9));
set(handles.FrecuenciaSenoTransitorio10,'string',num2str(frecuenciaSenoTransitorio10));
set(handles.FaseSenoTransitorio1,'string',num2str(faseSenoTransitorio1));
set(handles.FaseSenoTransitorio2,'string',num2str(faseSenoTransitorio2));
set(handles.FaseSenoTransitorio3,'string',num2str(faseSenoTransitorio3));
set(handles.FaseSenoTransitorio4,'string',num2str(faseSenoTransitorio4));
set(handles.FaseSenoTransitorio5,'string',num2str(faseSenoTransitorio5));
set(handles.FaseSenoTransitorio6,'string',num2str(faseSenoTransitorio6));
set(handles.FaseSenoTransitorio7,'string',num2str(faseSenoTransitorio7));
set(handles.FaseSenoTransitorio8,'string',num2str(faseSenoTransitorio8));
set(handles.FaseSenoTransitorio9,'string',num2str(faseSenoTransitorio9));
set(handles.FaseSenoTransitorio10,'string',num2str(faseSenoTransitorio10));
set(handles.ExponenteTransitorio1,'string',num2str(exponenteTransitorio1));
set(handles.ExponenteTransitorio2,'string',num2str(exponenteTransitorio2));
set(handles.ExponenteTransitorio3,'string',num2str(exponenteTransitorio3));
set(handles.ExponenteTransitorio4,'string',num2str(exponenteTransitorio4));
set(handles.ExponenteTransitorio5,'string',num2str(exponenteTransitorio5));
set(handles.ExponenteTransitorio6,'string',num2str(exponenteTransitorio6));
set(handles.ExponenteTransitorio7,'string',num2str(exponenteTransitorio7));
set(handles.ExponenteTransitorio8,'string',num2str(exponenteTransitorio8));
set(handles.ExponenteTransitorio9,'string',num2str(exponenteTransitorio9));
set(handles.ExponenteTransitorio10,'string',num2str(exponenteTransitorio10));

% Choose default command line output for Transitorios
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = Transitorios_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;

function InicioTransitorio1_Callback(hObject, eventdata, handles)


function InicioTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio1_Callback(hObject, eventdata, handles)

function DuracionTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio1_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio1_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio1_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio1_Callback(hObject, eventdata, handles)

function ExponenteTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio2_Callback(hObject, eventdata, handles)

function InicioTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio2_Callback(hObject, eventdata, handles)

function DuracionTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio2_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio2_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio2_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio2_Callback(hObject, eventdata, handles)

function ExponenteTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio3_Callback(hObject, eventdata, handles)

function InicioTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio3_Callback(hObject, eventdata, handles)

function DuracionTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio3_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio3_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio3_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio3_Callback(hObject, eventdata, handles)

function ExponenteTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio4_Callback(hObject, eventdata, handles)

function InicioTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio4_Callback(hObject, eventdata, handles)

function DuracionTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio4_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio4_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio4_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio4_Callback(hObject, eventdata, handles)

function ExponenteTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio5_Callback(hObject, eventdata, handles)

function InicioTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio5_Callback(hObject, eventdata, handles)

function DuracionTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio5_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio5_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio5_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio5_Callback(hObject, eventdata, handles)

function ExponenteTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio6_Callback(hObject, eventdata, handles)

function InicioTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio6_Callback(hObject, eventdata, handles)

function DuracionTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio6_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio6_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio6_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio6_Callback(hObject, eventdata, handles)

function ExponenteTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio7_Callback(hObject, eventdata, handles)

function InicioTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio7_Callback(hObject, eventdata, handles)

function DuracionTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio7_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio7_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio7_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio7_Callback(hObject, eventdata, handles)

function ExponenteTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio8_Callback(hObject, eventdata, handles)

function InicioTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio8_Callback(hObject, eventdata, handles)

function DuracionTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio8_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio8_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio8_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio8_Callback(hObject, eventdata, handles)

function ExponenteTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio9_Callback(hObject, eventdata, handles)

function InicioTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio9_Callback(hObject, eventdata, handles)

function DuracionTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio10_Callback(hObject, eventdata, handles)

function ExponenteTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio9_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio9_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio9_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio9_Callback(hObject, eventdata, handles)

function ExponenteTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio10_Callback(hObject, eventdata, handles)

function InicioTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio10_Callback(hObject, eventdata, handles)

function DuracionTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio10_Callback(hObject, eventdata, handles)

function AmplitudSenoTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio10_Callback(hObject, eventdata, handles)

function FrecuenciaSenoTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio10_Callback(hObject, eventdata, handles)

function FaseSenoTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AceptarTransitorio_Callback(hObject, eventdata, handles)
global aceptarTransitorios
global inicioTransitorio1 inicioTransitorio2 inicioTransitorio3 inicioTransitorio4 inicioTransitorio5
global inicioTransitorio6 inicioTransitorio7 inicioTransitorio8 inicioTransitorio9 inicioTransitorio10
global duracionTransitorio1 duracionTransitorio2 duracionTransitorio3 duracionTransitorio4 duracionTransitorio5
global duracionTransitorio6 duracionTransitorio7 duracionTransitorio8 duracionTransitorio9 duracionTransitorio10
global amplitudSenoTransitorio1 amplitudSenoTransitorio2 amplitudSenoTransitorio3 amplitudSenoTransitorio4 amplitudSenoTransitorio5
global amplitudSenoTransitorio6 amplitudSenoTransitorio7 amplitudSenoTransitorio8 amplitudSenoTransitorio9 amplitudSenoTransitorio10
global frecuenciaSenoTransitorio1 frecuenciaSenoTransitorio2 frecuenciaSenoTransitorio3 frecuenciaSenoTransitorio4 frecuenciaSenoTransitorio5
global frecuenciaSenoTransitorio6 frecuenciaSenoTransitorio7 frecuenciaSenoTransitorio8 frecuenciaSenoTransitorio9 frecuenciaSenoTransitorio10
global faseSenoTransitorio1 faseSenoTransitorio2 faseSenoTransitorio3 faseSenoTransitorio4 faseSenoTransitorio5
global faseSenoTransitorio6 faseSenoTransitorio7 faseSenoTransitorio8 faseSenoTransitorio9 faseSenoTransitorio10
global exponenteTransitorio1 exponenteTransitorio2 exponenteTransitorio3 exponenteTransitorio4 exponenteTransitorio5
global exponenteTransitorio6 exponenteTransitorio7 exponenteTransitorio8 exponenteTransitorio9 exponenteTransitorio10

inicioTransitorio1=str2double(get(handles.InicioTransitorio1,'string'));
inicioTransitorio2=str2double(get(handles.InicioTransitorio2,'string'));
inicioTransitorio3=str2double(get(handles.InicioTransitorio3,'string'));
inicioTransitorio4=str2double(get(handles.InicioTransitorio4,'string'));
inicioTransitorio5=str2double(get(handles.InicioTransitorio5,'string'));
inicioTransitorio6=str2double(get(handles.InicioTransitorio6,'string'));
inicioTransitorio7=str2double(get(handles.InicioTransitorio7,'string'));
inicioTransitorio8=str2double(get(handles.InicioTransitorio8,'string'));
inicioTransitorio9=str2double(get(handles.InicioTransitorio9,'string'));
inicioTransitorio10=str2double(get(handles.InicioTransitorio10,'string'));

duracionTransitorio1=str2double(get(handles.DuracionTransitorio1,'string'));
duracionTransitorio2=str2double(get(handles.DuracionTransitorio2,'string'));
duracionTransitorio3=str2double(get(handles.DuracionTransitorio3,'string'));
duracionTransitorio4=str2double(get(handles.DuracionTransitorio4,'string'));
duracionTransitorio5=str2double(get(handles.DuracionTransitorio5,'string'));
duracionTransitorio6=str2double(get(handles.DuracionTransitorio6,'string'));
duracionTransitorio7=str2double(get(handles.DuracionTransitorio7,'string'));
duracionTransitorio8=str2double(get(handles.DuracionTransitorio8,'string'));
duracionTransitorio9=str2double(get(handles.DuracionTransitorio9,'string'));
duracionTransitorio10=str2double(get(handles.DuracionTransitorio10,'string'));

amplitudSenoTransitorio1=str2double(get(handles.AmplitudSenoTransitorio1,'string'));
amplitudSenoTransitorio2=str2double(get(handles.AmplitudSenoTransitorio2,'string'));
amplitudSenoTransitorio3=str2double(get(handles.AmplitudSenoTransitorio3,'string'));
amplitudSenoTransitorio4=str2double(get(handles.AmplitudSenoTransitorio4,'string'));
amplitudSenoTransitorio5=str2double(get(handles.AmplitudSenoTransitorio5,'string'));
amplitudSenoTransitorio6=str2double(get(handles.AmplitudSenoTransitorio6,'string'));
amplitudSenoTransitorio7=str2double(get(handles.AmplitudSenoTransitorio7,'string'));
amplitudSenoTransitorio8=str2double(get(handles.AmplitudSenoTransitorio8,'string'));
amplitudSenoTransitorio9=str2double(get(handles.AmplitudSenoTransitorio9,'string'));
amplitudSenoTransitorio10=str2double(get(handles.AmplitudSenoTransitorio10,'string'));

frecuenciaSenoTransitorio1=str2double(get(handles.FrecuenciaSenoTransitorio1,'string'));
frecuenciaSenoTransitorio2=str2double(get(handles.FrecuenciaSenoTransitorio2,'string'));
frecuenciaSenoTransitorio3=str2double(get(handles.FrecuenciaSenoTransitorio3,'string'));
frecuenciaSenoTransitorio4=str2double(get(handles.FrecuenciaSenoTransitorio4,'string'));
frecuenciaSenoTransitorio5=str2double(get(handles.FrecuenciaSenoTransitorio5,'string'));
frecuenciaSenoTransitorio6=str2double(get(handles.FrecuenciaSenoTransitorio6,'string'));
frecuenciaSenoTransitorio7=str2double(get(handles.FrecuenciaSenoTransitorio7,'string'));
frecuenciaSenoTransitorio8=str2double(get(handles.FrecuenciaSenoTransitorio8,'string'));
frecuenciaSenoTransitorio9=str2double(get(handles.FrecuenciaSenoTransitorio9,'string'));
frecuenciaSenoTransitorio10=str2double(get(handles.FrecuenciaSenoTransitorio10,'string'));

faseSenoTransitorio1=str2double(get(handles.FaseSenoTransitorio1,'string'));
faseSenoTransitorio2=str2double(get(handles.FaseSenoTransitorio2,'string'));
faseSenoTransitorio3=str2double(get(handles.FaseSenoTransitorio3,'string'));
faseSenoTransitorio4=str2double(get(handles.FaseSenoTransitorio4,'string'));
faseSenoTransitorio5=str2double(get(handles.FaseSenoTransitorio5,'string'));
faseSenoTransitorio6=str2double(get(handles.FaseSenoTransitorio6,'string'));
faseSenoTransitorio7=str2double(get(handles.FaseSenoTransitorio7,'string'));
faseSenoTransitorio8=str2double(get(handles.FaseSenoTransitorio8,'string'));
faseSenoTransitorio9=str2double(get(handles.FaseSenoTransitorio9,'string'));
faseSenoTransitorio10=str2double(get(handles.FaseSenoTransitorio10,'string'));

exponenteTransitorio1=str2double(get(handles.ExponenteTransitorio1,'string'));
exponenteTransitorio2=str2double(get(handles.ExponenteTransitorio2,'string'));
exponenteTransitorio3=str2double(get(handles.ExponenteTransitorio3,'string'));
exponenteTransitorio4=str2double(get(handles.ExponenteTransitorio4,'string'));
exponenteTransitorio5=str2double(get(handles.ExponenteTransitorio5,'string'));
exponenteTransitorio6=str2double(get(handles.ExponenteTransitorio6,'string'));
exponenteTransitorio7=str2double(get(handles.ExponenteTransitorio7,'string'));
exponenteTransitorio8=str2double(get(handles.ExponenteTransitorio8,'string'));
exponenteTransitorio9=str2double(get(handles.ExponenteTransitorio9,'string'));
exponenteTransitorio10=str2double(get(handles.ExponenteTransitorio10,'string'));

aceptarTransitorios=1;
close Transitorios;

function CancelarTransitorio_Callback(hObject, eventdata, handles)
close Transitorios;

function LimpiarTransitorio_Callback(hObject, eventdata, handles)
inicioTransitorio1=0; inicioTransitorio2=0; inicioTransitorio3=0; inicioTransitorio4=0; inicioTransitorio5=0;
inicioTransitorio6=0; inicioTransitorio7=0; inicioTransitorio8=0; inicioTransitorio9=0; inicioTransitorio10=0;
duracionTransitorio1=0; duracionTransitorio2=0; duracionTransitorio3=0; duracionTransitorio4=0; duracionTransitorio5=0;
duracionTransitorio6=0; duracionTransitorio7=0; duracionTransitorio8=0; duracionTransitorio9=0; duracionTransitorio10=0;
amplitudSenoTransitorio1=0; amplitudSenoTransitorio2=0; amplitudSenoTransitorio3=0; amplitudSenoTransitorio4=0; amplitudSenoTransitorio5=0;
amplitudSenoTransitorio6=0; amplitudSenoTransitorio7=0; amplitudSenoTransitorio8=0; amplitudSenoTransitorio9=0; amplitudSenoTransitorio10=0;
frecuenciaSenoTransitorio1=0; frecuenciaSenoTransitorio2=0; frecuenciaSenoTransitorio3=0; frecuenciaSenoTransitorio4=0; frecuenciaSenoTransitorio5=0;
frecuenciaSenoTransitorio6=0; frecuenciaSenoTransitorio7=0; frecuenciaSenoTransitorio8=0; frecuenciaSenoTransitorio9=0; frecuenciaSenoTransitorio10=0;
faseSenoTransitorio1=0; faseSenoTransitorio2=0; faseSenoTransitorio3=0; faseSenoTransitorio4=0; faseSenoTransitorio5=0;
faseSenoTransitorio6=0; faseSenoTransitorio7=0; faseSenoTransitorio8=0; faseSenoTransitorio9=0; faseSenoTransitorio10=0;
exponenteTransitorio1=0; exponenteTransitorio2=0; exponenteTransitorio3=0; exponenteTransitorio4=0; exponenteTransitorio5=0;
exponenteTransitorio6=0; exponenteTransitorio7=0; exponenteTransitorio8=0; exponenteTransitorio9=0; exponenteTransitorio10=0;
set(handles.InicioTransitorio1,'string',num2str(inicioTransitorio1));
set(handles.InicioTransitorio2,'string',num2str(inicioTransitorio2));
set(handles.InicioTransitorio3,'string',num2str(inicioTransitorio3));
set(handles.InicioTransitorio4,'string',num2str(inicioTransitorio4));
set(handles.InicioTransitorio5,'string',num2str(inicioTransitorio5));
set(handles.InicioTransitorio6,'string',num2str(inicioTransitorio6));
set(handles.InicioTransitorio7,'string',num2str(inicioTransitorio7));
set(handles.InicioTransitorio8,'string',num2str(inicioTransitorio8));
set(handles.InicioTransitorio9,'string',num2str(inicioTransitorio9));
set(handles.InicioTransitorio10,'string',num2str(inicioTransitorio10));
set(handles.DuracionTransitorio1,'string',num2str(duracionTransitorio1));
set(handles.DuracionTransitorio2,'string',num2str(duracionTransitorio2));
set(handles.DuracionTransitorio3,'string',num2str(duracionTransitorio3));
set(handles.DuracionTransitorio4,'string',num2str(duracionTransitorio4));
set(handles.DuracionTransitorio5,'string',num2str(duracionTransitorio5));
set(handles.DuracionTransitorio6,'string',num2str(duracionTransitorio6));
set(handles.DuracionTransitorio7,'string',num2str(duracionTransitorio7));
set(handles.DuracionTransitorio8,'string',num2str(duracionTransitorio8));
set(handles.DuracionTransitorio9,'string',num2str(duracionTransitorio9));
set(handles.DuracionTransitorio10,'string',num2str(duracionTransitorio10));
set(handles.AmplitudSenoTransitorio1,'string',num2str(amplitudSenoTransitorio1));
set(handles.AmplitudSenoTransitorio2,'string',num2str(amplitudSenoTransitorio2));
set(handles.AmplitudSenoTransitorio3,'string',num2str(amplitudSenoTransitorio3));
set(handles.AmplitudSenoTransitorio4,'string',num2str(amplitudSenoTransitorio4));
set(handles.AmplitudSenoTransitorio5,'string',num2str(amplitudSenoTransitorio5));
set(handles.AmplitudSenoTransitorio6,'string',num2str(amplitudSenoTransitorio6));
set(handles.AmplitudSenoTransitorio7,'string',num2str(amplitudSenoTransitorio7));
set(handles.AmplitudSenoTransitorio8,'string',num2str(amplitudSenoTransitorio8));
set(handles.AmplitudSenoTransitorio9,'string',num2str(amplitudSenoTransitorio9));
set(handles.AmplitudSenoTransitorio10,'string',num2str(amplitudSenoTransitorio10));
set(handles.FrecuenciaSenoTransitorio1,'string',num2str(frecuenciaSenoTransitorio1));
set(handles.FrecuenciaSenoTransitorio2,'string',num2str(frecuenciaSenoTransitorio2));
set(handles.FrecuenciaSenoTransitorio3,'string',num2str(frecuenciaSenoTransitorio3));
set(handles.FrecuenciaSenoTransitorio4,'string',num2str(frecuenciaSenoTransitorio4));
set(handles.FrecuenciaSenoTransitorio5,'string',num2str(frecuenciaSenoTransitorio5));
set(handles.FrecuenciaSenoTransitorio6,'string',num2str(frecuenciaSenoTransitorio6));
set(handles.FrecuenciaSenoTransitorio7,'string',num2str(frecuenciaSenoTransitorio7));
set(handles.FrecuenciaSenoTransitorio8,'string',num2str(frecuenciaSenoTransitorio8));
set(handles.FrecuenciaSenoTransitorio9,'string',num2str(frecuenciaSenoTransitorio9));
set(handles.FrecuenciaSenoTransitorio10,'string',num2str(frecuenciaSenoTransitorio10));
set(handles.FaseSenoTransitorio1,'string',num2str(faseSenoTransitorio1));
set(handles.FaseSenoTransitorio2,'string',num2str(faseSenoTransitorio2));
set(handles.FaseSenoTransitorio3,'string',num2str(faseSenoTransitorio3));
set(handles.FaseSenoTransitorio4,'string',num2str(faseSenoTransitorio4));
set(handles.FaseSenoTransitorio5,'string',num2str(faseSenoTransitorio5));
set(handles.FaseSenoTransitorio6,'string',num2str(faseSenoTransitorio6));
set(handles.FaseSenoTransitorio7,'string',num2str(faseSenoTransitorio7));
set(handles.FaseSenoTransitorio8,'string',num2str(faseSenoTransitorio8));
set(handles.FaseSenoTransitorio9,'string',num2str(faseSenoTransitorio9));
set(handles.FaseSenoTransitorio10,'string',num2str(faseSenoTransitorio10));
set(handles.ExponenteTransitorio1,'string',num2str(exponenteTransitorio1));
set(handles.ExponenteTransitorio2,'string',num2str(exponenteTransitorio2));
set(handles.ExponenteTransitorio3,'string',num2str(exponenteTransitorio3));
set(handles.ExponenteTransitorio4,'string',num2str(exponenteTransitorio4));
set(handles.ExponenteTransitorio5,'string',num2str(exponenteTransitorio5));
set(handles.ExponenteTransitorio6,'string',num2str(exponenteTransitorio6));
set(handles.ExponenteTransitorio7,'string',num2str(exponenteTransitorio7));
set(handles.ExponenteTransitorio8,'string',num2str(exponenteTransitorio8));
set(handles.ExponenteTransitorio9,'string',num2str(exponenteTransitorio9));
set(handles.ExponenteTransitorio10,'string',num2str(exponenteTransitorio10));
