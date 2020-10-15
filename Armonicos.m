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
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
set(handles.edit4,'string',num2str(Aap1));
set(handles.slider4,'value',Aap1);
set(handles.edit5,'string',num2str(Aap2));
set(handles.slider5,'value',Aap2);
set(handles.edit6,'string',num2str(Aap3));
set(handles.slider6,'value',Aap3);
set(handles.edit7,'string',num2str(Aap4));
set(handles.slider7,'value',Aap4);
set(handles.edit8,'string',num2str(Aap5));
set(handles.slider8,'value',Aap5);
set(handles.edit9,'string',num2str(Aap6));
set(handles.slider9,'value',Aap6);
set(handles.edit10,'string',num2str(Aap7));
set(handles.slider10,'value',Aap7);
set(handles.edit11,'string',num2str(Aap8));
set(handles.slider11,'value',Aap8);
set(handles.edit12,'string',num2str(Aap9));
set(handles.slider12,'value',Aap9);
set(handles.edit13,'string',num2str(Aap10));
set(handles.slider13,'value',Aap10);
set(handles.edit14,'string',num2str(Afp1));
set(handles.slider14,'value',Afp1);
set(handles.edit15,'string',num2str(Afp2));
set(handles.slider15,'value',Afp2);
set(handles.edit16,'string',num2str(Afp3));
set(handles.slider16,'value',Afp3);
set(handles.edit17,'string',num2str(Afp4));
set(handles.slider17,'value',Afp4);
set(handles.edit18,'string',num2str(Afp5));
set(handles.slider18,'value',Afp5);
set(handles.edit19,'string',num2str(Afp6));
set(handles.slider19,'value',Afp6);
set(handles.edit20,'string',num2str(Afp7));
set(handles.slider20,'value',Afp7);
set(handles.edit21,'string',num2str(Afp8));
set(handles.slider21,'value',Afp8);
set(handles.edit22,'string',num2str(Afp9));
set(handles.slider22,'value',Afp9);
set(handles.edit23,'string',num2str(Afp10));
set(handles.slider23,'value',Afp10);

% Choose default command line output for Armonicos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = Armonicos_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function slider9_Callback(hObject, eventdata, handles)
Aap6=get(hObject,'value');
set(handles.edit9,'string',num2str(Aap6));

function slider9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit9_Callback(hObject, eventdata, handles)
Aap6=str2double(get(hObject,'string'));
set(handles.slider9,'value',Aap6);

function edit9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider13_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function slider8_Callback(hObject, eventdata, handles)
Aap5=get(hObject,'value');
set(handles.edit8,'string',num2str(Aap5));

function slider8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit8_Callback(hObject, eventdata, handles)
Aap5=str2double(get(hObject,'string'));
set(handles.slider8,'value',Aap5);

function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider10_Callback(hObject, eventdata, handles)
Aap7=get(hObject,'value');
set(handles.edit10,'string',num2str(Aap7));

function slider10_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit10_Callback(hObject, eventdata, handles)
Aap7=str2double(get(hObject,'string'));
set(handles.slider10,'value',Aap7);

function edit10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider4_Callback(hObject, eventdata, handles)
Aap1=get(hObject,'value');
set(handles.edit4,'string',num2str(Aap1));  

function slider4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit4_Callback(hObject, eventdata, handles)
Aap1=str2double(get(hObject,'string'));
set(handles.slider4,'value',Aap1);

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider5_Callback(hObject, eventdata, handles)
Aap2=get(hObject,'value');
set(handles.edit5,'string',num2str(Aap2));

function slider5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit5_Callback(hObject, eventdata, handles)
Aap2=str2double(get(hObject,'string'));
set(handles.slider5,'value',Aap2);

function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider6_Callback(hObject, eventdata, handles)
Aap3=get(hObject,'value');
set(handles.edit6,'string',num2str(Aap3));

function slider6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit6_Callback(hObject, eventdata, handles)
Aap3=str2double(get(hObject,'string'));
set(handles.slider6,'value',Aap3);

function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider7_Callback(hObject, eventdata, handles)
Aap4=get(hObject,'value');
set(handles.edit7,'string',num2str(Aap4));

