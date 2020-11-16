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
global duracion muestras frecuencia amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 
global faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 
global faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10 inicioFlicker duracionFlicker amplitudFlicker
global frecuenciaFlicker faseFlicker
amplitudArmonicoPrevio1=0; amplitudArmonicoPrevio2=0; amplitudArmonicoPrevio3=0; amplitudArmonicoPrevio4=0; amplitudArmonicoPrevio5=0; amplitudArmonicoPrevio6=0; amplitudArmonicoPrevio7=0; amplitudArmonicoPrevio8=0; amplitudArmonicoPrevio9=0; amplitudArmonicoPrevio10=0;
faseArmonicoPrevio1=0; faseArmonicoPrevio2=0; faseArmonicoPrevio3=0; faseArmonicoPrevio4=0; faseArmonicoPrevio5=0; faseArmonicoPrevio6=0; faseArmonicoPrevio7=0; faseArmonicoPrevio8=0; faseArmonicoPrevio9=0; faseArmonicoPrevio10=0;
amplitudArmonico1=0; amplitudArmonico2=0; amplitudArmonico3=0; amplitudArmonico4=0; amplitudArmonico5=0; amplitudArmonico6=0; amplitudArmonico7=0; amplitudArmonico8=0; amplitudArmonico9=0; amplitudArmonico10=0;
faseArmonico1=0; faseArmonico2=0; faseArmonico3=0; faseArmonico4=0; faseArmonico5=0; faseArmonico6=0; faseArmonico7=0; faseArmonico8=0; faseArmonico9=0; faseArmonico10=0;
inicioFlicker=0; duracionFlicker=0;amplitudFlicker=0;frecuenciaFlicker=0;
faseFlicker=0;
duracion=str2double(get(handles.editDuracion,'string'));
frecuencia=str2double(get(handles.editFrecuencia,'string'));
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

function DesviacionFrecuencia_Callback(hObject, eventdata, handles)
InterfazDesFre;

function HuecosSobretension_Callback(hObject, eventdata, handles)
InterfazHueSob;
uiwait;
global inicioFlicker duracionFlicker amplitudFlicker frecuenciaFlicker
global faseFlicker duracion muestras aceptarHuecoSobretension
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
global frecuencia amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10
global faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 y
global amplitudPerturbacion1 amplitudPerturbacion2 amplitudPerturbacion3 amplitudPerturbacion4 amplitudPerturbacion5 
global amplitudPerturbacion6 amplitudPerturbacion7 amplitudPerturbacion8 amplitudPerturbacion9 amplitudPerturbacion10
global inicioPerturbacion1 inicioPerturbacion2 inicioPerturbacion3 inicioPerturbacion4 inicioPerturbacion5
global inicioPerturbacion6 inicioPerturbacion7 inicioPerturbacion8 inicioPerturbacion9 inicioPerturbacion10
global duracionPerturbacion1 duracionPerturbacion2 duracionPerturbacion3 duracionPerturbacion4 duracionPerturbacion5
global duracionPerturbacion6 duracionPerturbacion7 duracionPerturbacion8 duracionPerturbacion9 duracionPerturbacion10
duracion=str2double(get(handles.editDuracion,'string'));
muestras=str2double(get(handles.editMuestras,'string'));
if aceptarHuecoSobretension==1
    amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
    faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
    amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
    faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
    amplitudArmonico=amplitudArmonicoPrevio;
    faseArmonico=faseArmonicoPrevio;
    amplitudPerturbacion=[amplitudPerturbacion1 amplitudPerturbacion2 amplitudPerturbacion3 amplitudPerturbacion4 amplitudPerturbacion5 
        amplitudPerturbacion6 amplitudPerturbacion7 amplitudPerturbacion8 amplitudPerturbacion9 amplitudPerturbacion10];
    inicioPerturbacion=[inicioPerturbacion1 inicioPerturbacion2 inicioPerturbacion3 inicioPerturbacion4 inicioPerturbacion5
        inicioPerturbacion6 inicioPerturbacion7 inicioPerturbacion8 inicioPerturbacion9 inicioPerturbacion10];
    duracionPerturbacion=[duracionPerturbacion1 duracionPerturbacion2 duracionPerturbacion3 duracionPerturbacion4 duracionPerturbacion5
        duracionPerturbacion6 duracionPerturbacion7 duracionPerturbacion8 duracionPerturbacion9 duracionPerturbacion10];
    y=0;
    p=0;
    for i=1:10
        x=linspace(0,duracion/1000,muestras);
        y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
%         z=z+((amplitudArmonico(i)*sqrt(2))*(1+(amplitudFlicker/1000)*sin(frecuenciaFlicker*2*pi*x+faseFlicker))).*sin(2*pi*frecuencia*x+faseArmonico(i));
        p=p+amplitudPerturbacion(i)*(u(x-inicioPerturbacion(i))-u(x-(inicioPerturbacion(i)+duracionPerturbacion(i))))*sin(2*pi*i*frecuencia*t);
    end
    plot(x,p);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function Flicker_Callback(hObject, eventdata, handles)
