function varargout = InterfazHueSob(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InterfazHueSob_OpeningFcn, ...
                   'gui_OutputFcn',  @InterfazHueSob_OutputFcn, ...
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

function InterfazHueSob_OpeningFcn(hObject, eventdata, handles, varargin)

global y

% Choose default command line output for InterfazHueSob
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = InterfazHueSob_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function popupmenu1_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu1,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu2_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu2,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu3_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu3,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu4_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu4,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu5_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu5,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu6_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu6,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu7_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu7,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu8_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu8,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu9_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu9,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu10_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion=get(handles.popupmenu10,'Value');
switch perturbacion
    case 2
        hueco=1;
    case 3
        sobretension=1;
end

function popupmenu10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion1_Callback(hObject, eventdata, handles)
global amplitudPerturbacion1 hueco sobretension
if hueco==1
    amplitudPerturbacion1=(str2double(get(hObject,'string')))/100;
elseif sobretension==1
    amplitudPerturbacion1=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion1_Callback(hObject, eventdata, handles)
global inicioPerturbacion1
inicioPerturbacion1=str2double(get(hObject,'string'));

function InicioPerturbacion1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion1_Callback(hObject, eventdata, handles)
global duracionPerturbacion1
duracionPerturbacion1=str2double(get(hObject,'string'));

function DuracionPerturbacion1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion1_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion1 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion1 as a double
pendienteInicioPerturbacion1=str2double(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion1_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion1 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion1 as a double
pendienteFinalPerturbacion1=str2double(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion2_Callback(hObject, eventdata, handles)
global amplitudPerturbacion2 hueco sobretension
if hueco==1
    amplitudPerturbacion2=(str2double(get(hObject,'string')))/100;
elseif sobretension==1
    amplitudPerturbacion2=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion2_Callback(hObject, eventdata, handles)
global inicioPerturbacion2
inicioPerturbacion2=str2double(get(hObject,'string'));

function InicioPerturbacion2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion2_Callback(hObject, eventdata, handles)
global duracionPerturbacion2
duracionPerturbacion2=str2double(get(hObject,'string'));

function DuracionPerturbacion2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion2_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion2 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion2 as a double

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion2_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion2 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion2 as a double

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion3_Callback(hObject, eventdata, handles)
global amplitudPerturbacion3 hueco
if hueco==1
    amplitudPerturbacion3=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion3=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion3_Callback(hObject, eventdata, handles)
global inicioPerturbacion3
inicioPerturbacion3=str2double(get(hObject,'string'));

function InicioPerturbacion3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion3_Callback(hObject, eventdata, handles)
global duracionPerturbacion3
duracionPerturbacion3=str2double(get(hObject,'string'));

function DuracionPerturbacion3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion3_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion3 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion3 as a double

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion3_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion3 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion3 as a double

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion4_Callback(hObject, eventdata, handles)
global amplitudPerturbacion4 hueco
if hueco==1
    amplitudPerturbacion4=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion4=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion4_Callback(hObject, eventdata, handles)
global inicioPerturbacion4
inicioPerturbacion4=str2double(get(hObject,'string'));

function InicioPerturbacion4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion4_Callback(hObject, eventdata, handles)
global duracionPerturbacion4
duracionPerturbacion4=str2double(get(hObject,'string'));

function DuracionPerturbacion4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion4_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion4 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion4 as a double

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion4_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion4 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion4 as a double

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion5_Callback(hObject, eventdata, handles)
global amplitudPerturbacion5 hueco
if hueco==1
    amplitudPerturbacion5=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion5=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion5_Callback(hObject, eventdata, handles)
global inicioPerturbacion5
inicioPerturbacion5=str2double(get(hObject,'string'));

function InicioPerturbacion5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion5_Callback(hObject, eventdata, handles)
global duracionPerturbacion5
duracionPerturbacion5=str2double(get(hObject,'string'));

function DuracionPerturbacion5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion5_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion5 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion5 as a double

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion5_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion5 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion5 as a double

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion6_Callback(hObject, eventdata, handles)
global amplitudPerturbacion6 hueco
if hueco==1
    amplitudPerturbacion6=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion6=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion6_Callback(hObject, eventdata, handles)
global inicioPerturbacion6
inicioPerturbacion6=str2double(get(hObject,'string'));

function InicioPerturbacion6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion6_Callback(hObject, eventdata, handles)
global duracionPerturbacion6
duracionPerturbacion6=str2double(get(hObject,'string'));

function DuracionPerturbacion6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion6_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion6 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion6 as a double

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion6_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion6 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion6 as a double

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion7_Callback(hObject, eventdata, handles)
global amplitudPerturbacion7 hueco
if hueco==1
    amplitudPerturbacion7=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion7=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion7_Callback(hObject, eventdata, handles)
global inicioPerturbacion7
inicioPerturbacion7=str2double(get(hObject,'string'));

function InicioPerturbacion7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion7_Callback(hObject, eventdata, handles)
global duracionPerturbacion7
duracionPerturbacion7=str2double(get(hObject,'string'));

function DuracionPerturbacion7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion7_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion7 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion7 as a double

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion7_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion7 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion7 as a double

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion8_Callback(hObject, eventdata, handles)
global amplitudPerturbacion8 hueco
if hueco==1
    amplitudPerturbacion8=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion8=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion8_Callback(hObject, eventdata, handles)
global inicioPerturbacion8
inicioPerturbacion8=str2double(get(hObject,'string'));

function InicioPerturbacion8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion8_Callback(hObject, eventdata, handles)
global duracionPerturbacion8
duracionPerturbacion8=str2double(get(hObject,'string'));

function DuracionPerturbacion8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion8_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion8 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion8 as a double

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion8_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion8 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion8 as a double

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion9_Callback(hObject, eventdata, handles)
global amplitudPerturbacion9 hueco
if hueco==1
    amplitudPerturbacion9=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion9=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion9_Callback(hObject, eventdata, handles)
global inicioPerturbacion9
inicioPerturbacion9=str2double(get(hObject,'string'));

function InicioPerturbacion9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion9_Callback(hObject, eventdata, handles)
global duracionPerturbacion9
duracionPerturbacion9=str2double(get(hObject,'string'));

function DuracionPerturbacion9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion9_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion9 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion9 as a double

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion9_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion9 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion9 as a double

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion10_Callback(hObject, eventdata, handles)
global amplitudPerturbacion10 hueco
if hueco==1
    amplitudPerturbacion10=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion10=1+(str2double(get(hObject,'string')))/100;
end

function AmplitudPerturbacion10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function InicioPerturbacion10_Callback(hObject, eventdata, handles)
global inicioPerturbacion10
inicioPerturbacion10=str2double(get(hObject,'string'));

function InicioPerturbacion10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DuracionPerturbacion10_Callback(hObject, eventdata, handles)
global duracionPerturbacion10
duracionPerturbacion10=str2double(get(hObject,'string'));

function DuracionPerturbacion10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteInicioPerturbacion10_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteInicioPerturbacion10 as text
%        str2double(get(hObject,'String')) returns contents of PendienteInicioPerturbacion10 as a double

% --- Executes during object creation, after setting all properties.
function PendienteInicioPerturbacion10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteInicioPerturbacion10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function PendienteFinalPerturbacion10_Callback(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PendienteFinalPerturbacion10 as text
%        str2double(get(hObject,'String')) returns contents of PendienteFinalPerturbacion10 as a double

% --- Executes during object creation, after setting all properties.
function PendienteFinalPerturbacion10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PendienteFinalPerturbacion10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AceptarHuecoSobretension_Callback(hObject, eventdata, handles)
global aceptarHuecoSobretension
aceptarHuecoSobretension=1;
close InterfazHueSob;

function CancelarHuecoSobretension_Callback(hObject, eventdata, handles)
close InterfazHueSob;
