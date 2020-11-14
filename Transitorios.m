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
% Choose default command line output for Transitorios
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = Transitorios_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;

function InicioTransitorio1_Callback(hObject, eventdata, handles)
global inicioTransitorio1
inicioTransitorio1=str2double(get(hObject,'string'));

function InicioTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio1_Callback(hObject, eventdata, handles)
global duracionTransitorio1
duracionTransitorio1=str2double(get(hObject,'string'));

function DuracionTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio1_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio1
amplitudSenoTransitorio1=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio1_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio1
frecuenciaSenoTransitorio1=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio1_Callback(hObject, eventdata, handles)
global faseSenoTransitorio1
faseSenoTransitorio1=str2double(get(hObject,'string'));

function FaseSenoTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio1_Callback(hObject, eventdata, handles)
global exponenteTransitorio1
exponenteTransitorio1=str2double(get(hObject,'string'));

function ExponenteTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio2_Callback(hObject, eventdata, handles)
global inicioTransitorio2
inicioTransitorio2=str2double(get(hObject,'string'));

function InicioTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio2_Callback(hObject, eventdata, handles)
global duracionTransitorio2
duracionTransitorio2=str2double(get(hObject,'string'));

function DuracionTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio2_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio2
amplitudSenoTransitorio2=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio2_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio2
frecuenciaSenoTransitorio2=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio2_Callback(hObject, eventdata, handles)
global faseSenoTransitorio2
faseSenoTransitorio2=str2double(get(hObject,'string'));

function FaseSenoTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio2_Callback(hObject, eventdata, handles)
global exponenteTransitorio2
exponenteTransitorio2=str2double(get(hObject,'string'));

function ExponenteTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio3_Callback(hObject, eventdata, handles)
global inicioTransitorio3
inicioTransitorio3=str2double(get(hObject,'string'));

function InicioTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio3_Callback(hObject, eventdata, handles)
global duracionTransitorio3
duracionTransitorio3=str2double(get(hObject,'string'));

function DuracionTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio3_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio3
amplitudSenoTransitorio3=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio3_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio3
frecuenciaSenoTransitorio3=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio3_Callback(hObject, eventdata, handles)
global faseSenoTransitorio3
faseSenoTransitorio3=str2double(get(hObject,'string'));

function FaseSenoTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio3_Callback(hObject, eventdata, handles)
global exponenteTransitorio3
exponenteTransitorio3=str2double(get(hObject,'string'));

function ExponenteTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio4_Callback(hObject, eventdata, handles)
global inicioTransitorio4
inicioTransitorio4=str2double(get(hObject,'string'));

function InicioTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio4_Callback(hObject, eventdata, handles)
global duracionTransitorio4
duracionTransitorio4=str2double(get(hObject,'string'));

function DuracionTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio4_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio4
amplitudSenoTransitorio4=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio4_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio4
frecuenciaSenoTransitorio4=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio4_Callback(hObject, eventdata, handles)
global faseSenoTransitorio4
faseSenoTransitorio4=str2double(get(hObject,'string'));

function FaseSenoTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio4_Callback(hObject, eventdata, handles)
global exponenteTransitorio4
exponenteTransitorio4=str2double(get(hObject,'string'));

function ExponenteTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio5_Callback(hObject, eventdata, handles)
global inicioTransitorio5
inicioTransitorio5=str2double(get(hObject,'string'));

function InicioTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio5_Callback(hObject, eventdata, handles)
global duracionTransitorio5
duracionTransitorio5=str2double(get(hObject,'string'));

function DuracionTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio5_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio5
amplitudSenoTransitorio5=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio5_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio5
frecuenciaSenoTransitorio5=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio5_Callback(hObject, eventdata, handles)
global faseSenoTransitorio5
faseSenoTransitorio5=str2double(get(hObject,'string'));

function FaseSenoTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio5_Callback(hObject, eventdata, handles)
global exponenteTransitorio5
exponenteTransitorio5=str2double(get(hObject,'string'));

function ExponenteTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio6_Callback(hObject, eventdata, handles)
global inicioTransitorio6
inicioTransitorio6=str2double(get(hObject,'string'));

function InicioTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio6_Callback(hObject, eventdata, handles)
global duracionTransitorio6
duracionTransitorio6=str2double(get(hObject,'string'));

function DuracionTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio6_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio6
amplitudSenoTransitorio6=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio6_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio6
frecuenciaSenoTransitorio6=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio6_Callback(hObject, eventdata, handles)
global faseSenoTransitorio6
faseSenoTransitorio6=str2double(get(hObject,'string'));

function FaseSenoTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio6_Callback(hObject, eventdata, handles)
global exponenteTransitorio6
exponenteTransitorio6=str2double(get(hObject,'string'));

function ExponenteTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio7_Callback(hObject, eventdata, handles)
global inicioTransitorio7
inicioTransitorio7=str2double(get(hObject,'string'));

function InicioTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio7_Callback(hObject, eventdata, handles)
global duracionTransitorio7
duracionTransitorio7=str2double(get(hObject,'string'));

function DuracionTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio7_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio7
amplitudSenoTransitorio7=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio7_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio7
frecuenciaSenoTransitorio7=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio7_Callback(hObject, eventdata, handles)
global faseSenoTransitorio7
faseSenoTransitorio7=str2double(get(hObject,'string'));

function FaseSenoTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio7_Callback(hObject, eventdata, handles)
global exponenteTransitorio7
exponenteTransitorio7=str2double(get(hObject,'string'));

function ExponenteTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio8_Callback(hObject, eventdata, handles)
global inicioTransitorio8
inicioTransitorio8=str2double(get(hObject,'string'));

function InicioTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio8_Callback(hObject, eventdata, handles)
global duracionTransitorio8
duracionTransitorio8=str2double(get(hObject,'string'));

function DuracionTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio8_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio8
amplitudSenoTransitorio8=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio8_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio8
frecuenciaSenoTransitorio8=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio8_Callback(hObject, eventdata, handles)
global faseSenoTransitorio8
faseSenoTransitorio8=str2double(get(hObject,'string'));

function FaseSenoTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio8_Callback(hObject, eventdata, handles)
global exponenteTransitorio8
exponenteTransitorio8=str2double(get(hObject,'string'));

function ExponenteTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio9_Callback(hObject, eventdata, handles)
global inicioTransitorio9
inicioTransitorio9=str2double(get(hObject,'string'));

function InicioTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio9_Callback(hObject, eventdata, handles)
global duracionTransitorio9
duracionTransitorio9=str2double(get(hObject,'string'));

function DuracionTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio10_Callback(hObject, eventdata, handles)
global exponenteTransitorio10
exponenteTransitorio10=str2double(get(hObject,'string'));

function ExponenteTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio9_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio9
amplitudSenoTransitorio9=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio9_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio9
frecuenciaSenoTransitorio9=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio9_Callback(hObject, eventdata, handles)
global faseSenoTransitorio9
faseSenoTransitorio9=str2double(get(hObject,'string'));

function FaseSenoTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio9_Callback(hObject, eventdata, handles)
global exponenteTransitorio9
exponenteTransitorio9=str2double(get(hObject,'string'));

function ExponenteTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio10_Callback(hObject, eventdata, handles)
global inicioTransitorio10
inicioTransitorio10=str2double(get(hObject,'string'));

function InicioTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio10_Callback(hObject, eventdata, handles)
global duracionTransitorio10
duracionTransitorio10=str2double(get(hObject,'string'));

function DuracionTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio10_Callback(hObject, eventdata, handles)
global amplitudSenoTransitorio10
amplitudSenoTransitorio10=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio10_Callback(hObject, eventdata, handles)
global frecuenciaSenoTransitorio10
frecuenciaSenoTransitorio10=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio10_Callback(hObject, eventdata, handles)
global faseSenoTransitorio10
faseSenoTransitorio10=str2double(get(hObject,'string'));

function FaseSenoTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AceptarTransitorio_Callback(hObject, eventdata, handles)
global aceptarTransitorio
aceptarTransitorio=1;

function CancelarTransitorio_Callback(hObject, eventdata, handles)
close InterfazTran;