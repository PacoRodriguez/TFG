function varargout = InterfazEdArm(varargin)
% INTERFAZEDARM MATLAB code for InterfazEdArm.fig
%      INTERFAZEDARM, by itself, creates a new INTERFAZEDARM or raises the existing
%      singleton*.
%
%      H = INTERFAZEDARM returns the handle to a new INTERFAZEDARM or the handle to
%      the existing singleton*.
%
%      INTERFAZEDARM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZEDARM.M with the given input arguments.
%
%      INTERFAZEDARM('Property','Value',...) creates a new INTERFAZEDARM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InterfazEdArm_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InterfazEdArm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InterfazEdArm

% Last Modified by GUIDE v2.5 14-Jul-2020 18:51:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InterfazEdArm_OpeningFcn, ...
                   'gui_OutputFcn',  @InterfazEdArm_OutputFcn, ...
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


% --- Executes just before InterfazEdArm is made visible.
function InterfazEdArm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InterfazEdArm (see VARARGIN)
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


% Choose default command line output for InterfazEdArm
handles.output = hObject;


% Update handles structure
guidata(hObject, handles);



% UIWAIT makes InterfazEdArm wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InterfazEdArm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function slider9_Callback(hObject, eventdata, handles)
% global Aat6 tab2
Aap6=get(hObject,'value');
set(handles.edit9,'string',num2str(Aap6));
% if tab2==1
%     Aat6=get(hObject,'value');
% end

function slider9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit9_Callback(hObject, eventdata, handles)
Aap6=str2double(get(hObject,'string'));
set(handles.slider9,'value',Aap6);

% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over slider13.
function slider13_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function slider8_Callback(hObject, eventdata, handles)
% global Aat5 tab2
Aap5=get(hObject,'value');
set(handles.edit8,'string',num2str(Aap5));
% if tab2==1
%     Aat5=get(hObject,'value');
% end

function slider8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit8_Callback(hObject, eventdata, handles)
Aap5=str2double(get(hObject,'string'));
set(handles.slider8,'value',Aap5);

% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% global Aat7 tab2
Aap7=get(hObject,'value');
set(handles.edit10,'string',num2str(Aap7));
% if tab2==1
%     Aat7=get(hObject,'value');
% end

% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit10_Callback(hObject, eventdata, handles)
Aap7=str2double(get(hObject,'string'));
set(handles.slider10,'value',Aap7);

% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% global Aat1 tab2
Aap1=get(hObject,'value');
set(handles.edit4,'string',num2str(Aap1));
% if tab2==1
%     Aat1=get(hObject,'value');
% end

    

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function edit4_Callback(hObject, eventdata, handles)
Aap1=str2double(get(hObject,'string'));
set(handles.slider4,'value',Aap1);


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% global Aat2 tab2
Aap2=get(hObject,'value');
set(handles.edit5,'string',num2str(Aap2));
% if tab2==1
%     Aat2=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit5_Callback(hObject, eventdata, handles)
Aap2=str2double(get(hObject,'string'));
set(handles.slider5,'value',Aap2);


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% global Aat3 tab2
Aap3=get(hObject,'value');
set(handles.edit6,'string',num2str(Aap3));
% if tab2==1
%     Aat3=get(hObject,'value');
% end

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit6_Callback(hObject, eventdata, handles)
Aap3=str2double(get(hObject,'string'));
set(handles.slider6,'value',Aap3);


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% global Aat4 tab2
Aap4=get(hObject,'value');
set(handles.edit7,'string',num2str(Aap4));
% if tab2==1
%     Aat4=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit7_Callback(hObject, eventdata, handles)
Aap4=str2double(get(hObject,'string'));
set(handles.slider7,'value',Aap4);


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
% global Aat8 tab2
Aap8=get(hObject,'value');
set(handles.edit11,'string',num2str(Aap8));
% if tab2==1
%     Aat8=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit11_Callback(hObject, eventdata, handles)
Aap8=str2double(get(hObject,'string'));
set(handles.slider11,'value',Aap8);


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider12_Callback(hObject, eventdata, handles)
% global Aat9 tab2
Aap9=get(hObject,'value');
set(handles.edit12,'string',num2str(Aap9));
% if tab2==1
%     Aat9=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit12_Callback(hObject, eventdata, handles)
Aap9=str2double(get(hObject,'string'));
set(handles.slider12,'value',Aap9);


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider13_Callback(hObject, eventdata, handles)
% global Aat10 tab2
Aap10=get(hObject,'value');
set(handles.edit13,'string',num2str(Aap10));
% if tab2==1
%     Aat10=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit13_Callback(hObject, eventdata, handles)
Aap10=str2double(get(hObject,'string'));
set(handles.slider13,'value',Aap10);


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
Afp10=str2double(get(hObject,'string'));
set(handles.slider23,'value',Afp10);



% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider23_Callback(hObject, eventdata, handles)
% global Aft10 tab2
Afp10=get(hObject,'value');
set(handles.edit23,'string',num2str(Afp10));
% if tab2==1
%     Aft10=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit22_Callback(hObject, eventdata, handles)
Afp9=str2double(get(hObject,'string'));
set(handles.slider22,'value',Afp9);


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider22_Callback(hObject, eventdata, handles)
% global Aft9 tab2
Afp9=get(hObject,'value');
set(handles.edit22,'string',num2str(Afp9));
% if tab2==1
%     Aft9=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit21_Callback(hObject, eventdata, handles)
Afp8=str2double(get(hObject,'string'));
set(handles.slider21,'value',Afp8);


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider21_Callback(hObject, eventdata, handles)
% global Aft8 tab2
Afp8=get(hObject,'value');
set(handles.edit21,'string',num2str(Afp8));
% if tab2==1
%     Aft8=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function edit20_Callback(hObject, eventdata, handles)
Afp7=str2double(get(hObject,'string'));
set(handles.slider20,'value',Afp7);


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider20_Callback(hObject, eventdata, handles)
% global Aft7 tab2
Afp7=get(hObject,'value');
set(handles.edit20,'string',num2str(Afp7));
% if tab2==1
%     Aft7=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit19_Callback(hObject, eventdata, handles)
Afp6=str2double(get(hObject,'string'));
set(handles.slider19,'value',Afp6);


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider19_Callback(hObject, eventdata, handles)
% global Aft6 tab2
Afp6=get(hObject,'value');
set(handles.edit19,'string',num2str(Afp6));
% if tab2==1
%     Aft6=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function edit18_Callback(hObject, eventdata, handles)
Afp5=str2double(get(hObject,'string'));
set(handles.slider18,'value',Afp5);


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider18_Callback(hObject, eventdata, handles)
% global Aft5 tab2
Afp5=get(hObject,'value');
set(handles.edit18,'string',num2str(Afp5));
% if tab2==1
%     Aft5=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit17_Callback(hObject, eventdata, handles)
Afp4=str2double(get(hObject,'string'));
set(handles.slider17,'value',Afp4);


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider17_Callback(hObject, eventdata, handles)
% global Aft4 tab2
Afp4=get(hObject,'value');
set(handles.edit17,'string',num2str(Afp4));
% if tab2==1
%     Aft4=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit16_Callback(hObject, eventdata, handles)
Afp3=str2double(get(hObject,'string'));
set(handles.slider16,'value',Afp3);


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider16_Callback(hObject, eventdata, handles)
% global Aft3 tab2
Afp3=get(hObject,'value');
set(handles.edit16,'string',num2str(Afp3));
% if tab2==1
%     Aft3=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit15_Callback(hObject, eventdata, handles)
Afp2=str2double(get(hObject,'string'));
set(handles.slider15,'value',Afp2);


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider15_Callback(hObject, eventdata, handles)
% global Aft2 tab2
Afp2=get(hObject,'value');
set(handles.edit15,'string',num2str(Afp2));
% if tab2==1
%     Aft2=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit14_Callback(hObject, eventdata, handles)
Afp1=str2double(get(hObject,'string'));
set(handles.slider14,'value',Afp1);



% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider14_Callback(hObject, eventdata, handles)
% global Aft1 tab2
Afp1=get(hObject,'value');
set(handles.edit14,'string',num2str(Afp1));
% if tab2==1
%     Aft1=get(hObject,'value');
% end


% --- Executes during object creation, after setting all properties.
function slider14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on button press in aceptarArmonico.
function aceptarArmonico_Callback(hObject, eventdata, handles)
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10 acep1 tab2
% global Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10 Aft1 Aft2 Aft3 
% global Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10
% 
% if tab2==0
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
% else
%     Aat1=str2double(get(handles.edit4,'string'));
%     Aat2=str2double(get(handles.edit5,'string'));
%     Aat3=str2double(get(handles.edit6,'string'));
%     Aat4=str2double(get(handles.edit7,'string'));
%     Aat5=str2double(get(handles.edit8,'string'));
%     Aat6=str2double(get(handles.edit9,'string'));
%     Aat7=str2double(get(handles.edit10,'string'));
%     Aat8=str2double(get(handles.edit11,'string'));
%     Aat9=str2double(get(handles.edit12,'string'));
%     Aat10=str2double(get(handles.edit13,'string'));
%     Aft1=str2double(get(handles.edit14,'string'));
%     Aft2=str2double(get(handles.edit15,'string'));
%     Aft3=str2double(get(handles.edit16,'string'));
%     Aft4=str2double(get(handles.edit17,'string'));
%     Aft5=str2double(get(handles.edit18,'string'));
%     Aft6=str2double(get(handles.edit19,'string'));
%     Aft7=str2double(get(handles.edit20,'string'));
%     Aft8=str2double(get(handles.edit21,'string'));
%     Aft9=str2double(get(handles.edit22,'string'));
%     Aft10=str2double(get(handles.edit23,'string'));
% end
acep1=1;
close InterfazEdArm;


