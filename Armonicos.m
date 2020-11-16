function varargout = Armonicos(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Armonicos_OpeningFcn, ...
                   'gui_OutputFcn',  @Armonicos_OutputFcn, ...
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

function Armonicos_OpeningFcn(hObject, eventdata, handles, varargin)
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
set(handles.EditAmplitudArmonico1,'string',num2str(amplitudArmonicoPrevio1));
set(handles.SliderAmplitudArmonico1,'value',amplitudArmonicoPrevio1);
set(handles.EditAmplitudArmonico2,'string',num2str(amplitudArmonicoPrevio2));
set(handles.SliderAmplitudArmonico2,'value',amplitudArmonicoPrevio2);
set(handles.EditAmplitudArmonico3,'string',num2str(amplitudArmonicoPrevio3));
set(handles.SliderAmplitudArmonico3,'value',amplitudArmonicoPrevio3);
set(handles.EditAmplitudArmonico4,'string',num2str(amplitudArmonicoPrevio4));
set(handles.SliderAmplitudArmonico4,'value',amplitudArmonicoPrevio4);
set(handles.EditAmplitudArmonico5,'string',num2str(amplitudArmonicoPrevio5));
set(handles.SliderAmplitudArmonico5,'value',amplitudArmonicoPrevio5);
set(handles.EditAmplitudArmonico6,'string',num2str(amplitudArmonicoPrevio6));
set(handles.SliderAmplitudArmonico6,'value',amplitudArmonicoPrevio6);
set(handles.EditAmplitudArmonico7,'string',num2str(amplitudArmonicoPrevio7));
set(handles.SliderAmplitudArmonico7,'value',amplitudArmonicoPrevio7);
set(handles.EditAmplitudArmonico8,'string',num2str(amplitudArmonicoPrevio8));
set(handles.SliderAmplitudArmonico8,'value',amplitudArmonicoPrevio8);
set(handles.EditAmplitudArmonico9,'string',num2str(amplitudArmonicoPrevio9));
set(handles.SliderAmplitudArmonico9,'value',amplitudArmonicoPrevio9);
set(handles.EditAmplitudArmonico10,'string',num2str(amplitudArmonicoPrevio10));
set(handles.SliderAmplitudArmonico10,'value',amplitudArmonicoPrevio10);
set(handles.EditFaseArmonico1,'string',num2str(faseArmonicoPrevio1));
set(handles.SliderFaseArmonico1,'value',faseArmonicoPrevio1);
set(handles.EditFaseArmonico2,'string',num2str(faseArmonicoPrevio2));
set(handles.SliderFaseArmonico2,'value',faseArmonicoPrevio2);
set(handles.EditFaseArmonico3,'string',num2str(faseArmonicoPrevio3));
set(handles.SliderFaseArmonico3,'value',faseArmonicoPrevio3);
set(handles.EditFaseArmonico4,'string',num2str(faseArmonicoPrevio4));
set(handles.SliderFaseArmonico4,'value',faseArmonicoPrevio4);
set(handles.EditFaseArmonico5,'string',num2str(faseArmonicoPrevio5));
set(handles.SliderFaseArmonico5,'value',faseArmonicoPrevio5);
set(handles.EditFaseArmonico6,'string',num2str(faseArmonicoPrevio6));
set(handles.SliderFaseArmonico6,'value',faseArmonicoPrevio6);
set(handles.EditFaseArmonico7,'string',num2str(faseArmonicoPrevio7));
set(handles.SliderFaseArmonico7,'value',faseArmonicoPrevio7);
set(handles.EditFaseArmonico8,'string',num2str(faseArmonicoPrevio8));
set(handles.SliderFaseArmonico8,'value',faseArmonicoPrevio8);
set(handles.EditFaseArmonico9,'string',num2str(faseArmonicoPrevio9));
set(handles.SliderFaseArmonico9,'value',faseArmonicoPrevio9);
set(handles.EditFaseArmonico10,'string',num2str(faseArmonicoPrevio10));
set(handles.SliderFaseArmonico10,'value',faseArmonicoPrevio10);

% Choose default command line output for Armonicos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = Armonicos_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function SliderAmplitudArmonico6_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio6=get(hObject,'value');
set(handles.EditAmplitudArmonico6,'string',num2str(amplitudArmonicoPrevio6));

function SliderAmplitudArmonico6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico6_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio6=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico6,'value',amplitudArmonicoPrevio6);

function EditAmplitudArmonico6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudArmonico10_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to SliderAmplitudArmonico10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function SliderAmplitudArmonico5_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio5=get(hObject,'value');
set(handles.EditAmplitudArmonico5,'string',num2str(amplitudArmonicoPrevio5));

