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
global perturbacion1 perturbacion2 perturbacion3 perturbacion4 perturbacion5 perturbacion6
global perturbacion7 perturbacion8 perturbacion9 perturbacion10
global amplitudPerturbacion1 amplitudPerturbacion2 amplitudPerturbacion3 amplitudPerturbacion4 amplitudPerturbacion5
global amplitudPerturbacion6 amplitudPerturbacion7 amplitudPerturbacion8 amplitudPerturbacion9 amplitudPerturbacion10
global inicioPerturbacion1 inicioPerturbacion2 inicioPerturbacion3 inicioPerturbacion4 inicioPerturbacion5 inicioPerturbacion6
global inicioPerturbacion7 inicioPerturbacion8 inicioPerturbacion9 inicioPerturbacion10
global duracionPerturbacion1 duracionPerturbacion2 duracionPerturbacion3 duracionPerturbacion4 duracionPerturbacion5 
global duracionPerturbacion6 duracionPerturbacion7 duracionPerturbacion8 duracionPerturbacion9 duracionPerturbacion10
set(handles.popupmenu1,'value',perturbacion1);
set(handles.popupmenu2,'value',perturbacion2);
set(handles.popupmenu3,'value',perturbacion3);
set(handles.popupmenu4,'value',perturbacion4);
set(handles.popupmenu5,'value',perturbacion5);
set(handles.popupmenu6,'value',perturbacion6);
set(handles.popupmenu7,'value',perturbacion7);
set(handles.popupmenu8,'value',perturbacion8);
set(handles.popupmenu9,'value',perturbacion9);
set(handles.popupmenu10,'value',perturbacion10);
set(handles.AmplitudPerturbacion1,'string',num2str(amplitudPerturbacion1*100));
set(handles.AmplitudPerturbacion2,'string',num2str(amplitudPerturbacion2*100));
set(handles.AmplitudPerturbacion3,'string',num2str(amplitudPerturbacion3*100));
set(handles.AmplitudPerturbacion4,'string',num2str(amplitudPerturbacion4*100));
set(handles.AmplitudPerturbacion5,'string',num2str(amplitudPerturbacion5*100));
set(handles.AmplitudPerturbacion6,'string',num2str(amplitudPerturbacion6*100));
set(handles.AmplitudPerturbacion7,'string',num2str(amplitudPerturbacion7*100));
set(handles.AmplitudPerturbacion8,'string',num2str(amplitudPerturbacion8*100));
set(handles.AmplitudPerturbacion9,'string',num2str(amplitudPerturbacion9*100));
set(handles.AmplitudPerturbacion10,'string',num2str(amplitudPerturbacion10*100));
set(handles.InicioPerturbacion1,'string',num2str(inicioPerturbacion1));
set(handles.InicioPerturbacion2,'string',num2str(inicioPerturbacion2));
set(handles.InicioPerturbacion3,'string',num2str(inicioPerturbacion3));
set(handles.InicioPerturbacion4,'string',num2str(inicioPerturbacion4));
set(handles.InicioPerturbacion5,'string',num2str(inicioPerturbacion5));
set(handles.InicioPerturbacion6,'string',num2str(inicioPerturbacion6));
set(handles.InicioPerturbacion7,'string',num2str(inicioPerturbacion7));
set(handles.InicioPerturbacion8,'string',num2str(inicioPerturbacion8));
set(handles.InicioPerturbacion9,'string',num2str(inicioPerturbacion9));
set(handles.InicioPerturbacion10,'string',num2str(inicioPerturbacion10));
set(handles.DuracionPerturbacion1,'string',num2str(duracionPerturbacion1));
set(handles.DuracionPerturbacion2,'string',num2str(duracionPerturbacion2));
set(handles.DuracionPerturbacion3,'string',num2str(duracionPerturbacion3));
set(handles.DuracionPerturbacion4,'string',num2str(duracionPerturbacion4));
set(handles.DuracionPerturbacion5,'string',num2str(duracionPerturbacion5));
set(handles.DuracionPerturbacion6,'string',num2str(duracionPerturbacion6));
set(handles.DuracionPerturbacion7,'string',num2str(duracionPerturbacion7));
set(handles.DuracionPerturbacion8,'string',num2str(duracionPerturbacion8));
set(handles.DuracionPerturbacion9,'string',num2str(duracionPerturbacion9));
set(handles.DuracionPerturbacion10,'string',num2str(duracionPerturbacion10));


