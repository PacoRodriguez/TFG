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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
global hueco sobretension
perturbacion1=get(handles.popupmenu1,'Value');
switch perturbacion1
    case 2
        hueco=1;
    case 3
        sobretension=1;
end


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AmplitudPerturbacion1_Callback(hObject, eventdata, handles)
global amplitudPerturbacion1 hueco
if hueco==1
    amplitudPerturbacion1=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion1=1+(str2double(get(hObject,'string')))/100;
end

% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion1_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion1 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion1 as a double
inicioPerturbacion1=str2double(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function InicioPerturbacion1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion1_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion1 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion1 as a double
duracionPerturbacion1=str2double(get(hObject,'string'));

% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
global amplitudPerturbacion2
if ruido==1
    amplitudPerturbacion2=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion2=1+(str2double(get(hObject,'string')))/100;
end


% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion2_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion2 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion2 as a double


% --- Executes during object creation, after setting all properties.
function InicioPerturbacion2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion2_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion2 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion2 as a double


% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
global amplitudPerturbacion3
if ruido==1
    amplitudPerturbacion3=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion3=1+(str2double(get(hObject,'string')))/100;
end


% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion3_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion3 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion3 as a double


% --- Executes during object creation, after setting all properties.
function InicioPerturbacion3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion3_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion3 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion3 as a double


% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
global amplitudPerturbacion4
if ruido==1
    amplitudPerturbacion4=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion4=1+(str2double(get(hObject,'string')))/100;
end


% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion4_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion4 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion4 as a double


% --- Executes during object creation, after setting all properties.
function InicioPerturbacion4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion4_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion4 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion4 as a double


% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
global amplitudPerturbacion5
if ruido==1
    amplitudPerturbacion5=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion5=1+(str2double(get(hObject,'string')))/100;
end


% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion5_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion5 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion5 as a double


% --- Executes during object creation, after setting all properties.
function InicioPerturbacion5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion5_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion5 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion5 as a double


% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
global amplitudPerturbacion6
if ruido==1
    amplitudPerturbacion6=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion6=1+(str2double(get(hObject,'string')))/100;
end


% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion6_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion6 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion6 as a double


% --- Executes during object creation, after setting all properties.
function InicioPerturbacion6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion6_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion6 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion6 as a double


% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
global amplitudPerturbacion7
if ruido==1
    amplitudPerturbacion7=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion7=1+(str2double(get(hObject,'string')))/100;
end


% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion7_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion7 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion7 as a double


% --- Executes during object creation, after setting all properties.
function InicioPerturbacion7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion7_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion7 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion7 as a double


% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
global amplitudPerturbacion8
if ruido==1
    amplitudPerturbacion8=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion8=1+(str2double(get(hObject,'string')))/100;
end


% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion8_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion8 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion8 as a double


% --- Executes during object creation, after setting all properties.
function InicioPerturbacion8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion8_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion8 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion8 as a double


% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
global amplitudPerturbacion9
if ruido==1
    amplitudPerturbacion9=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion9=1+(str2double(get(hObject,'string')))/100;
end


% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion9_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion9 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion9 as a double


% --- Executes during object creation, after setting all properties.
function InicioPerturbacion9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion9_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion9 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion9 as a double


% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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
global amplitudPerturbacion10
if ruido==1
    amplitudPerturbacion10=(str2double(get(hObject,'string')))/100;
else
    amplitudPerturbacion10=1+(str2double(get(hObject,'string')))/100;
end


% --- Executes during object creation, after setting all properties.
function AmplitudPerturbacion10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmplitudPerturbacion10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InicioPerturbacion10_Callback(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InicioPerturbacion10 as text
%        str2double(get(hObject,'String')) returns contents of InicioPerturbacion10 as a double


% --- Executes during object creation, after setting all properties.
function InicioPerturbacion10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InicioPerturbacion10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DuracionPerturbacion10_Callback(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DuracionPerturbacion10 as text
%        str2double(get(hObject,'String')) returns contents of DuracionPerturbacion10 as a double


% --- Executes during object creation, after setting all properties.
function DuracionPerturbacion10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DuracionPerturbacion10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
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


% --- Executes on button press in AceptarHuecoSobretension.
function AceptarHuecoSobretension_Callback(hObject, eventdata, handles)
global aceptarHuecoSobretension
aceptarHuecoSobretension=1;
close InterfazHueSob;


% --- Executes on button press in CancelarHuecoSobretension.
function CancelarHuecoSobretension_Callback(hObject, eventdata, handles)
close InterfazHueSob;