function SliderAmplitudArmonico5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico5_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio5=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico5,'value',amplitudArmonicoPrevio5);

function EditAmplitudArmonico5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudArmonico7_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio7=get(hObject,'value');
set(handles.EditAmplitudArmonico7,'string',num2str(amplitudArmonicoPrevio7));

function SliderAmplitudArmonico7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico7_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio7=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico7,'value',amplitudArmonicoPrevio7);

function EditAmplitudArmonico7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudArmonico1_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio1=get(hObject,'value');
set(handles.EditAmplitudArmonico1,'string',num2str(amplitudArmonicoPrevio1));  

function SliderAmplitudArmonico1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico1_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio1=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico1,'value',amplitudArmonicoPrevio1);

function EditAmplitudArmonico1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudArmonico2_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio2=get(hObject,'value');
set(handles.EditAmplitudArmonico2,'string',num2str(amplitudArmonicoPrevio2));

function SliderAmplitudArmonico2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico2_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio2=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico2,'value',amplitudArmonicoPrevio2);

function EditAmplitudArmonico2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudArmonico3_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio3=get(hObject,'value');
set(handles.EditAmplitudArmonico3,'string',num2str(amplitudArmonicoPrevio3));

function SliderAmplitudArmonico3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico3_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio3=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico3,'value',amplitudArmonicoPrevio3);

function EditAmplitudArmonico3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudArmonico4_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio4=get(hObject,'value');
set(handles.EditAmplitudArmonico4,'string',num2str(amplitudArmonicoPrevio4));

function SliderAmplitudArmonico4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico4_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio4=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico4,'value',amplitudArmonicoPrevio4);

function EditAmplitudArmonico4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudArmonico8_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio8=get(hObject,'value');
set(handles.EditAmplitudArmonico8,'string',num2str(amplitudArmonicoPrevio8));

function SliderAmplitudArmonico8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico8_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio8=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico8,'value',amplitudArmonicoPrevio8);

function EditAmplitudArmonico8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudArmonico9_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio9=get(hObject,'value');
set(handles.EditAmplitudArmonico9,'string',num2str(amplitudArmonicoPrevio9));

function SliderAmplitudArmonico9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico9_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio9=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico9,'value',amplitudArmonicoPrevio9);

function EditAmplitudArmonico9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudArmonico10_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio10=get(hObject,'value');
set(handles.EditAmplitudArmonico10,'string',num2str(amplitudArmonicoPrevio10));

function SliderAmplitudArmonico10_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudArmonico10_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio10=str2double(get(hObject,'string'));
set(handles.SliderAmplitudArmonico10,'value',amplitudArmonicoPrevio10);

function EditAmplitudArmonico10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function EditFaseArmonico10_Callback(hObject, eventdata, handles)
faseArmonicoPrevio10=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico10,'value',faseArmonicoPrevio10);

function EditFaseArmonico10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico10_Callback(hObject, eventdata, handles)
faseArmonicoPrevio10=get(hObject,'value');
set(handles.EditFaseArmonico10,'string',num2str(faseArmonicoPrevio10));

function SliderFaseArmonico10_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseArmonico9_Callback(hObject, eventdata, handles)
faseArmonicoPrevio9=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico9,'value',faseArmonicoPrevio9);

function EditFaseArmonico9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico9_Callback(hObject, eventdata, handles)
faseArmonicoPrevio9=get(hObject,'value');
set(handles.EditFaseArmonico9,'string',num2str(faseArmonicoPrevio9));

function SliderFaseArmonico9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseArmonico8_Callback(hObject, eventdata, handles)
faseArmonicoPrevio8=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico8,'value',faseArmonicoPrevio8);

function EditFaseArmonico8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico8_Callback(hObject, eventdata, handles)
faseArmonicoPrevio8=get(hObject,'value');
set(handles.EditFaseArmonico8,'string',num2str(faseArmonicoPrevio8));

function SliderFaseArmonico8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseArmonico7_Callback(hObject, eventdata, handles)
faseArmonicoPrevio7=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico7,'value',faseArmonicoPrevio7);

function EditFaseArmonico7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico7_Callback(hObject, eventdata, handles)
faseArmonicoPrevio7=get(hObject,'value');
set(handles.EditFaseArmonico7,'string',num2str(faseArmonicoPrevio7));

function SliderFaseArmonico7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseArmonico6_Callback(hObject, eventdata, handles)
faseArmonicoPrevio6=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico6,'value',faseArmonicoPrevio6);

function EditFaseArmonico6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico6_Callback(hObject, eventdata, handles)
faseArmonicoPrevio6=get(hObject,'value');
set(handles.EditFaseArmonico6,'string',num2str(faseArmonicoPrevio6));