% Choose default command line output for InterfazHueSob
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = InterfazHueSob_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function popupmenu1_Callback(hObject, eventdata, handles)
% global hueco sobretension
% perturbacion1=get(handles.popupmenu1,'Value');
% switch perturbacion1
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu2_Callback(hObject, eventdata, handles)
% global hueco sobretension perturbacion2
% perturbacion2=get(handles.popupmenu2,'Value');
% switch perturbacion2
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu3_Callback(hObject, eventdata, handles)
% global hueco sobretension perturbacion3
% perturbacion3=get(handles.popupmenu3,'Value');
% switch perturbacion3
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu4_Callback(hObject, eventdata, handles)
% global hueco sobretension perturbacion4
% perturbacion4=get(handles.popupmenu4,'Value');
% switch perturbacion4
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu5_Callback(hObject, eventdata, handles)
% global hueco sobretension perturbacion5
% perturbacion5=get(handles.popupmenu5,'Value');
% switch perturbacion5
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu6_Callback(hObject, eventdata, handles)
% global hueco sobretension perturbacion6
% perturbacion6=get(handles.popupmenu6,'Value');
% switch perturbacion6
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu7_Callback(hObject, eventdata, handles)
% global hueco sobretension perturbacion7
% perturbacion7=get(handles.popupmenu7,'Value');
% switch perturbacion7
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu8_Callback(hObject, eventdata, handles)
% global hueco sobretension perturbacion8
% perturbacion8=get(handles.popupmenu8,'Value');
% switch perturbacion8
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu9_Callback(hObject, eventdata, handles)
% global hueco sobretension perturbacion9
% perturbacion9=get(handles.popupmenu9,'Value');
% switch perturbacion9
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu10_Callback(hObject, eventdata, handles)
% global hueco sobretension perturbacion10
% perturbacion10=get(handles.popupmenu10,'Value');
% switch perturbacion10
%     case 2
%         hueco=1;
%     case 3
%         sobretension=1;
% end