function slider7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit7_Callback(hObject, eventdata, handles)
Aap4=str2double(get(hObject,'string'));
set(handles.slider7,'value',Aap4);

function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider11_Callback(hObject, eventdata, handles)
Aap8=get(hObject,'value');
set(handles.edit11,'string',num2str(Aap8));

function slider11_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit11_Callback(hObject, eventdata, handles)
Aap8=str2double(get(hObject,'string'));
set(handles.slider11,'value',Aap8);

function edit11_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider12_Callback(hObject, eventdata, handles)
Aap9=get(hObject,'value');
set(handles.edit12,'string',num2str(Aap9));

function slider12_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit12_Callback(hObject, eventdata, handles)
Aap9=str2double(get(hObject,'string'));
set(handles.slider12,'value',Aap9);

function edit12_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider13_Callback(hObject, eventdata, handles)
Aap10=get(hObject,'value');
set(handles.edit13,'string',num2str(Aap10));

function slider13_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit13_Callback(hObject, eventdata, handles)
Aap10=str2double(get(hObject,'string'));
set(handles.slider13,'value',Aap10);

function edit13_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit23_Callback(hObject, eventdata, handles)
Afp10=str2double(get(hObject,'string'));
set(handles.slider23,'value',Afp10);

function edit23_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider23_Callback(hObject, eventdata, handles)
Afp10=get(hObject,'value');
set(handles.edit23,'string',num2str(Afp10));

function slider23_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit22_Callback(hObject, eventdata, handles)
Afp9=str2double(get(hObject,'string'));
set(handles.slider22,'value',Afp9);

function edit22_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider22_Callback(hObject, eventdata, handles)
Afp9=get(hObject,'value');
set(handles.edit22,'string',num2str(Afp9));

function slider22_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit21_Callback(hObject, eventdata, handles)
Afp8=str2double(get(hObject,'string'));
set(handles.slider21,'value',Afp8);

function edit21_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider21_Callback(hObject, eventdata, handles)
Afp8=get(hObject,'value');
set(handles.edit21,'string',num2str(Afp8));

function slider21_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit20_Callback(hObject, eventdata, handles)
Afp7=str2double(get(hObject,'string'));
set(handles.slider20,'value',Afp7);

function edit20_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider20_Callback(hObject, eventdata, handles)
Afp7=get(hObject,'value');
set(handles.edit20,'string',num2str(Afp7));

function slider20_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit19_Callback(hObject, eventdata, handles)
Afp6=str2double(get(hObject,'string'));
set(handles.slider19,'value',Afp6);

function edit19_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider19_Callback(hObject, eventdata, handles)
Afp6=get(hObject,'value');
set(handles.edit19,'string',num2str(Afp6));

function slider19_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit18_Callback(hObject, eventdata, handles)
Afp5=str2double(get(hObject,'string'));
set(handles.slider18,'value',Afp5);

function edit18_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider18_Callback(hObject, eventdata, handles)
Afp5=get(hObject,'value');
set(handles.edit18,'string',num2str(Afp5));

function slider18_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit17_Callback(hObject, eventdata, handles)
Afp4=str2double(get(hObject,'string'));
set(handles.slider17,'value',Afp4);

function edit17_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider17_Callback(hObject, eventdata, handles)
Afp4=get(hObject,'value');
set(handles.edit17,'string',num2str(Afp4));

function slider17_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit16_Callback(hObject, eventdata, handles)
Afp3=str2double(get(hObject,'string'));
set(handles.slider16,'value',Afp3);

function edit16_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider16_Callback(hObject, eventdata, handles)
Afp3=get(hObject,'value');
set(handles.edit16,'string',num2str(Afp3));

function slider16_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit15_Callback(hObject, eventdata, handles)
Afp2=str2double(get(hObject,'string'));
set(handles.slider15,'value',Afp2);

function edit15_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider15_Callback(hObject, eventdata, handles)
Afp2=get(hObject,'value');
set(handles.edit15,'string',num2str(Afp2));

function slider15_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit14_Callback(hObject, eventdata, handles)
Afp1=str2double(get(hObject,'string'));
set(handles.slider14,'value',Afp1);

