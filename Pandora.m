function varargout = Pandora(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Pandora_OpeningFcn, ...
                   'gui_OutputFcn',  @Pandora_OutputFcn, ...
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

function Pandora_OpeningFcn(hObject, eventdata, handles, varargin)
global duracion muestras f Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 
global  Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 Afp4 Afp5 
global Afp6 Afp7 Afp8 Afp9 Afp10
Aap1=0; Aap2=0; Aap3=0; Aap4=0; Aap5=0; Aap6=0; Aap7=0; Aap8=0; Aap9=0; Aap10=0;
Afp1=0; Afp2=0; Afp3=0; Afp4=0; Afp5=0; Afp6=0; Afp7=0; Afp8=0; Afp9=0; Afp10=0;
Aa1=0; Aa2=0; Aa3=0; Aa4=0; Aa5=0; Aa6=0; Aa7=0; Aa8=0; Aa9=0; Aa10=0;
Af1=0; Af2=0; Af3=0; Af4=0; Af5=0; Af6=0; Af7=0; Af8=0; Af9=0; Af10=0;
duracion=str2double(get(handles.editDuracion,'string'));
f=str2double(get(handles.editFrecuencia,'string'));
muestras=str2double(get(handles.editMuestras,'string'));

% Choose default command line output for Pandora
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function varargout = Pandora_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function desviacionFrecuencia_Callback(hObject, eventdata, handles)
InterfazDesFre;

function huecosSobretension_Callback(hObject, eventdata, handles)
InterfazHueSob;

function flicker_Callback(hObject, eventdata, handles)
Flicker;

function transitorios_Callback(hObject, eventdata, handles)
Transitorios;

function ruido_Callback(hObject, eventdata, handles)
Ruido;
uiwait;
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
global f acep6 duracion canc6 Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10
global Af1 Af2 Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10 muestras db y
duracion=str2double(get(handles.editDuracion,'string'));
muestras=str2double(get(handles.editMuestras,'string'));
if acep6==1
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
    y=awgn(y,db,'measured');
    plot(t,y);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function pushbutton7_Callback(hObject, eventdata, handles)
[filename,pathname]=uiputfile({'*.jpg;*.bmp;*.jpeg;*.fig'},'Guardar nombre de archivo');
saveas(gcf,filename);
msgbox('Imagen guardada','Mensaje');

function pushbutton9_Callback(hObject, eventdata, handles)
if isempty(get(hObject,'value'))
    return
else
    close all;
end

function sliderDuracion_Callback(hObject, eventdata, handles)
global Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 Af3 Af4 Af5 Af6 Af7
global Af8 Af9 Af10 f duracion muestras y
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
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
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
duracion=get(hObject,'value');
set(handles.sliderDuracion,'string',num2str(duracion));

function sliderDuracion_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function sliderFrecuencia_Callback(hObject, eventdata, handles)
global Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 Af3 Af4 Af5 Af6 Af7
global Af8 Af9 Af10 f duracion muestras y
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
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
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
f=get(hObject,'value');
set(handles.sliderFrecuencia,'string',num2str(f));

function sliderFrecuencia_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function sliderMuestras_Callback(hObject, eventdata, handles)
global Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 Af3 Af4 Af5 Af6 Af7
global Af8 Af9 Af10 duracion f muestras y
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
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
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
muestras=get(hObject,'value');
set(handles.sliderMuestras,'string',num2str(muestras));

function sliderMuestras_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function editDuracion_Callback(hObject, eventdata, handles)
global duracion y Aa1 f muestras Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2
global Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
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
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');

function editDuracion_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editFrecuencia_Callback(hObject, eventdata, handles)
global Aa1 y f muestras duracion Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2
global Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
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
plot(t,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');

function editFrecuencia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMuestras_Callback(hObject, eventdata, handles)
global Aa1 y f muestras duracion Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2
global Af3 Af4 Af5 Af6 Af7 Af8 Af9 Af10
global Aap1 Aap2 Aap3 Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3
global Afp4 Afp5 Afp6 Afp7 Afp8 Afp9 Afp10
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
plot(t,y);    
grid on;
xlabel('Tiempo');
ylabel('Amplitud');

function editMuestras_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function armonicos_Callback(hObject, eventdata, handles)
global y Aa1 Aa2 Aa3 Aa4 Aa5 Aa6 Aa7 Aa8 Aa9 Aa10 Af1 Af2 Af3 Af4 Af5 
global Af6 Af7 Af8 Af9 Af10 acep1 canc1 f duracion muestras Aap1 Aap2 Aap3
global Aap4 Aap5 Aap6 Aap7 Aap8 Aap9 Aap10 Afp1 Afp2 Afp3 Afp4 Afp5 Afp6
global Afp7 Afp8 Afp9 Afp10
Armonicos;
uiwait;
duracion=str2double(get(handles.editDuracion,'string'));
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
    plot(t,y);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;