function popupmenu10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AmplitudPerturbacion1_Callback(hObject, eventdata, handles)
% if hueco==1
%     amplitudPerturbacion1=(str2double(get(hObject,'string')))/100;
% elseif sobretension==1
%     amplitudPerturbacion1=1+(str2double(get(hObject,'string')))/100;
% end

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
% global amplitudPerturbacion2 hueco sobretension
% if hueco==1
%     amplitudPerturbacion2=(str2double(get(hObject,'string')))/100;
% elseif sobretension==1
%     amplitudPerturbacion2=1+(str2double(get(hObject,'string')))/100;
% end

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
% global amplitudPerturbacion3 hueco
% if hueco==1
%     amplitudPerturbacion3=(str2double(get(hObject,'string')))/100;
% else
%     amplitudPerturbacion3=1+(str2double(get(hObject,'string')))/100;
% end

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
% global amplitudPerturbacion4 hueco
% if hueco==1
%     amplitudPerturbacion4=(str2double(get(hObject,'string')))/100;
% else
%     amplitudPerturbacion4=1+(str2double(get(hObject,'string')))/100;
% end

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
% global amplitudPerturbacion5 hueco
% if hueco==1
%     amplitudPerturbacion5=(str2double(get(hObject,'string')))/100;
% else
%     amplitudPerturbacion5=1+(str2double(get(hObject,'string')))/100;
% end

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
% global amplitudPerturbacion6 hueco
% if hueco==1
%     amplitudPerturbacion6=(str2double(get(hObject,'string')))/100;
% else
%     amplitudPerturbacion6=1+(str2double(get(hObject,'string')))/100;
% end

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
% global amplitudPerturbacion7 hueco
% if hueco==1
%     amplitudPerturbacion7=(str2double(get(hObject,'string')))/100;
% else
%     amplitudPerturbacion7=1+(str2double(get(hObject,'string')))/100;
% end

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
% global amplitudPerturbacion8 hueco
% if hueco==1
%     amplitudPerturbacion8=(str2double(get(hObject,'string')))/100;
% else
%     amplitudPerturbacion8=1+(str2double(get(hObject,'string')))/100;
% end

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
% global amplitudPerturbacion9 hueco
% if hueco==1
%     amplitudPerturbacion9=(str2double(get(hObject,'string')))/100;
% else
%     amplitudPerturbacion9=1+(str2double(get(hObject,'string')))/100;
% end

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
% global amplitudPerturbacion10 hueco
% if hueco==1
%     amplitudPerturbacion10=(str2double(get(hObject,'string')))/100;
% else
%     amplitudPerturbacion10=1+(str2double(get(hObject,'string')))/100;
% end

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
global perturbacion1 perturbacion2 perturbacion3 perturbacion4 perturbacion5
global perturbacion6 perturbacion7 perturbacion8 perturbacion9 perturbacion10
global hueco1 hueco2 hueco3 hueco4 hueco5 hueco6 hueco7 hueco8 hueco9 hueco10
global sobretension1 sobretension2 sobretension3 sobretension4 sobretension5
global sobretension6 sobretension7 sobretension8 sobretension9 sobretension10
global amplitudPerturbacion1 amplitudPerturbacion2 amplitudPerturbacion3 amplitudPerturbacion4 amplitudPerturbacion5 amplitudPerturbacion6
global amplitudPerturbacion7 amplitudPerturbacion8 amplitudPerturbacion9 amplitudPerturbacion10
% perturbacion=[perturbacion1 perturbacion2 perturbacion3 perturbacion4 perturbacion5 perturbacion6 perturbacion7 perturbacion8 perturbacion9 perturbacion10];
% hueco=[hueco1 hueco2 hueco3 hueco4 hueco5 hueco6 hueco7 hueco8 hueco9 hueco10];
% sobretension=[sobretension1 sobretension2 sobretension3 sobretension4 sobretension5 sobretension6 sobretension7 sobretension8 sobretension9 sobretension10];
% amplitudPerturbacion=[amplitudPerturbacion1 amplitudPerturbacion2 amplitudPerturbacion3 amplitudPerturbacion4 amplitudPerturbacion5 
%         amplitudPerturbacion6 amplitudPerturbacion7 amplitudPerturbacion8 amplitudPerturbacion9 amplitudPerturbacion10];
% AmplitudPerturbacion=[AmplitudPerturbacion1 AmplitudPerturbacion2 AmplitudPerturbacion3 AmplitudPerturbacion4 AmplitudPerturbacion5 
%         AmplitudPerturbacion6 AmplitudPerturbacion7 AmplitudPerturbacion8 AmplitudPerturbacion9 AmplitudPerturbacion10];
% popupmenu=[popupmenu1 popupmenu2 popupmenu3 popupmenu4 popupmenu5 popupmenu6 popupmenu7 popupmenu8 popupmenu9 popupmenu10];
perturbacion1=get(handles.popupmenu1,'Value');
perturbacion2=get(handles.popupmenu2,'Value');
perturbacion3=get(handles.popupmenu3,'Value');
perturbacion4=get(handles.popupmenu4,'Value');
perturbacion5=get(handles.popupmenu5,'Value');
perturbacion6=get(handles.popupmenu6,'Value');
perturbacion7=get(handles.popupmenu7,'Value');
perturbacion8=get(handles.popupmenu8,'Value');
perturbacion9=get(handles.popupmenu9,'Value');
perturbacion10=get(handles.popupmenu10,'Value');
if perturbacion1==2
            hueco1=1;
            sobretension1=0;
elseif perturbacion1==3
            sobretension1=1;
            hueco1=0;
end
if hueco1==1
    amplitudPerturbacion1=str2double(get(handles.AmplitudPerturbacion1,'string'))/100;
elseif sobretension1==1
    amplitudPerturbacion1=1+(str2double(get(handles.AmplitudPerturbacion1,'string')))/100;
