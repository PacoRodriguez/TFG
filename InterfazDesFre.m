function varargout = InterfazDesFre(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InterfazDesFre_OpeningFcn, ...
                   'gui_OutputFcn',  @InterfazDesFre_OutputFcn, ...
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

function InterfazDesFre_OpeningFcn(hObject, eventdata, handles, varargin)
global amplitudFrecuenciaArmonicoPrevio1 amplitudFrecuenciaArmonicoPrevio2 amplitudFrecuenciaArmonicoPrevio3 amplitudFrecuenciaArmonicoPrevio4 
global amplitudFrecuenciaArmonicoPrevio5 amplitudFrecuenciaArmonicoPrevio6 amplitudFrecuenciaArmonicoPrevio7 amplitudFrecuenciaArmonicoPrevio8 
global amplitudFrecuenciaArmonicoPrevio9 amplitudFrecuenciaArmonicoPrevio10
global faseFrecuenciaArmonicoPrevio1 faseFrecuenciaArmonicoPrevio2 faseFrecuenciaArmonicoPrevio3 faseFrecuenciaArmonicoPrevio4 
global faseFrecuenciaArmonicoPrevio5 faseFrecuenciaArmonicoPrevio6 faseFrecuenciaArmonicoPrevio7 faseFrecuenciaArmonicoPrevio8
global faseFrecuenciaArmonicoPrevio9 faseFrecuenciaArmonicoPrevio10
global nivelContinuaArmonico armonicoFundamental
set(handles.EditAmplitudFrecuenciaArmonico1,'string',num2str(amplitudFrecuenciaArmonicoPrevio1));
set(handles.SliderAmplitudFrecuenciaArmonico1,'value',amplitudFrecuenciaArmonicoPrevio1);
set(handles.EditAmplitudFrecuenciaArmonico2,'string',num2str(amplitudFrecuenciaArmonicoPrevio2));
set(handles.SliderAmplitudFrecuenciaArmonico2,'value',amplitudFrecuenciaArmonicoPrevio2);
set(handles.EditAmplitudFrecuenciaArmonico3,'string',num2str(amplitudFrecuenciaArmonicoPrevio3));
set(handles.SliderAmplitudFrecuenciaArmonico3,'value',amplitudFrecuenciaArmonicoPrevio3);
set(handles.EditAmplitudFrecuenciaArmonico4,'string',num2str(amplitudFrecuenciaArmonicoPrevio4));
set(handles.SliderAmplitudFrecuenciaArmonico4,'value',amplitudFrecuenciaArmonicoPrevio4);
set(handles.EditAmplitudFrecuenciaArmonico5,'string',num2str(amplitudFrecuenciaArmonicoPrevio5));
set(handles.SliderAmplitudFrecuenciaArmonico5,'value',amplitudFrecuenciaArmonicoPrevio5);
set(handles.EditAmplitudFrecuenciaArmonico6,'string',num2str(amplitudFrecuenciaArmonicoPrevio6));
set(handles.SliderAmplitudFrecuenciaArmonico6,'value',amplitudFrecuenciaArmonicoPrevio6);
set(handles.EditAmplitudFrecuenciaArmonico7,'string',num2str(amplitudFrecuenciaArmonicoPrevio7));
set(handles.SliderAmplitudFrecuenciaArmonico7,'value',amplitudFrecuenciaArmonicoPrevio7);
set(handles.EditAmplitudFrecuenciaArmonico8,'string',num2str(amplitudFrecuenciaArmonicoPrevio8));
set(handles.SliderAmplitudFrecuenciaArmonico8,'value',amplitudFrecuenciaArmonicoPrevio8);
set(handles.EditAmplitudFrecuenciaArmonico9,'string',num2str(amplitudFrecuenciaArmonicoPrevio9));
set(handles.SliderAmplitudFrecuenciaArmonico9,'value',amplitudFrecuenciaArmonicoPrevio9);
set(handles.EditAmplitudFrecuenciaArmonico10,'string',num2str(amplitudFrecuenciaArmonicoPrevio10));
set(handles.SliderAmplitudFrecuenciaArmonico10,'value',amplitudFrecuenciaArmonicoPrevio10);
set(handles.EditFaseFrecuenciaArmonico1,'string',num2str(faseFrecuenciaArmonicoPrevio1));
set(handles.SliderFaseFrecuenciaArmonico1,'value',faseFrecuenciaArmonicoPrevio1);
set(handles.EditFaseFrecuenciaArmonico2,'string',num2str(faseFrecuenciaArmonicoPrevio2));
set(handles.SliderFaseFrecuenciaArmonico2,'value',faseFrecuenciaArmonicoPrevio2);
set(handles.EditFaseFrecuenciaArmonico3,'string',num2str(faseFrecuenciaArmonicoPrevio3));
set(handles.SliderFaseFrecuenciaArmonico3,'value',faseFrecuenciaArmonicoPrevio3);
set(handles.EditFaseFrecuenciaArmonico4,'string',num2str(faseFrecuenciaArmonicoPrevio4));
set(handles.SliderFaseFrecuenciaArmonico4,'value',faseFrecuenciaArmonicoPrevio4);
set(handles.EditFaseFrecuenciaArmonico5,'string',num2str(faseFrecuenciaArmonicoPrevio5));
set(handles.SliderFaseFrecuenciaArmonico5,'value',faseFrecuenciaArmonicoPrevio5);
set(handles.EditFaseFrecuenciaArmonico6,'string',num2str(faseFrecuenciaArmonicoPrevio6));
set(handles.SliderFaseFrecuenciaArmonico6,'value',faseFrecuenciaArmonicoPrevio6);
set(handles.EditFaseFrecuenciaArmonico7,'string',num2str(faseFrecuenciaArmonicoPrevio7));
set(handles.SliderFaseFrecuenciaArmonico7,'value',faseFrecuenciaArmonicoPrevio7);
set(handles.EditFaseFrecuenciaArmonico8,'string',num2str(faseFrecuenciaArmonicoPrevio8));
set(handles.SliderFaseFrecuenciaArmonico8,'value',faseFrecuenciaArmonicoPrevio8);
set(handles.EditFaseFrecuenciaArmonico9,'string',num2str(faseFrecuenciaArmonicoPrevio9));
set(handles.SliderFaseFrecuenciaArmonico9,'value',faseFrecuenciaArmonicoPrevio9);
set(handles.EditFaseFrecuenciaArmonico10,'string',num2str(faseFrecuenciaArmonicoPrevio10));
set(handles.SliderFaseFrecuenciaArmonico10,'value',faseFrecuenciaArmonicoPrevio10);
set(handles.EditNivelContinuaFrecuencia,'string',num2str(nivelContinuaArmonico));
set(handles.SliderNivelContinuaFrecuencia,'value',nivelContinuaArmonico);
set(handles.EditArmonicoFundamental,'string',num2str(armonicoFundamental));
set(handles.SliderArmonicoFundamental,'value',armonicoFundamental);

% Choose default command line output for InterfazDesFre
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = InterfazDesFre_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function EditFaseFrecuenciaArmonico10_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio10=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico10,'value',faseFrecuenciaArmonicoPrevio10);