Flicker;
uiwait;
global inicioFlicker duracionFlicker amplitudFlicker frecuenciaFlicker
global faseFlicker duracion muestras aceptarFlicker
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
global frecuencia amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10
global faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 y
duracion=str2double(get(handles.editDuracion,'string'));
muestras=str2double(get(handles.editMuestras,'string'));
if aceptarFlicker==1
    amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
    faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
    amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
    faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
    amplitudArmonico=amplitudArmonicoPrevio;
    faseArmonico=faseArmonicoPrevio;
    y=0;
    z=0;
    for i=1:10
        x=linspace(0,duracion/1000,muestras);
        y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
        z=z+((amplitudArmonico(i)*sqrt(2)*(1+(amplitudFlicker/1000)*sin(frecuenciaFlicker*2*pi*x+faseFlicker))).*((sin(2*pi*i*frecuencia*x+faseArmonico(i)))));
    end
    y=(x<inicioFlicker/1000).*(y)+((inicioFlicker/1000<=x)&(x<(inicioFlicker+duracionFlicker)/1000)).*(z)+((inicioFlicker+duracionFlicker)/1000<x).*(y);
    plot(x,y);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function Transitorios_Callback(hObject, eventdata, handles)
Transitorios;
uiwait;
global inicioFlicker duracionFlicker amplitudFlicker frecuenciaFlicker
global faseFlicker duracion muestras aceptarHuecoSobretension
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
global frecuencia amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10
global faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 y
global amplitudPerturbacion1 amplitudPerturbacion2 amplitudPerturbacion3 amplitudPerturbacion4 amplitudPerturbacion5 
global amplitudPerturbacion6 amplitudPerturbacion7 amplitudPerturbacion8 amplitudPerturbacion9 amplitudPerturbacion10
global inicioPerturbacion1 inicioPerturbacion2 inicioPerturbacion3 inicioPerturbacion4 inicioPerturbacion5
global inicioPerturbacion6 inicioPerturbacion7 inicioPerturbacion8 inicioPerturbacion9 inicioPerturbacion10
global duracionPerturbacion1 duracionPerturbacion2 duracionPerturbacion3 duracionPerturbacion4 duracionPerturbacion5
global duracionPerturbacion6 duracionPerturbacion7 duracionPerturbacion8 duracionPerturbacion9 duracionPerturbacion10
global amplitudTransitorio1 amplitudTransitorio2 amplitudTransitorio3 amplitudTransitorio4 amplitudTransitorio5 
global amplitudTransitorio6 amplitudTransitorio7 amplitudTransitorio8 amplitudTransitorio9 amplitudTransitorio10
global inicioTransitorio1 inicioTransitorio2 inicioTransitorio3 inicioTransitorio4 inicioTransitorio5
global inicioTransitorio6 inicioTransitorio7 inicioTransitorio8 inicioTransitorio9 inicioTransitorio10
global duracionTransitorio1 duracionTransitorio2 duracionTransitorio3 duracionTransitorio4 duracionTransitorio5
global duracionTransitorio6 duracionTransitorio7 duracionTransitorio8 duracionTransitorio9 duracionTransitorio10
duracion=str2double(get(handles.editDuracion,'string'));
muestras=str2double(get(handles.editMuestras,'string'));
if aceptarHuecoSobretension==1
    amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
    faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
    amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
    faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
    amplitudArmonico=amplitudArmonicoPrevio;
    faseArmonico=faseArmonicoPrevio;
    amplitudPerturbacion=[amplitudPerturbacion1 amplitudPerturbacion2 amplitudPerturbacion3 amplitudPerturbacion4 amplitudPerturbacion5 
        amplitudPerturbacion6 amplitudPerturbacion7 amplitudPerturbacion8 amplitudPerturbacion9 amplitudPerturbacion10];
    inicioPerturbacion=[inicioPerturbacion1 inicioPerturbacion2 inicioPerturbacion3 inicioPerturbacion4 inicioPerturbacion5
        inicioPerturbacion6 inicioPerturbacion7 inicioPerturbacion8 inicioPerturbacion9 inicioPerturbacion10];
    duracionPerturbacion=[duracionPerturbacion1 duracionPerturbacion2 duracionPerturbacion3 duracionPerturbacion4 duracionPerturbacion5
        duracionPerturbacion6 duracionPerturbacion7 duracionPerturbacion8 duracionPerturbacion9 duracionPerturbacion10];
    amplitudTransitorio=[amplitudTransitorio1 amplitudTransitorio2 amplitudTransitorio3 amplitudTransitorio4 amplitudTransitorio5 
        amplitudTransitorio6 amplitudTransitorio7 amplitudTransitorio8 amplitudTransitorio9 amplitudTransitorio10];
    inicioTransitorio=[inicioTransitorio1 inicioTransitorio2 inicioTransitorio3 inicioTransitorio4 inicioTransitorio5
        inicioTransitorio6 inicioTransitorio7 inicioTransitorio8 inicioTransitorio9 inicioTransitorio10];
    duracionTransitorio=[duracionTransitorio1 duracionTransitorio2 duracionTransitorio3 duracionTransitorio4 duracionTransitorio5
        duracionTransitorio6 duracionTransitorio7 duracionTransitorio8 duracionTransitorio9 duracionTransitorio10];
    y=0;
    p=0;
    for i=1:10
        x=linspace(0,duracion/1000,muestras);
        y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