end

if perturbacion2==2
            hueco2=1;
            sobretension2=0;
elseif perturbacion2==3
            sobretension2=1;
            hueco2=0;
end
if hueco2==1
    amplitudPerturbacion2=str2double(get(handles.AmplitudPerturbacion2,'string'))/100;
elseif sobretension2==1
    amplitudPerturbacion2=1+(str2double(get(handles.AmplitudPerturbacion2,'string')))/100;
end

if perturbacion3==2
            hueco3=1;
            sobretension3=0;
elseif perturbacion3==3
            sobretension3=1;
            hueco3=0;
end
if hueco3==1
    amplitudPerturbacion3=str2double(get(handles.AmplitudPerturbacion3,'string'))/100;
elseif sobretension3==1
    amplitudPerturbacion3=1+(str2double(get(handles.AmplitudPerturbacion3,'string')))/100;
end

if perturbacion4==2
            hueco4=1;
            sobretension4=0;
elseif perturbacion4==3
            sobretension4=1;
            hueco4=0;
end
if hueco4==1
    amplitudPerturbacion4=str2double(get(handles.AmplitudPerturbacion4,'string'))/100;
elseif sobretension4==1
    amplitudPerturbacion4=1+(str2double(get(handles.AmplitudPerturbacion4,'string')))/100;
end

if perturbacion5==2
            hueco5=1;
            sobretension5=0;
elseif perturbacion5==3
            sobretension5=1;
            hueco5=0;
end
if hueco5==1
    amplitudPerturbacion5=str2double(get(handles.AmplitudPerturbacion5,'string'))/100;
elseif sobretension5==1
    amplitudPerturbacion5=1+(str2double(get(handles.AmplitudPerturbacion5,'string')))/100;
end

if perturbacion6==2
            hueco6=1;
            sobretension6=0;
elseif perturbacion6==3
            sobretension6=1;
            hueco6=0;
end
if hueco6==1
    amplitudPerturbacion6=str2double(get(handles.AmplitudPerturbacion6,'string'))/100;
elseif sobretension6==1
    amplitudPerturbacion6=1+(str2double(get(handles.AmplitudPerturbacion6,'string')))/100;
end

if perturbacion7==2
            hueco7=1;
            sobretension7=0;
elseif perturbacion7==3
            sobretension7=1;
            hueco7=0;
end
if hueco7==1
    amplitudPerturbacion7=str2double(get(handles.AmplitudPerturbacion7,'string'))/100;
elseif sobretension7==1
    amplitudPerturbacion7=1+(str2double(get(handles.AmplitudPerturbacion7,'string')))/100;
end

if perturbacion8==2
            hueco8=1;
            sobretension8=0;
elseif perturbacion8==3
            sobretension8=1;
            hueco8=0;
end
if hueco8==1
    amplitudPerturbacion8=str2double(get(handles.AmplitudPerturbacion8,'string'))/100;
elseif sobretension8==1
    amplitudPerturbacion8=1+(str2double(get(handles.AmplitudPerturbacion8,'string')))/100;
end

if perturbacion9==2
            hueco9=1;
            sobretension9=0;
elseif perturbacion9==3
            sobretension9=1;
            hueco9=0;
end
if hueco9==1
    amplitudPerturbacion9=str2double(get(handles.AmplitudPerturbacion9,'string'))/100;
elseif sobretension9==1
    amplitudPerturbacion9=1+(str2double(get(handles.AmplitudPerturbacion9,'string')))/100;
end

if perturbacion10==2
            hueco10=1;
            sobretension10=0;
elseif perturbacion10==3
            sobretension10=1;
            hueco10=0;
end
if hueco10==1
    amplitudPerturbacion10=str2double(get(handles.AmplitudPerturbacion10,'string'))/100;
elseif sobretension10==1
    amplitudPerturbacion10=1+(str2double(get(handles.AmplitudPerturbacion10,'string')))/100;
end


aceptarHuecoSobretension=1;
close InterfazHueSob;

function CancelarHuecoSobretension_Callback(hObject, eventdata, handles)
close InterfazHueSob;