function EditFaseFrecuenciaArmonico10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico10_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio10=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico10,'string',num2str(faseFrecuenciaArmonicoPrevio10));

function SliderFaseFrecuenciaArmonico10_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseFrecuenciaArmonico9_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio9=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico9,'value',faseFrecuenciaArmonicoPrevio9);

function EditFaseFrecuenciaArmonico9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico9_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio9=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico9,'string',num2str(faseFrecuenciaArmonicoPrevio9));

function SliderFaseFrecuenciaArmonico9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseFrecuenciaArmonico8_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio8=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico8,'value',faseFrecuenciaArmonicoPrevio8);

function EditFaseFrecuenciaArmonico8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico8_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio8=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico8,'string',num2str(faseFrecuenciaArmonicoPrevio8));

function SliderFaseFrecuenciaArmonico8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseFrecuenciaArmonico7_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio7=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico7,'value',faseFrecuenciaArmonicoPrevio7);

function EditFaseFrecuenciaArmonico7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico7_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio7=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico7,'string',num2str(faseFrecuenciaArmonicoPrevio7));

function SliderFaseFrecuenciaArmonico7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseFrecuenciaArmonico6_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio6=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico6,'value',faseFrecuenciaArmonicoPrevio6);

function EditFaseFrecuenciaArmonico6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico6_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio6=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico6,'string',num2str(faseFrecuenciaArmonicoPrevio6));

function SliderFaseFrecuenciaArmonico6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseFrecuenciaArmonico5_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio5=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico5,'value',faseFrecuenciaArmonicoPrevio5);