function SliderFaseArmonico6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseArmonico5_Callback(hObject, eventdata, handles)
faseArmonicoPrevio5=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico5,'value',faseArmonicoPrevio5);

function EditFaseArmonico5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico5_Callback(hObject, eventdata, handles)
faseArmonicoPrevio5=get(hObject,'value');
set(handles.EditFaseArmonico5,'string',num2str(faseArmonicoPrevio5));

function SliderFaseArmonico5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseArmonico4_Callback(hObject, eventdata, handles)
faseArmonicoPrevio4=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico4,'value',faseArmonicoPrevio4);

function EditFaseArmonico4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico4_Callback(hObject, eventdata, handles)
faseArmonicoPrevio4=get(hObject,'value');
set(handles.EditFaseArmonico4,'string',num2str(faseArmonicoPrevio4));

function SliderFaseArmonico4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseArmonico3_Callback(hObject, eventdata, handles)
faseArmonicoPrevio3=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico3,'value',faseArmonicoPrevio3);

function EditFaseArmonico3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico3_Callback(hObject, eventdata, handles)
faseArmonicoPrevio3=get(hObject,'value');
set(handles.EditFaseArmonico3,'string',num2str(faseArmonicoPrevio3));

function SliderFaseArmonico3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseArmonico2_Callback(hObject, eventdata, handles)
faseArmonicoPrevio2=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico2,'value',faseArmonicoPrevio2);

function EditFaseArmonico2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico2_Callback(hObject, eventdata, handles)
faseArmonicoPrevio2=get(hObject,'value');
set(handles.EditFaseArmonico2,'string',num2str(faseArmonicoPrevio2));

function SliderFaseArmonico2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseArmonico1_Callback(hObject, eventdata, handles)
faseArmonicoPrevio1=str2double(get(hObject,'string'));
set(handles.SliderFaseArmonico1,'value',faseArmonicoPrevio1);

function EditFaseArmonico1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseArmonico1_Callback(hObject, eventdata, handles)
faseArmonicoPrevio1=get(hObject,'value');
set(handles.EditFaseArmonico1,'string',num2str(faseArmonicoPrevio1));

function SliderFaseArmonico1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function AceptarArmonico_Callback(hObject, eventdata, handles)
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio1 faseArmonicoPrevio1 
global faseArmonicoPrevio1 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10 aceptarArmonico
amplitudArmonicoPrevio1=str2double(get(handles.EditAmplitudArmonico1,'string'));
amplitudArmonicoPrevio2=str2double(get(handles.EditAmplitudArmonico2,'string'));
amplitudArmonicoPrevio3=str2double(get(handles.EditAmplitudArmonico3,'string'));
amplitudArmonicoPrevio4=str2double(get(handles.EditAmplitudArmonico4,'string'));
amplitudArmonicoPrevio5=str2double(get(handles.EditAmplitudArmonico5,'string'));
amplitudArmonicoPrevio6=str2double(get(handles.EditAmplitudArmonico6,'string'));
amplitudArmonicoPrevio7=str2double(get(handles.EditAmplitudArmonico7,'string'));
amplitudArmonicoPrevio8=str2double(get(handles.EditAmplitudArmonico8,'string'));
amplitudArmonicoPrevio9=str2double(get(handles.EditAmplitudArmonico9,'string'));
amplitudArmonicoPrevio10=str2double(get(handles.EditAmplitudArmonico10,'string'));
faseArmonicoPrevio1=str2double(get(handles.EditFaseArmonico1,'string'));
faseArmonicoPrevio1=str2double(get(handles.EditFaseArmonico2,'string'));
faseArmonicoPrevio1=str2double(get(handles.EditFaseArmonico3,'string'));
faseArmonicoPrevio1=str2double(get(handles.EditFaseArmonico4,'string'));
faseArmonicoPrevio5=str2double(get(handles.EditFaseArmonico5,'string'));
faseArmonicoPrevio6=str2double(get(handles.EditFaseArmonico6,'string'));
faseArmonicoPrevio7=str2double(get(handles.EditFaseArmonico7,'string'));
faseArmonicoPrevio8=str2double(get(handles.EditFaseArmonico8,'string'));
faseArmonicoPrevio9=str2double(get(handles.EditFaseArmonico9,'string'));
faseArmonicoPrevio10=str2double(get(handles.EditFaseArmonico10,'string'));

aceptarArmonico=1;
close Armonicos;

function CancelarArmonico_Callback(hObject, eventdata, handles)
global canc1;
canc1=1;
close Armonicos;

function figure1_CloseRequestFcn(hObject, eventdata, handles)
delete(hObject);

