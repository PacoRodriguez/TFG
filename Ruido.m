function varargout = Ruido(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ruido_OpeningFcn, ...
                   'gui_OutputFcn',  @Ruido_OutputFcn, ...
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

function Ruido_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for Ruido
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = Ruido_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;

function Decibelios_Callback(hObject, eventdata, handles)
global db
db=str2double(get(hObject,'string'));

function Decibelios_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AceptarRuido_Callback(hObject, eventdata, handles)
global aceptarRuido
aceptarRuido=1;
close Ruido;

function CancelarRuido_Callback(hObject, eventdata, handles)
close Ruido;