function EditFaseFrecuenciaArmonico5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico5_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio5=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico5,'string',num2str(faseFrecuenciaArmonicoPrevio5));

function SliderFaseFrecuenciaArmonico5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseFrecuenciaArmonico4_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio4=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico4,'value',faseFrecuenciaArmonicoPrevio4);

function EditFaseFrecuenciaArmonico4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico4_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio4=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico4,'string',num2str(faseFrecuenciaArmonicoPrevio4));

function SliderFaseFrecuenciaArmonico4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseFrecuenciaArmonico3_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio3=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico3,'value',faseFrecuenciaArmonicoPrevio3);

function EditFaseFrecuenciaArmonico3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico3_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio3=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico3,'string',num2str(faseFrecuenciaArmonicoPrevio3));

function SliderFaseFrecuenciaArmonico3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseFrecuenciaArmonico2_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio2=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico2,'value',faseFrecuenciaArmonicoPrevio2);

function EditFaseFrecuenciaArmonico2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico2_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio2=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico2,'string',num2str(faseFrecuenciaArmonicoPrevio2));

function SliderFaseFrecuenciaArmonico2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditFaseFrecuenciaArmonico1_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio1=str2double(get(hObject,'string'));
set(handles.SliderFaseFrecuenciaArmonico1,'value',faseFrecuenciaArmonicoPrevio1);

function EditFaseFrecuenciaArmonico1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderFaseFrecuenciaArmonico1_Callback(hObject, eventdata, handles)
faseFrecuenciaArmonicoPrevio1=get(hObject,'value');
set(handles.EditFaseFrecuenciaArmonico1,'string',num2str(faseFrecuenciaArmonicoPrevio1));

function SliderFaseFrecuenciaArmonico1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function SliderAmplitudFrecuenciaArmonico1_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio1=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico1,'string',num2str(amplitudFrecuenciaArmonicoPrevio1));

function SliderAmplitudFrecuenciaArmonico1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico1_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio1=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico1,'value',amplitudFrecuenciaArmonicoPrevio1);

function EditAmplitudFrecuenciaArmonico1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudFrecuenciaArmonico2_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio2=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico2,'string',num2str(amplitudFrecuenciaArmonicoPrevio2));

function SliderAmplitudFrecuenciaArmonico2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico2_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio2=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico2,'value',amplitudFrecuenciaArmonicoPrevio2);

function EditAmplitudFrecuenciaArmonico2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudFrecuenciaArmonico3_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio3=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico3,'string',num2str(amplitudFrecuenciaArmonicoPrevio3));

function SliderAmplitudFrecuenciaArmonico3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico3_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio3=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico3,'value',amplitudFrecuenciaArmonicoPrevio3);

function EditAmplitudFrecuenciaArmonico3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudFrecuenciaArmonico4_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio4=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico4,'string',num2str(amplitudFrecuenciaArmonicoPrevio4));

function SliderAmplitudFrecuenciaArmonico4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico4_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio4=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico4,'value',amplitudFrecuenciaArmonicoPrevio4);

function EditAmplitudFrecuenciaArmonico4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudFrecuenciaArmonico5_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio5=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico5,'string',num2str(amplitudFrecuenciaArmonicoPrevio5));

function SliderAmplitudFrecuenciaArmonico5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico5_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio5=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico5,'value',amplitudFrecuenciaArmonicoPrevio5);

function EditAmplitudFrecuenciaArmonico5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudFrecuenciaArmonico6_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio6=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico6,'string',num2str(amplitudFrecuenciaArmonicoPrevio6));

function SliderAmplitudFrecuenciaArmonico6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico6_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio6=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico6,'value',amplitudFrecuenciaArmonicoPrevio6);

function EditAmplitudFrecuenciaArmonico6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudFrecuenciaArmonico7_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio7=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico7,'string',num2str(amplitudFrecuenciaArmonicoPrevio7));

function SliderAmplitudFrecuenciaArmonico7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico7_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio7=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico7,'value',amplitudFrecuenciaArmonicoPrevio7);

function EditAmplitudFrecuenciaArmonico7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudFrecuenciaArmonico8_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio8=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico8,'string',num2str(amplitudFrecuenciaArmonicoPrevio8));

function SliderAmplitudFrecuenciaArmonico8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico8_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio8=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico8,'value',amplitudFrecuenciaArmonicoPrevio8);