function edit14_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider14_Callback(hObject, eventdata, handles)
Afp1=get(hObject,'value');
set(handles.edit14,'string',num2str(Afp1));

function slider14_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function aceptarArmonico_Callback(hObject, eventdata, handles)
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10 acep1 tab2
Aap1=str2double(get(handles.edit4,'string'));
Aap2=str2double(get(handles.edit5,'string'));
Aap3=str2double(get(handles.edit6,'string'));
Aap4=str2double(get(handles.edit7,'string'));
Aap5=str2double(get(handles.edit8,'string'));
Aap6=str2double(get(handles.edit9,'string'));
Aap7=str2double(get(handles.edit10,'string'));
Aap8=str2double(get(handles.edit11,'string'));
Aap9=str2double(get(handles.edit12,'string'));
Aap10=str2double(get(handles.edit13,'string'));
Afp1=str2double(get(handles.edit14,'string'));
Afp2=str2double(get(handles.edit15,'string'));
Afp3=str2double(get(handles.edit16,'string'));
Afp4=str2double(get(handles.edit17,'string'));
Afp5=str2double(get(handles.edit18,'string'));
Afp6=str2double(get(handles.edit19,'string'));
Afp7=str2double(get(handles.edit20,'string'));
Afp8=str2double(get(handles.edit21,'string'));
Afp9=str2double(get(handles.edit22,'string'));
Afp10=str2double(get(handles.edit23,'string'));

acep1=1;
close Armonicos;

function cancelarArmonico_Callback(hObject, eventdata, handles)
global canc1;
canc1=1;
close Armonicos;

function figure1_CloseRequestFcn(hObject, eventdata, handles)
delete(hObject);

function aceptarArmonico_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aceptarArmonico (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function limpiarArmonico_Callback(hObject, eventdata, handles)
Aap1=0;Aap2=0;Aap3=0;Aap4=0;Aap5=0;Aap6=0;Aap7=0;Aap8=0;Aap9=0;Aap10=0;
Afp1=0;Afp2=0;Afp3=0;Afp4=0;Afp5=0;Afp6=0;Afp7=0;Afp8=0;Afp9=0;Afp10=0;
set(handles.edit4,'string',num2str(Aap1));
set(handles.slider4,'value',Aap1);
set(handles.edit5,'string',num2str(Aap2));
set(handles.slider5,'value',Aap2);
set(handles.edit6,'string',num2str(Aap3));
set(handles.slider6,'value',Aap3);
set(handles.edit7,'string',num2str(Aap4));
set(handles.slider7,'value',Aap4);
set(handles.edit8,'string',num2str(Aap5));
set(handles.slider8,'value',Aap5);
set(handles.edit9,'string',num2str(Aap6));
set(handles.slider9,'value',Aap6);
set(handles.edit10,'string',num2str(Aap7));
set(handles.slider10,'value',Aap7);
set(handles.edit11,'string',num2str(Aap8));
set(handles.slider11,'value',Aap8);
set(handles.edit12,'string',num2str(Aap9));
set(handles.slider12,'value',Aap9);
set(handles.edit13,'string',num2str(Aap10));
set(handles.slider13,'value',Aap10);
set(handles.edit14,'string',num2str(Afp1));
set(handles.slider14,'value',Afp1);
set(handles.edit15,'string',num2str(Afp2));
set(handles.slider15,'value',Afp2);
set(handles.edit16,'string',num2str(Afp3));
set(handles.slider16,'value',Afp3);
set(handles.edit17,'string',num2str(Afp4));
set(handles.slider17,'value',Afp4);
set(handles.edit18,'string',num2str(Afp5));
set(handles.slider18,'value',Afp5);
set(handles.edit19,'string',num2str(Afp6));
set(handles.slider19,'value',Afp6);
set(handles.edit20,'string',num2str(Afp7));
set(handles.slider20,'value',Afp7);
set(handles.edit21,'string',num2str(Afp8));
set(handles.slider21,'value',Afp8);
set(handles.edit22,'string',num2str(Afp9));
set(handles.slider22,'value',Afp9);
set(handles.edit23,'string',num2str(Afp10));
set(handles.slider23,'value',Afp10);