%         z=z+((amplitudArmonico(i)*sqrt(2))*(1+(amplitudFlicker/1000)*sin(frecuenciaFlicker*2*pi*x+faseFlicker))).*sin(2*pi*frecuencia*x+faseArmonico(i));
%         p=p+amplitudPerturbacion(i)*(u(x-inicioPerturbacion(i))-u(x-(inicioPerturbacion(i)+duracionPerturbacion(i))))*sin(2*pi*i*frecuencia*t);
%         t=
    end
    plot(x,p);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function Ruido_Callback(hObject, eventdata, handles)
Ruido;
uiwait;
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
global frecuencia aceptarRuido duracion canc6 amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10
global faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 muestras db y
duracion=str2double(get(handles.editDuracion,'string'));
muestras=str2double(get(handles.editMuestras,'string'));
if aceptarRuido==1
    amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
    faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
    amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
    faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
    amplitudArmonico=amplitudArmonicoPrevio;
    faseArmonico=faseArmonicoPrevio;
    y=0;
    for i=1:10
        x=linspace(0,duracion/1000,muestras);
        y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
    end
    x=linspace(0,duracion/1000,muestras);
    y=awgn(y,db,'measured');
    plot(x,y);
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
global amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7
global faseArmonico8 faseArmonico9 faseArmonico10 frecuencia duracion muestras y
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
duracion=get(hObject,'value');
set(handles.editDuracion,'string',duracion);
amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
amplitudArmonico=amplitudArmonicoPrevio;
faseArmonico=faseArmonicoPrevio;
y=0;
for i=1:10
    x=linspace(0,duracion/1000,muestras);
    y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*t+faseArmonico(i));
    plot(x,y);
end
plot(x,y);
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
global amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7
global faseArmonico8 faseArmonico9 faseArmonico10 frecuencia duracion muestras y
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
frecuencia=get(hObject,'value');
set(handles.editFrecuencia,'string',frecuencia);
amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
amplitudArmonico=amplitudArmonicoPrevio;
faseArmonico=faseArmonicoPrevio;
y=0;
for i=1:10
    x=linspace(0,duracion/1000,muestras);
    y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
end
plot(x,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
frecuencia=get(hObject,'value');
set(handles.sliderFrecuencia,'string',num2str(frecuencia));

function sliderFrecuencia_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function sliderMuestras_Callback(hObject, eventdata, handles)
global amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7
global faseArmonico8 faseArmonico9 faseArmonico10 duracion frecuencia muestras y
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
muestras=get(hObject,'value');
set(handles.editMuestras,'string',muestras);
amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
amplitudArmonico=amplitudArmonicoPrevio;
faseArmonico=faseArmonicoPrevio;
y=0;
for i=1:10
    x=linspace(0,duracion/1000,muestras);
    y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
end
plot(x,y);
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
global duracion y amplitudArmonico1 frecuencia muestras amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2
global faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
duracion=str2double(get(hObject,'string'));
set(handles.sliderDuracion,'value',duracion);
amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
amplitudArmonico=amplitudArmonicoPrevio;
faseArmonico=faseArmonicoPrevio;
y=0;
for i=1:10
    x=linspace(0,duracion/1000,muestras);
    y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
end
plot(x,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');

function editDuracion_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editFrecuencia_Callback(hObject, eventdata, handles)
global amplitudArmonico1 y frecuencia muestras duracion amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2
global faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
frecuencia=str2double(get(hObject,'string'));
set(handles.sliderFrecuencia,'value',frecuencia);
amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
amplitudArmonico=amplitudArmonicoPrevio;
faseArmonico=faseArmonicoPrevio;
y=0;
for i=1:10
    x=linspace(0,duracion/1000,muestras);
    y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
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
global amplitudArmonico1 y frecuencia muestras duracion amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2
global faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
muestras=str2double(get(hObject,'string'));
set(handles.sliderMuestras,'value',muestras);
amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
amplitudArmonico=amplitudArmonicoPrevio;
faseArmonico=faseArmonicoPrevio;
y=0;
for i=1:10
    x=linspace(0,duracion/1000,muestras);
    y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
end  
plot(x,y);    
grid on;
xlabel('Tiempo');
ylabel('Amplitud');

function editMuestras_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Armonicos_Callback(hObject, eventdata, handles)
global y amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 
global faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 aceptarArmonico frecuencia duracion muestras amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3
global amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6
global faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
Armonicos;
uiwait;
duracion=str2double(get(handles.editDuracion,'string'));
if aceptarArmonico==1
    amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
    faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
    amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
    faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
    amplitudArmonico=amplitudArmonicoPrevio;
    faseArmonico=faseArmonicoPrevio;
    y=0;
    for i=1:10
        x=linspace(0,duracion/1000,muestras);
        y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
    end
    plot(x,y);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;
