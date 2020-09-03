function varargout = InterfazPpal(varargin)
% INTERFAZPPAL MATLAB code for InterfazPpal.fig
%      INTERFAZPPAL, by itself, creates a new INTERFAZPPAL or raises the existing
%      singleton*.
%
%      H = INTERFAZPPAL returns the handle to a new INTERFAZPPAL or the handle to
%      the existing singleton*.
%
%      INTERFAZPPAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZPPAL.M with the given input arguments.
%
%      INTERFAZPPAL('Property','Value',...) creates a new INTERFAZPPAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InterfazPpal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InterfazPpal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InterfazPpal

% Last Modified by GUIDE v2.5 09-Jul-2020 19:44:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InterfazPpal_OpeningFcn, ...
                   'gui_OutputFcn',  @InterfazPpal_OutputFcn, ...
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


% --- Executes just before InterfazPpal is made visible.
function InterfazPpal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InterfazPpal (see VARARGIN)
global duracion muestras f Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 
global  Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 Afp4 Afp5 
global Afp6 Afp7 Afp8 Afp9 Afp10
global Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10
global Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10
Aap1=0; Aap2=0; Aap3=0; Aap4=0; Aap5=0; Aap6=0; Aap7=0; Aap8=0; Aap9=0; Aap10=0;
Afp1=0; Afp2=0; Afp3=0; Afp4=0; Afp5=0; Afp6=0; Afp7=0; Afp8=0; Afp9=0; Afp10=0;
Aat1=0; Aat2=0; Aat3=0; Aat4=0; Aat5=0; Aat6=0; Aat7=0; Aat8=0; Aat9=0; Aat10=0;
Aft1=0; Aft2=0; Aft3=0; Aft4=0; Aft5=0; Aft6=0; Aft7=0; Aft8=0; Aft9=0; Aft10=0;
Aa1=0; Aa2=0; Aa3=0; Aa4=0; Aa5=0; Aa6=0; Aa7=0; Aa8=0; Aa9=0; Aa10=0;
Af1=0; Af2=0; Af3=0; Af4=0; Af5=0; Af6=0; Af7=0; Af8=0; Af9=0; Af10=0;
duracion=str2double(get(handles.editDuracion,'string'));
f=str2double(get(handles.editFrecuencia,'string'));
muestras=str2double(get(handles.editMuestras,'string'));

% Choose default command line output for InterfazPpal
handles.output = hObject;


% Update handles structure
guidata(hObject, handles);
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

% UIWAIT makes InterfazPpal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InterfazPpal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in desviacionFrecuencia.
function desviacionFrecuencia_Callback(hObject, eventdata, handles)
InterfazDesFre;


% --- Executes on button press in huecosSobretension.
function huecosSobretension_Callback(hObject, eventdata, handles)
InterfazHueSob;


% --- Executes on button press in flicker.
function flicker_Callback(hObject, eventdata, handles)
InterfazFlicker;



% --- Executes on button press in transitorios.
function transitorios_Callback(hObject, eventdata, handles)
InterfazTran;


% --- Executes on button press in ruido.
function ruido_Callback(hObject, eventdata, handles)
InterfazRuido;
uiwait;
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 Afp4 Afp5 
global Afp6 Afp7 Afp8 Afp9 Afp10
global f acep6 duracion canc6 Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10
global Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10 muestras db
duracion=str2double(get(handles.editDuracion,'string'));
muestras=str2double(get(handles.editMuestras,'string'));
if canc6==1
    x=linspace(0,duracion/1000,muestras);
    plot(x,0);
    canc6=0;
else acep6==1
    Aap=[Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10];
    Afp=[Afp1 Afp2 Afp3 Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10];
    Aa=[Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10];
    Af=[Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10];
    Aa=Aap;
    Af=Afp;
    y=0;
    for i=1:10
        t=linspace(0,duracion/1000,muestras);
        y=y+Aa(i)*sqrt(2)*sin(2*pi*i*f*t+Af(i));
        plot(t,y);
    end
    t=linspace(0,duracion/1000,muestras);
    y=awgn(y,db,0);
    plot(t,y);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