% --- Executes on button press in cancelarArmonico.
function cancelarArmonico_Callback(hObject, eventdata, handles)
global canc1;
canc1=1;
close InterfazEdArm;


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
delete(hObject);


% --- Executes during object creation, after setting all properties.
function aceptarArmonico_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aceptarArmonico (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in limpiarArmonico.
function limpiarArmonico_Callback(hObject, eventdata, handles)
% hObject    handle to limpiarArmonico (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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


% % --- Executes on button press in tab1.
% function tab1_Callback(hObject, eventdata, handles)
% % hObject    handle to tab1 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% % Hint: get(hObject,'Value') returns toggle state of tab1
% global tab1
% set(handles.tab1,'BackgroundColor',[0.94 0.94 0.94]);
% set(handles.tab2,'BackgroundColor',[0.35 0.35 0.35]);
% 
% 
% function tab1_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to aceptarArmonico (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % --- Executes on button press in tab2.
% function tab2_Callback(hObject, eventdata, handles)
% % hObject    handle to tab2 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% % Hint: get(hObject,'Value') returns toggle state of tab2
% global tab2
% global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 
% global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10 acep1
% set(handles.tab1,'BackgroundColor',[0.35 0.35 0.35]);
% set(handles.tab2,'BackgroundColor',[0.94 0.94 0.94]);
% Aap1=str2double(get(handles.edit4,'string'));
% Aap2=str2double(get(handles.edit5,'string'));
% Aap3=str2double(get(handles.edit6,'string'));
% Aap4=str2double(get(handles.edit7,'string'));
% Aap5=str2double(get(handles.edit8,'string'));
% Aap6=str2double(get(handles.edit9,'string'));
% Aap7=str2double(get(handles.edit10,'string'));
% Aap8=str2double(get(handles.edit11,'string'));
% Aap9=str2double(get(handles.edit12,'string'));
% Aap10=str2double(get(handles.edit13,'string'));
% Afp1=str2double(get(handles.edit14,'string'));
% Afp2=str2double(get(handles.edit15,'string'));
% Afp3=str2double(get(handles.edit16,'string'));
% Afp4=str2double(get(handles.edit17,'string'));
% Afp5=str2double(get(handles.edit18,'string'));
% Afp6=str2double(get(handles.edit19,'string'));
% Afp7=str2double(get(handles.edit20,'string'));
% Afp8=str2double(get(handles.edit21,'string'));
% Afp9=str2double(get(handles.edit22,'string'));
% Afp10=str2double(get(handles.edit23,'string'));
% Aap1=0;Aap2=0;Aap3=0;Aap4=0;Aap5=0;Aap6=0;Aap7=0;Aap8=0;Aap9=0;Aap10=0;
% Afp1=0;Afp2=0;Afp3=0;Afp4=0;Afp5=0;Afp6=0;Afp7=0;Afp8=0;Afp9=0;Afp10=0;
% set(handles.edit4,'string',num2str(Aap1));
% set(handles.slider4,'value',Aap1);
% set(handles.edit5,'string',num2str(Aap2));
% set(handles.slider5,'value',Aap2);
% set(handles.edit6,'string',num2str(Aap3));
% set(handles.slider6,'value',Aap3);
% set(handles.edit7,'string',num2str(Aap4));
% set(handles.slider7,'value',Aap4);
% set(handles.edit8,'string',num2str(Aap5));
% set(handles.slider8,'value',Aap5);
% set(handles.edit9,'string',num2str(Aap6));
% set(handles.slider9,'value',Aap6);
% set(handles.edit10,'string',num2str(Aap7));
% set(handles.slider10,'value',Aap7);
% set(handles.edit11,'string',num2str(Aap8));
% set(handles.slider11,'value',Aap8);
% set(handles.edit12,'string',num2str(Aap9));
% set(handles.slider12,'value',Aap9);
% set(handles.edit13,'string',num2str(Aap10));
% set(handles.slider13,'value',Aap10);
% set(handles.edit14,'string',num2str(Afp1));
% set(handles.slider14,'value',Afp1);
% set(handles.edit15,'string',num2str(Afp2));
% set(handles.slider15,'value',Afp2);
% set(handles.edit16,'string',num2str(Afp3));
% set(handles.slider16,'value',Afp3);
% set(handles.edit17,'string',num2str(Afp4));
% set(handles.slider17,'value',Afp4);
% set(handles.edit18,'string',num2str(Afp5));
% set(handles.slider18,'value',Afp5);
% set(handles.edit19,'string',num2str(Afp6));
% set(handles.slider19,'value',Afp6);
% set(handles.edit20,'string',num2str(Afp7));
% set(handles.slider20,'value',Afp7);
% set(handles.edit21,'string',num2str(Afp8));
% set(handles.slider21,'value',Afp8);
% set(handles.edit22,'string',num2str(Afp9));
% set(handles.slider22,'value',Afp9);
% set(handles.edit23,'string',num2str(Afp10));
% set(handles.slider23,'value',Afp10);
% 
% tab2=1;