function EditAmplitudFrecuenciaArmonico8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudFrecuenciaArmonico9_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio9=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico9,'string',num2str(amplitudFrecuenciaArmonicoPrevio9));

function SliderAmplitudFrecuenciaArmonico9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico9_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio9=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico9,'value',amplitudFrecuenciaArmonicoPrevio9);

function EditAmplitudFrecuenciaArmonico9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderAmplitudFrecuenciaArmonico10_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio10=get(hObject,'value');
set(handles.EditAmplitudFrecuenciaArmonico10,'string',num2str(amplitudFrecuenciaArmonicoPrevio10));

function SliderAmplitudFrecuenciaArmonico10_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditAmplitudFrecuenciaArmonico10_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio10=str2double(get(hObject,'string'));
set(handles.SliderAmplitudFrecuenciaArmonico10,'value',amplitudFrecuenciaArmonicoPrevio10);

function EditAmplitudFrecuenciaArmonico10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderNivelContinuaFrecuencia_Callback(hObject, eventdata, handles)
nivelContinuaArmonico=get(hObject,'value');
set(handles.EditNivelContinuaFrecuencia,'string',num2str(nivelContinuaArmonico));

function SliderNivelContinuaFrecuencia_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditNivelContinuaFrecuencia_Callback(hObject, eventdata, handles)
nivelContinuaArmonico=str2double(get(hObject,'string'));
set(handles.SliderNivelContinuaFrecuencia,'value',nivelContinuaArmonico);

function EditNivelContinuaFrecuencia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function SliderArmonicoFundamental_Callback(hObject, eventdata, handles)
armonicoFundamental=get(hObject,'value');
set(handles.EditArmonicoFundamental,'string',num2str(armonicoFundamental));

function SliderArmonicoFundamental_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditArmonicoFundamental_Callback(hObject, eventdata, handles)
armonicoFundamental=str2double(get(hObject,'string'));
set(handles.SliderArmonicoFundamental,'value',armonicoFundamental);

function EditArmonicoFundamental_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function AceptarDesviacionFrecuencia_Callback(hObject, eventdata, handles)
global amplitudFrecuenciaArmonicoPrevio1 amplitudFrecuenciaArmonicoPrevio2 amplitudFrecuenciaArmonicoPrevio3 amplitudFrecuenciaArmonicoPrevio4
global amplitudFrecuenciaArmonicoPrevio5 amplitudFrecuenciaArmonicoPrevio6 amplitudFrecuenciaArmonicoPrevio7 amplitudFrecuenciaArmonicoPrevio8
global amplitudFrecuenciaArmonicoPrevio9 amplitudFrecuenciaArmonicoPrevio10 
global faseFrecuenciaArmonicoPrevio1 faseFrecuenciaArmonicoPrevio2 faseFrecuenciaArmonicoPrevio3 faseFrecuenciaArmonicoPrevio4 
global faseFrecuenciaArmonicoPrevio5 faseFrecuenciaArmonicoPrevio6 faseFrecuenciaArmonicoPrevio7 faseFrecuenciaArmonicoPrevio8
global faseFrecuenciaArmonicoPrevio9 faseFrecuenciaArmonicoPrevio10 aceptarDesviacionFrecuencia
global nivelContinuaArmonico armonicoFundamental
amplitudFrecuenciaArmonicoPrevio1=str2double(get(handles.EditAmplitudFrecuenciaArmonico1,'string'));
amplitudFrecuenciaArmonicoPrevio2=str2double(get(handles.EditAmplitudFrecuenciaArmonico2,'string'));
amplitudFrecuenciaArmonicoPrevio3=str2double(get(handles.EditAmplitudFrecuenciaArmonico3,'string'));
amplitudFrecuenciaArmonicoPrevio4=str2double(get(handles.EditAmplitudFrecuenciaArmonico4,'string'));
amplitudFrecuenciaArmonicoPrevio5=str2double(get(handles.EditAmplitudFrecuenciaArmonico5,'string'));
amplitudFrecuenciaArmonicoPrevio6=str2double(get(handles.EditAmplitudFrecuenciaArmonico6,'string'));
amplitudFrecuenciaArmonicoPrevio7=str2double(get(handles.EditAmplitudFrecuenciaArmonico7,'string'));
amplitudFrecuenciaArmonicoPrevio8=str2double(get(handles.EditAmplitudFrecuenciaArmonico8,'string'));
amplitudFrecuenciaArmonicoPrevio9=str2double(get(handles.EditAmplitudFrecuenciaArmonico9,'string'));
amplitudFrecuenciaArmonicoPrevio10=str2double(get(handles.EditAmplitudFrecuenciaArmonico10,'string'));
faseFrecuenciaArmonicoPrevio1=str2double(get(handles.EditFaseFrecuenciaArmonico1,'string'));
faseFrecuenciaArmonicoPrevio2=str2double(get(handles.EditFaseFrecuenciaArmonico2,'string'));
faseFrecuenciaArmonicoPrevio3=str2double(get(handles.EditFaseFrecuenciaArmonico3,'string'));
faseFrecuenciaArmonicoPrevio4=str2double(get(handles.EditFaseFrecuenciaArmonico4,'string'));
faseFrecuenciaArmonicoPrevio5=str2double(get(handles.EditFaseFrecuenciaArmonico5,'string'));
faseFrecuenciaArmonicoPrevio6=str2double(get(handles.EditFaseFrecuenciaArmonico6,'string'));
faseFrecuenciaArmonicoPrevio7=str2double(get(handles.EditFaseFrecuenciaArmonico7,'string'));
faseFrecuenciaArmonicoPrevio8=str2double(get(handles.EditFaseFrecuenciaArmonico8,'string'));
faseFrecuenciaArmonicoPrevio9=str2double(get(handles.EditFaseFrecuenciaArmonico9,'string'));
faseFrecuenciaArmonicoPrevio10=str2double(get(handles.EditFaseFrecuenciaArmonico10,'string'));
nivelContinuaArmonico=str2double(get(handles.EditNivelContinuaFrecuencia,'string'));
armonicoFundamental=str2double(get(handles.EditArmonicoFundamental,'string'));

