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
% global inicioTransitorio1
% inicioTransitorio1=str2double(get(hObject,'string'));

function InicioTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio1_Callback(hObject, eventdata, handles)
% global duracionTransitorio1
% duracionTransitorio1=str2double(get(hObject,'string'));

function DuracionTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio1_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio1
% amplitudSenoTransitorio1=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio1_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio1
% frecuenciaSenoTransitorio1=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio1_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio1
% faseSenoTransitorio1=str2double(get(hObject,'string'));

function FaseSenoTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio1_Callback(hObject, eventdata, handles)
% global exponenteTransitorio1
% exponenteTransitorio1=str2double(get(hObject,'string'));

function ExponenteTransitorio1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio2_Callback(hObject, eventdata, handles)
% global inicioTransitorio2
% inicioTransitorio2=str2double(get(hObject,'string'));

function InicioTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio2_Callback(hObject, eventdata, handles)
% global duracionTransitorio2
% duracionTransitorio2=str2double(get(hObject,'string'));

function DuracionTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio2_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio2
% amplitudSenoTransitorio2=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio2_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio2
% frecuenciaSenoTransitorio2=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio2_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio2
% faseSenoTransitorio2=str2double(get(hObject,'string'));

function FaseSenoTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio2_Callback(hObject, eventdata, handles)
% global exponenteTransitorio2
% exponenteTransitorio2=str2double(get(hObject,'string'));

function ExponenteTransitorio2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio3_Callback(hObject, eventdata, handles)
% global inicioTransitorio3
% inicioTransitorio3=str2double(get(hObject,'string'));

function InicioTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio3_Callback(hObject, eventdata, handles)
% global duracionTransitorio3
% duracionTransitorio3=str2double(get(hObject,'string'));

function DuracionTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio3_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio3
% amplitudSenoTransitorio3=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio3_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio3
% frecuenciaSenoTransitorio3=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio3_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio3
% faseSenoTransitorio3=str2double(get(hObject,'string'));

function FaseSenoTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio3_Callback(hObject, eventdata, handles)
% global exponenteTransitorio3
% exponenteTransitorio3=str2double(get(hObject,'string'));

function ExponenteTransitorio3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio4_Callback(hObject, eventdata, handles)
% global inicioTransitorio4
% inicioTransitorio4=str2double(get(hObject,'string'));

function InicioTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio4_Callback(hObject, eventdata, handles)
% global duracionTransitorio4
% duracionTransitorio4=str2double(get(hObject,'string'));

function DuracionTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio4_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio4
% amplitudSenoTransitorio4=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio4_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio4
% frecuenciaSenoTransitorio4=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio4_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio4
% faseSenoTransitorio4=str2double(get(hObject,'string'));

function FaseSenoTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio4_Callback(hObject, eventdata, handles)
% global exponenteTransitorio4
% exponenteTransitorio4=str2double(get(hObject,'string'));

function ExponenteTransitorio4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio5_Callback(hObject, eventdata, handles)
% global inicioTransitorio5
% inicioTransitorio5=str2double(get(hObject,'string'));

function InicioTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio5_Callback(hObject, eventdata, handles)
% global duracionTransitorio5
% duracionTransitorio5=str2double(get(hObject,'string'));

function DuracionTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio5_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio5
% amplitudSenoTransitorio5=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio5_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio5
% frecuenciaSenoTransitorio5=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio5_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio5
% faseSenoTransitorio5=str2double(get(hObject,'string'));

function FaseSenoTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio5_Callback(hObject, eventdata, handles)
% global exponenteTransitorio5
% exponenteTransitorio5=str2double(get(hObject,'string'));

function ExponenteTransitorio5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio6_Callback(hObject, eventdata, handles)
% global inicioTransitorio6
% inicioTransitorio6=str2double(get(hObject,'string'));

function InicioTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio6_Callback(hObject, eventdata, handles)
% global duracionTransitorio6
% duracionTransitorio6=str2double(get(hObject,'string'));

function DuracionTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio6_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio6
% amplitudSenoTransitorio6=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio6_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio6
% frecuenciaSenoTransitorio6=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio6_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio6
% faseSenoTransitorio6=str2double(get(hObject,'string'));

function FaseSenoTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio6_Callback(hObject, eventdata, handles)
% global exponenteTransitorio6
% exponenteTransitorio6=str2double(get(hObject,'string'));

function ExponenteTransitorio6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio7_Callback(hObject, eventdata, handles)
% global inicioTransitorio7
% inicioTransitorio7=str2double(get(hObject,'string'));

function InicioTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio7_Callback(hObject, eventdata, handles)
% global duracionTransitorio7
% duracionTransitorio7=str2double(get(hObject,'string'));

function DuracionTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio7_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio7
% amplitudSenoTransitorio7=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio7_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio7
% frecuenciaSenoTransitorio7=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio7_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio7
% faseSenoTransitorio7=str2double(get(hObject,'string'));

function FaseSenoTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio7_Callback(hObject, eventdata, handles)
% global exponenteTransitorio7
% exponenteTransitorio7=str2double(get(hObject,'string'));

function ExponenteTransitorio7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio8_Callback(hObject, eventdata, handles)
% global inicioTransitorio8
% inicioTransitorio8=str2double(get(hObject,'string'));

function InicioTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio8_Callback(hObject, eventdata, handles)
% global duracionTransitorio8
% duracionTransitorio8=str2double(get(hObject,'string'));

function DuracionTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio8_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio8
% amplitudSenoTransitorio8=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio8_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio8
% frecuenciaSenoTransitorio8=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio8_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio8
% faseSenoTransitorio8=str2double(get(hObject,'string'));

function FaseSenoTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio8_Callback(hObject, eventdata, handles)
% global exponenteTransitorio8
% exponenteTransitorio8=str2double(get(hObject,'string'));

function ExponenteTransitorio8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio9_Callback(hObject, eventdata, handles)
% global inicioTransitorio9
% inicioTransitorio9=str2double(get(hObject,'string'));

function InicioTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio9_Callback(hObject, eventdata, handles)
% global duracionTransitorio9
% duracionTransitorio9=str2double(get(hObject,'string'));

function DuracionTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio10_Callback(hObject, eventdata, handles)
% global exponenteTransitorio10
% exponenteTransitorio10=str2double(get(hObject,'string'));

function ExponenteTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio9_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio9
% amplitudSenoTransitorio9=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio9_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio9
% frecuenciaSenoTransitorio9=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio9_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio9
% faseSenoTransitorio9=str2double(get(hObject,'string'));

function FaseSenoTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ExponenteTransitorio9_Callback(hObject, eventdata, handles)
% global exponenteTransitorio9
% exponenteTransitorio9=str2double(get(hObject,'string'));

function ExponenteTransitorio9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioTransitorio10_Callback(hObject, eventdata, handles)
% global inicioTransitorio10
% inicioTransitorio10=str2double(get(hObject,'string'));

function InicioTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionTransitorio10_Callback(hObject, eventdata, handles)
% global duracionTransitorio10
% duracionTransitorio10=str2double(get(hObject,'string'));

function DuracionTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudSenoTransitorio10_Callback(hObject, eventdata, handles)
% global amplitudSenoTransitorio10
% amplitudSenoTransitorio10=str2double(get(hObject,'string'));

function AmplitudSenoTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FrecuenciaSenoTransitorio10_Callback(hObject, eventdata, handles)
% global frecuenciaSenoTransitorio10
% frecuenciaSenoTransitorio10=str2double(get(hObject,'string'));

function FrecuenciaSenoTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function FaseSenoTransitorio10_Callback(hObject, eventdata, handles)
% global faseSenoTransitorio10
% faseSenoTransitorio10=str2double(get(hObject,'string'));

function FaseSenoTransitorio10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AceptarTransitorio_Callback(hObject, eventdata, handles)
global aceptarTransitorio
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

aceptarTransitorio=1;
close Transitorios;

function CancelarTransitorio_Callback(hObject, eventdata, handles)
close Transitorios;