[filename,pathname]=uiputfile({'*.jpg;*.bmp;*.jpeg;*.fig'},'Guardar nombre de archivo');
saveas(gcf,filename);
msgbox('Imagen guardada','Mensaje');


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
if isempty(get(hObject,'value'))
    return
else
    close all;
end

% --- Executes on slider movement.
function sliderDuracion_Callback(hObject, eventdata, handles)
global Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 Af3 Af4 Af5 Af6 Af7
global Af8 Af9 Af10 f duracion muestras y
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
global Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10
global Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10 tab2
duracion=get(hObject,'value');
set(handles.editDuracion,'string',duracion);
Aap=[Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10];
Afp=[Afp1 Afp2 Afp3 Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10];
Aa=[Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10];
Af=[Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10];
Aa=Aap;
Af=Afp;
y=0;
for i=1:10
    t=linspace(0,duracion/1000,muestras);
    y=y+Aa(i)*sqrt(2)*sin(2*pi*i*f*t+Af(i));
    plot(t,y);
end
if tab2==1
        Aat=[Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10];
        Aft=[Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10];
        for i=1:10
            t=linspace(0,duracion/1000,muestras);
            y=y+Aat(i)*sqrt(2)*sin(2*pi*(i+10)*f*t+Aft(i));
        end
end
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
duracion=get(hObject,'value');
set(handles.sliderDuracion,'string',num2str(duracion));


% --- Executes during object creation, after setting all properties.
function sliderDuracion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderDuracion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderFrecuencia_Callback(hObject, eventdata, handles)
global Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 Af3 Af4 Af5 Af6 Af7
global Af8 Af9 Af10 f duracion muestras y
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
global Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10
global Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10 tab2
f=get(hObject,'value');
set(handles.editFrecuencia,'string',f);
Aap=[Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10];
Afp=[Afp1 Afp2 Afp3 Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10];
Aa=[Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10];
Af=[Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10];
Aa=Aap;
Af=Afp;
y=0;
for i=1:10
    t=linspace(0,duracion/1000,muestras);
    y=y+Aa(i)*sqrt(2)*sin(2*pi*i*f*t+Af(i));
end
if tab2==1
        Aat=[Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10];
        Aft=[Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10];
        for i=1:10
            t=linspace(0,duracion/1000,muestras);
            y=y+Aat(i)*sqrt(2)*sin(2*pi*(i+10)*f*t+Aft(i));
        end
end
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
f=get(hObject,'value');
set(handles.sliderFrecuencia,'string',num2str(f));

% --- Executes during object creation, after setting all properties.
function sliderFrecuencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderFrecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderMuestras_Callback(hObject, eventdata, handles)
global Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 Af3 Af4 Af5 Af6 Af7
global Af8 Af9 Af10 duracion f muestras y
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
global Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10
global Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10 tab2
muestras=get(hObject,'value');
set(handles.editMuestras,'string',muestras);
Aap=[Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10];
Afp=[Afp1 Afp2 Afp3 Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10];
Aa=[Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10];
Af=[Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10];
Aa=Aap;
Af=Afp;
y=0;
for i=1:10
    t=linspace(0,duracion/1000,muestras);
    y=y+Aa(i)*sqrt(2)*sin(2*pi*i*f*t+Af(i));
end
if tab2==1
        Aat=[Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10];
        Aft=[Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10];
        for i=1:10
            t=linspace(0,duracion/1000,muestras);
            y=y+Aat(i)*sqrt(2)*sin(2*pi*(i+10)*f*t+Aft(i));
        end
end
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
muestras=get(hObject,'value');
set(handles.sliderMuestras,'string',num2str(muestras));


% --- Executes during object creation, after setting all properties.
function sliderMuestras_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderMuestras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function editDuracion_Callback(hObject, eventdata, handles)
global duracion y Aa1 f muestras Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2
global Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
global Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10
global Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10 tab2
duracion=str2double(get(hObject,'string'));
set(handles.sliderDuracion,'value',duracion);
Aap=[Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10];
Afp=[Afp1 Afp2 Afp3 Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10];
Aa=[Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10];
Af=[Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10];
Aa=Aap;
Af=Afp;
y=0;
for i=1:10
    t=linspace(0,duracion/1000,muestras);
    y=y+Aa(i)*sqrt(2)*sin(2*pi*i*f*t+Af(i));