aceptarDesviacionFrecuencia=1;
close InterfazDesFre;

function CancelarDesviacionFrecuencia_Callback(hObject, eventdata, handles)
close InterfazDesFre;

function LimpiarDesviacionFrecuencia_Callback(hObject, eventdata, handles)
amplitudFrecuenciaArmonicoPrevio1=0; amplitudFrecuenciaArmonicoPrevio2=0; amplitudFrecuenciaArmonicoPrevio3=0; amplitudFrecuenciaArmonicoPrevio4=0;
amplitudFrecuenciaArmonicoPrevio5=0; amplitudFrecuenciaArmonicoPrevio6=0; amplitudFrecuenciaArmonicoPrevio7=0; amplitudFrecuenciaArmonicoPrevio8=0;
amplitudFrecuenciaArmonicoPrevio9=0; amplitudFrecuenciaArmonicoPrevio10=0;
faseFrecuenciaArmonicoPrevio1=0; faseFrecuenciaArmonicoPrevio2=0; faseFrecuenciaArmonicoPrevio3=0; faseFrecuenciaArmonicoPrevio4=0;
faseFrecuenciaArmonicoPrevio5=0; faseFrecuenciaArmonicoPrevio6=0; faseFrecuenciaArmonicoPrevio7=0; faseFrecuenciaArmonicoPrevio8=0;
faseFrecuenciaArmonicoPrevio9=0; faseFrecuenciaArmonicoPrevio10=0;
nivelContinuaArmonico=0; armonicoFundamental=0;
set(handles.EditAmplitudFrecuenciaArmonico1,'string',num2str(amplitudFrecuenciaArmonicoPrevio1));
set(handles.SliderAmplitudFrecuenciaArmonico1,'value',amplitudFrecuenciaArmonicoPrevio1);
set(handles.EditAmplitudFrecuenciaArmonico2,'string',num2str(amplitudFrecuenciaArmonicoPrevio2));
set(handles.SliderAmplitudFrecuenciaArmonico2,'value',amplitudFrecuenciaArmonicoPrevio2);
set(handles.EditAmplitudFrecuenciaArmonico3,'string',num2str(amplitudFrecuenciaArmonicoPrevio3));
set(handles.SliderAmplitudFrecuenciaArmonico3,'value',amplitudFrecuenciaArmonicoPrevio3);
set(handles.EditAmplitudFrecuenciaArmonico4,'string',num2str(amplitudFrecuenciaArmonicoPrevio4));
set(handles.SliderAmplitudFrecuenciaArmonico4,'value',amplitudFrecuenciaArmonicoPrevio4);
set(handles.EditAmplitudFrecuenciaArmonico5,'string',num2str(amplitudFrecuenciaArmonicoPrevio5));
set(handles.SliderAmplitudFrecuenciaArmonico5,'value',amplitudFrecuenciaArmonicoPrevio5);
set(handles.EditAmplitudFrecuenciaArmonico6,'string',num2str(amplitudFrecuenciaArmonicoPrevio6));
set(handles.SliderAmplitudFrecuenciaArmonico6,'value',amplitudFrecuenciaArmonicoPrevio6);
set(handles.EditAmplitudFrecuenciaArmonico7,'string',num2str(amplitudFrecuenciaArmonicoPrevio7));
set(handles.SliderAmplitudFrecuenciaArmonico7,'value',amplitudFrecuenciaArmonicoPrevio7);
set(handles.EditAmplitudFrecuenciaArmonico8,'string',num2str(amplitudFrecuenciaArmonicoPrevio8));
set(handles.SliderAmplitudFrecuenciaArmonico8,'value',amplitudFrecuenciaArmonicoPrevio8);
set(handles.EditAmplitudFrecuenciaArmonico9,'string',num2str(amplitudFrecuenciaArmonicoPrevio9));
set(handles.SliderAmplitudFrecuenciaArmonico9,'value',amplitudFrecuenciaArmonicoPrevio9);
set(handles.EditAmplitudFrecuenciaArmonico10,'string',num2str(amplitudFrecuenciaArmonicoPrevio10));
set(handles.SliderAmplitudFrecuenciaArmonico10,'value',amplitudFrecuenciaArmonicoPrevio10);
set(handles.EditFaseFrecuenciaArmonico1,'string',num2str(faseFrecuenciaArmonicoPrevio1));
set(handles.SliderFaseFrecuenciaArmonico1,'value',faseFrecuenciaArmonicoPrevio1);
set(handles.EditFaseFrecuenciaArmonico2,'string',num2str(faseFrecuenciaArmonicoPrevio2));
set(handles.SliderFaseFrecuenciaArmonico2,'value',faseFrecuenciaArmonicoPrevio2);
set(handles.EditFaseFrecuenciaArmonico3,'string',num2str(faseFrecuenciaArmonicoPrevio3));
set(handles.SliderFaseFrecuenciaArmonico3,'value',faseFrecuenciaArmonicoPrevio3);
set(handles.EditFaseFrecuenciaArmonico4,'string',num2str(faseFrecuenciaArmonicoPrevio4));
set(handles.SliderFaseFrecuenciaArmonico4,'value',faseFrecuenciaArmonicoPrevio4);
set(handles.EditFaseFrecuenciaArmonico5,'string',num2str(faseFrecuenciaArmonicoPrevio5));
set(handles.SliderFaseFrecuenciaArmonico5,'value',faseFrecuenciaArmonicoPrevio5);
set(handles.EditFaseFrecuenciaArmonico6,'string',num2str(faseFrecuenciaArmonicoPrevio6));
set(handles.SliderFaseFrecuenciaArmonico6,'value',faseFrecuenciaArmonicoPrevio6);
set(handles.EditFaseFrecuenciaArmonico7,'string',num2str(faseFrecuenciaArmonicoPrevio7));
set(handles.SliderFaseFrecuenciaArmonico7,'value',faseFrecuenciaArmonicoPrevio7);
set(handles.EditFaseFrecuenciaArmonico8,'string',num2str(faseFrecuenciaArmonicoPrevio8));
set(handles.SliderFaseFrecuenciaArmonico8,'value',faseFrecuenciaArmonicoPrevio8);
set(handles.EditFaseFrecuenciaArmonico9,'string',num2str(faseFrecuenciaArmonicoPrevio9));
set(handles.SliderFaseFrecuenciaArmonico9,'value',faseFrecuenciaArmonicoPrevio9);
set(handles.EditFaseFrecuenciaArmonico10,'string',num2str(faseFrecuenciaArmonicoPrevio10));
set(handles.SliderFaseFrecuenciaArmonico10,'value',faseFrecuenciaArmonicoPrevio10);
set(handles.EditNivelContinuaFrecuencia,'string',num2str(nivelContinuaArmonico));
set(handles.SliderNivelContinuaFrecuencia,'value',nivelContinuaArmonico);
set(handles.EditArmonicoFundamental,'string',num2str(armonicoFundamental));
set(handles.SliderArmonicoFundamental,'value',armonicoFundamental);