function AceptarArmonico_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AceptarArmonico (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function LimpiarArmonico_Callback(hObject, eventdata, handles)
amplitudArmonicoPrevio1=0;amplitudArmonicoPrevio2=0;amplitudArmonicoPrevio3=0;amplitudArmonicoPrevio4=0;amplitudArmonicoPrevio5=0;amplitudArmonicoPrevio6=0;amplitudArmonicoPrevio7=0;amplitudArmonicoPrevio8=0;amplitudArmonicoPrevio9=0;amplitudArmonicoPrevio10=0;
faseArmonicoPrevio1=0;faseArmonicoPrevio1=0;faseArmonicoPrevio1=0;faseArmonicoPrevio1=0;faseArmonicoPrevio5=0;faseArmonicoPrevio6=0;faseArmonicoPrevio7=0;faseArmonicoPrevio8=0;faseArmonicoPrevio9=0;faseArmonicoPrevio10=0;
set(handles.EditAmplitudArmonico1,'string',num2str(amplitudArmonicoPrevio1));
set(handles.SliderAmplitudArmonico1,'value',amplitudArmonicoPrevio1);
set(handles.EditAmplitudArmonico2,'string',num2str(amplitudArmonicoPrevio2));
set(handles.SliderAmplitudArmonico2,'value',amplitudArmonicoPrevio2);
set(handles.EditAmplitudArmonico3,'string',num2str(amplitudArmonicoPrevio3));
set(handles.SliderAmplitudArmonico3,'value',amplitudArmonicoPrevio3);
set(handles.EditAmplitudArmonico4,'string',num2str(amplitudArmonicoPrevio4));
set(handles.SliderAmplitudArmonico4,'value',amplitudArmonicoPrevio4);
set(handles.EditAmplitudArmonico5,'string',num2str(amplitudArmonicoPrevio5));
set(handles.SliderAmplitudArmonico5,'value',amplitudArmonicoPrevio5);
set(handles.EditAmplitudArmonico6,'string',num2str(amplitudArmonicoPrevio6));
set(handles.SliderAmplitudArmonico6,'value',amplitudArmonicoPrevio6);
set(handles.EditAmplitudArmonico7,'string',num2str(amplitudArmonicoPrevio7));
set(handles.SliderAmplitudArmonico7,'value',amplitudArmonicoPrevio7);
set(handles.EditAmplitudArmonico8,'string',num2str(amplitudArmonicoPrevio8));
set(handles.SliderAmplitudArmonico8,'value',amplitudArmonicoPrevio8);
set(handles.EditAmplitudArmonico9,'string',num2str(amplitudArmonicoPrevio9));
set(handles.SliderAmplitudArmonico9,'value',amplitudArmonicoPrevio9);
set(handles.EditAmplitudArmonico10,'string',num2str(amplitudArmonicoPrevio10));
set(handles.SliderAmplitudArmonico10,'value',amplitudArmonicoPrevio10);
set(handles.EditFaseArmonico1,'string',num2str(faseArmonicoPrevio1));
set(handles.SliderFaseArmonico1,'value',faseArmonicoPrevio1);
set(handles.EditFaseArmonico2,'string',num2str(faseArmonicoPrevio1));
set(handles.SliderFaseArmonico2,'value',faseArmonicoPrevio1);
set(handles.EditFaseArmonico3,'string',num2str(faseArmonicoPrevio1));
set(handles.SliderFaseArmonico3,'value',faseArmonicoPrevio1);
set(handles.EditFaseArmonico4,'string',num2str(faseArmonicoPrevio1));
set(handles.SliderFaseArmonico4,'value',faseArmonicoPrevio1);
set(handles.EditFaseArmonico5,'string',num2str(faseArmonicoPrevio5));
set(handles.SliderFaseArmonico5,'value',faseArmonicoPrevio5);
set(handles.EditFaseArmonico6,'string',num2str(faseArmonicoPrevio6));
set(handles.SliderFaseArmonico6,'value',faseArmonicoPrevio6);
set(handles.EditFaseArmonico7,'string',num2str(faseArmonicoPrevio7));
set(handles.SliderFaseArmonico7,'value',faseArmonicoPrevio7);
set(handles.EditFaseArmonico8,'string',num2str(faseArmonicoPrevio8));
set(handles.SliderFaseArmonico8,'value',faseArmonicoPrevio8);
set(handles.EditFaseArmonico9,'string',num2str(faseArmonicoPrevio9));
set(handles.SliderFaseArmonico9,'value',faseArmonicoPrevio9);
set(handles.EditFaseArmonico10,'string',num2str(faseArmonicoPrevio10));
set(handles.SliderFaseArmonico10,'value',faseArmonicoPrevio10);