end
if tab2==1
        Aat=[Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10];
        Aft=[Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10];
        for i=1:10
            t=linspace(0,duracion/1000,muestras);
            y=y+Aat(i)*sqrt(2)*sin(2*pi*(i+10)*f*t+Aft(i));
        end
end
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');

% --- Executes during object creation, after setting all properties.
function editDuracion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editDuracion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)



function editFrecuencia_Callback(hObject, eventdata, handles)
global Aa1 y f muestras duracion Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2
global Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
global Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10
global Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10 tab2
f=str2double(get(hObject,'string'));
set(handles.sliderFrecuencia,'value',f);
Aap=[Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10];
Afp=[Afp1 Afp2 Afp3 Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10];
Aa=[Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10];
Af=[Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10];
Aa=Aap;
Af=Afp;
y=0;
for i=1:10
    t=linspace(0,duracion/1000,muestras);
    y=y+Aa(i)*sqrt(2)*sin(2*pi*i*f*t+Af(i));
end
if tab2==1
        Aat=[Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10];
        Aft=[Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10];
        for i=1:10
            t=linspace(0,duracion/1000,muestras);
            y=y+Aat(i)*sqrt(2)*sin(2*pi*(i+10)*f*t+Aft(i));
        end
end
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');


% --- Executes during object creation, after setting all properties.
function editFrecuencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFrecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function editMuestras_Callback(hObject, eventdata, handles)
global Aa1 y f muestras duracion Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2
global Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10 tab2
global Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10
global Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10
muestras=str2double(get(hObject,'string'));
set(handles.sliderMuestras,'value',muestras);
Aap=[Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10];
Afp=[Afp1 Afp2 Afp3 Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10];
Aa=[Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10];
Af=[Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10];
Aa=Aap;
Af=Afp;
y=0;
for i=1:10
    t=linspace(0,duracion/1000,muestras);
    y=y+Aa(i)*sqrt(2)*sin(2*pi*i*f*t+Af(i));
end
if tab2==1
        Aat=[Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10];
        Aft=[Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10];
        for i=1:10
            t=linspace(0,duracion/1000,muestras);
            y=y+Aat(i)*sqrt(2)*sin(2*pi*(i+10)*f*t+Aft(i));
        end
end   
plot(t,y);    
grid on;
xlabel('Tiempo');
ylabel('Amplitud');


% --- Executes during object creation, after setting all properties.
function editMuestras_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMuestras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in armonicos.
function armonicos_Callback(hObject, eventdata, handles)
% hObject    handle to armonicos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 Af3 Af4 Af5 
global Af6 Af7 Af8 Af9 Af10 acep1 canc1 f duracion muestras Aap1 Aap2 Aap3
global Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 Afp4 Afp5 Afp6
global Afp7 Afp8 Afp9 Afp10 tab2
global Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10
global Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10
InterfazEdArm;
uiwait;
duracion=str2double(get(handles.editDuracion,'string'));
% if canc1==1
%     Aap=[Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10];
%     Afp=[Afp1 Afp2 Afp3 Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10];
%     y=0;
%     for i=1:10
%         t=linspace(0,duracion/1000,muestras);
%         y=y+Aap(i)*sqrt(2)*sin(2*pi*i*f*t+Afp(i));
%         plot(t,y);
%         canc1=0;
%     end
if acep1==1
    Aap=[Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10];
    Afp=[Afp1 Afp2 Afp3 Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10];
    Aa=[Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10];
    Af=[Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10];
    Aa=Aap;
    Af=Afp;
    y=0;
    for i=1:10
        t=linspace(0,duracion/1000,muestras);
        y=y+Aa(i)*sqrt(2)*sin(2*pi*i*f*t+Af(i));
    end
    if tab2==1
        Aat=[Aat1 Aat2 Aat3 Aat4 Aat5 Aat6 Aat7 Aat8 Aat9 Aat10];
        Aft=[Aft1 Aft2 Aft3 Aft4 Aft5 Aft6 Aft7 Aft8 Aft9 Aft10];
        for i=1:10
            t=linspace(0,duracion/1000,muestras);
            y=y+Aat(i)*sqrt(2)*sin(2*pi*(i+10)*f*t+Aft(i));
        end
    end
    plot(t,y);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;
