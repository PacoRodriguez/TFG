function varargout = Flicker(varargin)
% FLICKER MATLAB code for Flicker.fig
%      FLICKER, by itself, creates a new FLICKER or raises the existing
%      singleton*.
%
%      H = FLICKER returns the handle to a new FLICKER or the handle to
%      the existing singleton*.
%
%      FLICKER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FLICKER.M with the given input arguments.
%
%      FLICKER('Property','Value',...) creates a new FLICKER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Flicker_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Flicker_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Flicker

% Last Modified by GUIDE v2.5 03-Nov-2020 19:43:52

% Begin initialization code - DO NOT EDIT
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
% End initialization code - DO NOT EDIT


% --- Executes just before Flicker is made visible.
function Flicker_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Flicker (see VARARGIN)

% Choose default command line output for Flicker
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = Flicker_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function InicioFlicker_Callback(hObject, eventdata, handles)
inicioFlicker=str2double(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function InicioFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionFlicker_Callback(hObject, eventdata, handles)
duracionFlicker=str2double(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function DuracionFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AmplitudFlicker_Callback(hObject, eventdata, handles)
amplitudFlicker=str2double(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function AmplitudFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FrecuenciaFlicker_Callback(hObject, eventdata, handles)
frecuenciaFlicker=str2double(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function FrecuenciaFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FaseFlicker_Callback(hObject, eventdata, handles)
faseFlicker=str2double(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function FaseFlicker_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in AceptarFlicker.
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

% --- Executes on button press in CancelarFlicker.
function CancelarFlicker_Callback(hObject, eventdata, handles)
close Flicker;