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
global nivelContinuaArmonico nivelContinuaFrecuencia armonicoFundamental
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 
global faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10 inicioFlicker duracionFlicker amplitudFlicker
global frecuenciaFlicker faseFlicker decibelios
global perturbacion1 perturbacion2 perturbacion3 perturbacion4 perturbacion5 perturbacion6
global perturbacion7 perturbacion8 perturbacion9 perturbacion10
global amplitudPerturbacionPrevia1 amplitudPerturbacionPrevia2 amplitudPerturbacionPrevia3 amplitudPerturbacionPrevia4 amplitudPerturbacionPrevia5
global amplitudPerturbacionPrevia6 amplitudPerturbacionPrevia7 amplitudPerturbacionPrevia8 amplitudPerturbacionPrevia9 amplitudPerturbacionPrevia10
global amplitudPerturbacion1 amplitudPerturbacion2 amplitudPerturbacion3 amplitudPerturbacion4 amplitudPerturbacion5
global amplitudPerturbacion6 amplitudPerturbacion7 amplitudPerturbacion8 amplitudPerturbacion9 amplitudPerturbacion10
global inicioPerturbacion1 inicioPerturbacion2 inicioPerturbacion3 inicioPerturbacion4 inicioPerturbacion5 inicioPerturbacion6
global inicioPerturbacion7 inicioPerturbacion8 inicioPerturbacion9 inicioPerturbacion10
global duracionPerturbacion1 duracionPerturbacion2 duracionPerturbacion3 duracionPerturbacion4 duracionPerturbacion5 
global duracionPerturbacion6 duracionPerturbacion7 duracionPerturbacion8 duracionPerturbacion9 duracionPerturbacion10
global hueco1 hueco2 hueco3 hueco4 hueco5 hueco6 hueco7 hueco8 hueco9 hueco10
global sobretension1 sobretension2 sobretension3 sobretension4 sobretension5 sobretension6 sobretension7 sobretension8 sobretension9 sobretension10
global inicioTransitorio1 inicioTransitorio2 inicioTransitorio3 inicioTransitorio4 inicioTransitorio5
global inicioTransitorio6 inicioTransitorio7 inicioTransitorio8 inicioTransitorio9 inicioTransitorio10
global duracionTransitorio1 duracionTransitorio2 duracionTransitorio3 duracionTransitorio4 duracionTransitorio5
global duracionTransitorio6 duracionTransitorio7 duracionTransitorio8 duracionTransitorio9 duracionTransitorio10
global amplitudSenoTransitorio1 amplitudSenoTransitorio2 amplitudSenoTransitorio3 amplitudSenoTransitorio4 amplitudSenoTransitorio5
global amplitudSenoTransitorio6 amplitudSenoTransitorio7 amplitudSenoTransitorio8 amplitudSenoTransitorio9 amplitudSenoTransitorio10
global frecuenciaSenoTransitorio1 frecuenciaSenoTransitorio2 frecuenciaSenoTransitorio3 frecuenciaSenoTransitorio4 frecuenciaSenoTransitorio5
global frecuenciaSenoTransitorio6 frecuenciaSenoTransitorio7 frecuenciaSenoTransitorio8 frecuenciaSenoTransitorio9 frecuenciaSenoTransitorio10
global faseSenoTransitorio1 faseSenoTransitorio2 faseSenoTransitorio3 faseSenoTransitorio4 faseSenoTransitorio5
global faseSenoTransitorio6 faseSenoTransitorio7 faseSenoTransitorio8 faseSenoTransitorio9 faseSenoTransitorio10
global exponenteTransitorio1 exponenteTransitorio2 exponenteTransitorio3 exponenteTransitorio4 exponenteTransitorio5
global exponenteTransitorio6 exponenteTransitorio7 exponenteTransitorio8 exponenteTransitorio9 exponenteTransitorio10
global amplitudFrecuenciaArmonicoPrevio1 amplitudFrecuenciaArmonicoPrevio2 amplitudFrecuenciaArmonicoPrevio3 amplitudFrecuenciaArmonicoPrevio4 
global amplitudFrecuenciaArmonicoPrevio5 amplitudFrecuenciaArmonicoPrevio6 amplitudFrecuenciaArmonicoPrevio7 amplitudFrecuenciaArmonicoPrevio8 
global amplitudFrecuenciaArmonicoPrevio9 amplitudFrecuenciaArmonicoPrevio10
global faseFrecuenciaArmonicoPrevio1 faseFrecuenciaArmonicoPrevio2 faseFrecuenciaArmonicoPrevio3 faseFrecuenciaArmonicoPrevio4 
global faseFrecuenciaArmonicoPrevio5 faseFrecuenciaArmonicoPrevio6 faseFrecuenciaArmonicoPrevio7 faseFrecuenciaArmonicoPrevio8
global faseFrecuenciaArmonicoPrevio9 faseFrecuenciaArmonicoPrevio10
amplitudArmonicoPrevio1=0; amplitudArmonicoPrevio2=0; amplitudArmonicoPrevio3=0; amplitudArmonicoPrevio4=0; amplitudArmonicoPrevio5=0; amplitudArmonicoPrevio6=0; amplitudArmonicoPrevio7=0; amplitudArmonicoPrevio8=0; amplitudArmonicoPrevio9=0; amplitudArmonicoPrevio10=0;
faseArmonicoPrevio1=0; faseArmonicoPrevio2=0; faseArmonicoPrevio3=0; faseArmonicoPrevio4=0; faseArmonicoPrevio5=0; faseArmonicoPrevio6=0; faseArmonicoPrevio7=0; faseArmonicoPrevio8=0; faseArmonicoPrevio9=0; faseArmonicoPrevio10=0;
amplitudArmonico1=0; amplitudArmonico2=0; amplitudArmonico3=0; amplitudArmonico4=0; amplitudArmonico5=0; amplitudArmonico6=0; amplitudArmonico7=0; amplitudArmonico8=0; amplitudArmonico9=0; amplitudArmonico10=0;
faseArmonico1=0; faseArmonico2=0; faseArmonico3=0; faseArmonico4=0; faseArmonico5=0; faseArmonico6=0; faseArmonico7=0; faseArmonico8=0; faseArmonico9=0; faseArmonico10=0;
nivelContinuaArmonico=0; nivelContinuaFrecuencia=0; armonicoFundamental=0;
inicioFlicker=0; duracionFlicker=0;amplitudFlicker=0;frecuenciaFlicker=0;
faseFlicker=0; decibelios=0;
perturbacion1=1; perturbacion2=1; perturbacion3=1; perturbacion4=1; perturbacion5=1; perturbacion6=1;
perturbacion7=1; perturbacion8=1; perturbacion9=1; perturbacion10=1;
hueco1=0; hueco2=0; hueco3=0; hueco4=0; hueco5=0; hueco6=0; hueco7=0; hueco8=0; hueco9=0; hueco10=0;
sobretension1=0; sobretension2=0; sobretension3=0; sobretension4=0; sobretension5=0; sobretension6=0; sobretension7=0; sobretension8=0; sobretension9=0; sobretension10=0;
amplitudPerturbacionPrevia1=0; amplitudPerturbacionPrevia2=0; amplitudPerturbacionPrevia3=0; amplitudPerturbacionPrevia4=0; amplitudPerturbacionPrevia5=0;
amplitudPerturbacionPrevia6=0; amplitudPerturbacionPrevia7=0; amplitudPerturbacionPrevia8=0; amplitudPerturbacionPrevia9=0; amplitudPerturbacionPrevia10=0;
amplitudPerturbacion1=0; amplitudPerturbacion2=0; amplitudPerturbacion3=0; amplitudPerturbacion4=0; amplitudPerturbacion5=0;
amplitudPerturbacion6=0; amplitudPerturbacion7=0; amplitudPerturbacion8=0; amplitudPerturbacion9=0; amplitudPerturbacion10=0;
inicioPerturbacion1=0; inicioPerturbacion2=0; inicioPerturbacion3=0; inicioPerturbacion4=0; inicioPerturbacion5=0; inicioPerturbacion6=0;
inicioPerturbacion7=0; inicioPerturbacion8=0; inicioPerturbacion9=0; inicioPerturbacion10=0;
duracionPerturbacion1=0; duracionPerturbacion2=0; duracionPerturbacion3=0; duracionPerturbacion4=0; duracionPerturbacion5=0;
duracionPerturbacion6=0; duracionPerturbacion7=0; duracionPerturbacion8=0; duracionPerturbacion9=0; duracionPerturbacion10=0;
inicioTransitorio1=0; inicioTransitorio2=0; inicioTransitorio3=0; inicioTransitorio4=0; inicioTransitorio5=0;
inicioTransitorio6=0; inicioTransitorio7=0; inicioTransitorio8=0; inicioTransitorio9=0; inicioTransitorio10=0;
duracionTransitorio1=0; duracionTransitorio2=0; duracionTransitorio3=0; duracionTransitorio4=0; duracionTransitorio5=0;
duracionTransitorio6=0; duracionTransitorio7=0; duracionTransitorio8=0; duracionTransitorio9=0; duracionTransitorio10=0;
amplitudSenoTransitorio1=0; amplitudSenoTransitorio2=0; amplitudSenoTransitorio3=0; amplitudSenoTransitorio4=0; amplitudSenoTransitorio5=0;
amplitudSenoTransitorio6=0; amplitudSenoTransitorio7=0; amplitudSenoTransitorio8=0; amplitudSenoTransitorio9=0; amplitudSenoTransitorio10=0;
frecuenciaSenoTransitorio1=0; frecuenciaSenoTransitorio2=0; frecuenciaSenoTransitorio3=0; frecuenciaSenoTransitorio4=0; frecuenciaSenoTransitorio5=0;
frecuenciaSenoTransitorio6=0; frecuenciaSenoTransitorio7=0; frecuenciaSenoTransitorio8=0; frecuenciaSenoTransitorio9=0; frecuenciaSenoTransitorio10=0;
faseSenoTransitorio1=0; faseSenoTransitorio2=0; faseSenoTransitorio3=0; faseSenoTransitorio4=0; faseSenoTransitorio5=0;
faseSenoTransitorio6=0; faseSenoTransitorio7=0; faseSenoTransitorio8=0; faseSenoTransitorio9=0; faseSenoTransitorio10=0;
exponenteTransitorio1=0; exponenteTransitorio2=0; exponenteTransitorio3=0; exponenteTransitorio4=0; exponenteTransitorio5=0;
exponenteTransitorio6=0; exponenteTransitorio7=0; exponenteTransitorio8=0; exponenteTransitorio9=0; exponenteTransitorio10=0;
amplitudFrecuenciaArmonicoPrevio1=0; amplitudFrecuenciaArmonicoPrevio2=0; amplitudFrecuenciaArmonicoPrevio3=0; amplitudFrecuenciaArmonicoPrevio4=0;
amplitudFrecuenciaArmonicoPrevio5=0; amplitudFrecuenciaArmonicoPrevio6=0; amplitudFrecuenciaArmonicoPrevio7=0; amplitudFrecuenciaArmonicoPrevio8=0;
amplitudFrecuenciaArmonicoPrevio9=0; amplitudFrecuenciaArmonicoPrevio10=0;
faseFrecuenciaArmonicoPrevio1=0; faseFrecuenciaArmonicoPrevio2=0; faseFrecuenciaArmonicoPrevio3=0; faseFrecuenciaArmonicoPrevio4=0;
faseFrecuenciaArmonicoPrevio5=0; faseFrecuenciaArmonicoPrevio6=0; faseFrecuenciaArmonicoPrevio7=0; faseFrecuenciaArmonicoPrevio8=0;
faseFrecuenciaArmonicoPrevio9=0; faseFrecuenciaArmonicoPrevio10=0;
duracion=str2double(get(handles.EditDuracion,'string'));
frecuencia=str2double(get(handles.EditFrecuencia,'string'));
muestras=str2double(get(handles.EditMuestras,'string'));

% Choose default command line output for Pandora
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function varargout = Pandora_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function Armonicos_Callback(hObject, eventdata, handles)
global y amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 
global faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 aceptarArmonico frecuencia duracion muestras amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3
global amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6
global faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10 nivelContinuaArmonico
Armonicos;
uiwait;
duracion=str2double(get(handles.EditDuracion,'string'));
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
    y=y+nivelContinuaArmonico;
    plot(x,y);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function HuecosSobretension_Callback(hObject, eventdata, handles)
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
InterfazHueSob;
uiwait;
duracion=str2double(get(handles.EditDuracion,'string'));
muestras=str2double(get(handles.EditMuestras,'string'));
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
        u1=(x>=inicioPerturbacion(i)/1000);
        u2=(x>=(inicioPerturbacion(i)/1000+duracionPerturbacion(i)/1000));
        y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
%         p=p+(1-amplitudPerturbacion(i)*amplitudArmonico(i)*sqrt(2).*(u1-u2).*sin(2*pi*i*frecuencia*x));
%         p=p+amplitudPerturbacion(i)*amplitudArmonico(i)*sqrt(2)*(u1-u2);
    end
%     p=p+(1-amplitudPerturbacion(1)*(u1-u2));
%     u1=x>=inicioPerturbacion(1);
%     u2=x>=inicioPerturbacion(1)/1000+duracionPerturbacion(1)/1000;
    p=(u1-u2).*sin(2*pi*50*x);
    plot(x,p);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function DesviacionFrecuencia_Callback(hObject, eventdata, handles)
global y d amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 
global faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 frecuencia duracion muestras amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3
global amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6
global faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
global amplitudFrecuenciaArmonicoPrevio1 amplitudFrecuenciaArmonicoPrevio2 amplitudFrecuenciaArmonicoPrevio3 amplitudFrecuenciaArmonicoPrevio4
global amplitudFrecuenciaArmonicoPrevio5 amplitudFrecuenciaArmonicoPrevio6 amplitudFrecuenciaArmonicoPrevio7 amplitudFrecuenciaArmonicoPrevio8
global amplitudFrecuenciaArmonicoPrevio9 amplitudFrecuenciaArmonicoPrevio10 
global faseFrecuenciaArmonicoPrevio1 faseFrecuenciaArmonicoPrevio2 faseFrecuenciaArmonicoPrevio3 faseFrecuenciaArmonicoPrevio4 
global faseFrecuenciaArmonicoPrevio5 faseFrecuenciaArmonicoPrevio6 faseFrecuenciaArmonicoPrevio7 faseFrecuenciaArmonicoPrevio8
global faseFrecuenciaArmonicoPrevio9 faseFrecuenciaArmonicoPrevio10 aceptarDesviacionFrecuencia
global nivelContinuaArmonico nivelContinuaFrecuencia armonicoFundamental aceptarArmonico
InterfazDesFre;
uiwait;
duracion=str2double(get(handles.EditDuracion,'string'));
if aceptarDesviacionFrecuencia==1
    amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
    faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
    amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
    faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
    amplitudArmonico=amplitudArmonicoPrevio;
    faseArmonico=faseArmonicoPrevio;
    amplitudFrecuenciaArmonicoPrevio=[amplitudFrecuenciaArmonicoPrevio1 amplitudFrecuenciaArmonicoPrevio2 amplitudFrecuenciaArmonicoPrevio3 amplitudFrecuenciaArmonicoPrevio4 amplitudFrecuenciaArmonicoPrevio5 amplitudFrecuenciaArmonicoPrevio6 amplitudFrecuenciaArmonicoPrevio7 amplitudFrecuenciaArmonicoPrevio8 amplitudFrecuenciaArmonicoPrevio9 amplitudFrecuenciaArmonicoPrevio10];
    faseFrecuenciaArmonicoPrevio=[faseFrecuenciaArmonicoPrevio1 faseFrecuenciaArmonicoPrevio2 faseFrecuenciaArmonicoPrevio3 faseFrecuenciaArmonicoPrevio4 faseFrecuenciaArmonicoPrevio5 faseFrecuenciaArmonicoPrevio6 faseFrecuenciaArmonicoPrevio7 faseFrecuenciaArmonicoPrevio8 faseFrecuenciaArmonicoPrevio9 faseFrecuenciaArmonicoPrevio10];
    amplitudFrecuenciaArmonico=amplitudFrecuenciaArmonicoPrevio;
    faseFrecuenciaArmonico=faseFrecuenciaArmonicoPrevio;
    y=0;
    d=0;
    for i=1:10
        x=linspace(0,duracion/1000,muestras);
%         y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
        d=d+amplitudFrecuenciaArmonico(i)*sqrt(2)*sin(2*pi*i*armonicoFundamental*x+faseFrecuenciaArmonico(i));
    end
%     y=y+nivelContinuaArmonico;
    d=d+nivelContinuaFrecuencia;
    plot(x,d);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function Flicker_Callback(hObject, eventdata, handles)
global inicioFlicker duracionFlicker amplitudFlicker frecuenciaFlicker
global faseFlicker duracion muestras aceptarFlicker
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
global frecuencia amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10
global faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 y z
Flicker;
uiwait;
duracion=str2double(get(handles.EditDuracion,'string'));
muestras=str2double(get(handles.EditMuestras,'string'));
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
global inicioFlicker duracionFlicker amplitudFlicker frecuenciaFlicker
global faseFlicker duracion muestras aceptarTransitorios
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
global frecuencia amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10
global faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 y
global amplitudSenoTransitorio1 amplitudSenoTransitorio2 amplitudSenoTransitorio3 amplitudSenoTransitorio4 amplitudSenoTransitorio5
global amplitudSenoTransitorio6 amplitudSenoTransitorio7 amplitudSenoTransitorio8 amplitudSenoTransitorio9 amplitudSenoTransitorio10
global frecuenciaSenoTransitorio1 frecuenciaSenoTransitorio2 frecuenciaSenoTransitorio3 frecuenciaSenoTransitorio4 frecuenciaSenoTransitorio5
global frecuenciaSenoTransitorio6 frecuenciaSenoTransitorio7 frecuenciaSenoTransitorio8 frecuenciaSenoTransitorio9 frecuenciaSenoTransitorio10
global faseSenoTransitorio1 faseSenoTransitorio2 faseSenoTransitorio3 faseSenoTransitorio4 faseSenoTransitorio5
global faseSenoTransitorio6 faseSenoTransitorio7 faseSenoTransitorio8 faseSenoTransitorio9 faseSenoTransitorio10
global exponenteTransitorio1 exponenteTransitorio2 exponenteTransitorio3 exponenteTransitorio4 exponenteTransitorio5
global exponenteTransitorio6 exponenteTransitorio7 exponenteTransitorio8 exponenteTransitorio9 exponenteTransitorio10
global inicioTransitorio1 inicioTransitorio2 inicioTransitorio3 inicioTransitorio4 inicioTransitorio5
global inicioTransitorio6 inicioTransitorio7 inicioTransitorio8 inicioTransitorio9 inicioTransitorio10
global duracionTransitorio1 duracionTransitorio2 duracionTransitorio3 duracionTransitorio4 duracionTransitorio5
global duracionTransitorio6 duracionTransitorio7 duracionTransitorio8 duracionTransitorio9 duracionTransitorio10
Transitorios;
uiwait;
duracion=str2double(get(handles.EditDuracion,'string'));
muestras=str2double(get(handles.EditMuestras,'string'));
if aceptarTransitorios==1
    amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
    faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
    amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
    faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
    amplitudArmonico=amplitudArmonicoPrevio;
    faseArmonico=faseArmonicoPrevio;
    inicioTransitorio=[inicioTransitorio1 inicioTransitorio2 inicioTransitorio3 inicioTransitorio4 inicioTransitorio5
        inicioTransitorio6 inicioTransitorio7 inicioTransitorio8 inicioTransitorio9 inicioTransitorio10];
    duracionTransitorio=[duracionTransitorio1 duracionTransitorio2 duracionTransitorio3 duracionTransitorio4 duracionTransitorio5
        duracionTransitorio6 duracionTransitorio7 duracionTransitorio8 duracionTransitorio9 duracionTransitorio10];
    amplitudSenoTransitorio=[amplitudSenoTransitorio1 amplitudSenoTransitorio2 amplitudSenoTransitorio3 amplitudSenoTransitorio4 amplitudSenoTransitorio5
        amplitudSenoTransitorio6 amplitudSenoTransitorio7 amplitudSenoTransitorio8 amplitudSenoTransitorio9 amplitudSenoTransitorio10];
    frecuenciaSenoTransitorio=[frecuenciaSenoTransitorio1 frecuenciaSenoTransitorio2 frecuenciaSenoTransitorio3 frecuenciaSenoTransitorio4 frecuenciaSenoTransitorio5
           frecuenciaSenoTransitorio6 frecuenciaSenoTransitorio7 frecuenciaSenoTransitorio8 frecuenciaSenoTransitorio9 frecuenciaSenoTransitorio10];
    faseSenoTransitorio=[faseSenoTransitorio1 faseSenoTransitorio2 faseSenoTransitorio3 faseSenoTransitorio4 faseSenoTransitorio5
        faseSenoTransitorio6 faseSenoTransitorio7 faseSenoTransitorio8 faseSenoTransitorio9 faseSenoTransitorio10];
    exponenteTransitorio=[exponenteTransitorio1 exponenteTransitorio2 exponenteTransitorio3 exponenteTransitorio4 exponenteTransitorio5
        exponenteTransitorio6 exponenteTransitorio7 exponenteTransitorio8 exponenteTransitorio9 exponenteTransitorio10];
    y=0;
    t=0;
    for i=1:10
        x=linspace(0,duracion/1000,muestras);
        y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
%         z=z+((amplitudArmonico(i)*sqrt(2))*(1+(amplitudFlicker/1000)*sin(frecuenciaFlicker*2*pi*x+faseFlicker))).*sin(2*pi*frecuencia*x+faseArmonico(i));
%         p=p+amplitudPerturbacion(i)*(u(x-inicioPerturbacion(i))-u(x-(inicioPerturbacion(i)+duracionPerturbacion(i))))*sin(2*pi*i*frecuencia*t);
        t=t+amplitudSenoTransitorio(i)*sin(2*pi*i*frecuencia*x+faseArmonico(i))+amplitudSenoTransitorio*exponenteTransitorio(i)*sin(2*pi*frecuenciaSenoTransitorio)
    end
    plot(x,t);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function Ruido_Callback(hObject, eventdata, handles)
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
global frecuencia aceptarRuido duracion amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10
global faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10 muestras decibelios y
Ruido;
uiwait;
duracion=str2double(get(handles.EditDuracion,'string'));
muestras=str2double(get(handles.EditMuestras,'string'));
if aceptarRuido==1
    amplitudArmonicoPrevio=[amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10];
    faseArmonicoPrevio=[faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3 faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10];
    amplitudArmonico=[amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10];
    faseArmonico=[faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10];
    amplitudArmonico=amplitudArmonicoPrevio;
    faseArmonico=faseArmonicoPrevio;
    y=0;
    x=linspace(0,duracion/1000,muestras)';
    for i=1:10
        y=y+amplitudArmonico(i)*sqrt(2)*sin(2*pi*i*frecuencia*x+faseArmonico(i));
        r=awgn(y,decibelios,'measured');
    end
    plot(x,r);
end
xlabel('Tiempo');
ylabel('Amplitud');
grid on;

function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function GuardarGrafica_Callback(hObject, eventdata, handles)
% [filename,pathname]=uiputfile({'*.jpg;*.bmp;*.jpeg;*.fig'},'Guardar nombre de archivo');
% saveas(fig,filename);
prompt = 'Nombre de la gráfica:';
dlgtitle = 'Guardar gráfica';
dims = [1 50];
answer = inputdlg(prompt,dlgtitle,dims);
tituloGraficaString=string(answer(1));
tituloGraficaChar=convertStringsToChars(tituloGraficaString);
nombreArchivoConExtension=[tituloGraficaChar,'.png'];
exportgraphics(gca,nombreArchivoConExtension);

function Stop_Callback(hObject, eventdata, handles)
if isempty(get(hObject,'value'))
    return
else
    close all;
end

function SliderDuracion_Callback(hObject, eventdata, handles)
global inicioFlicker duracionFlicker amplitudFlicker frecuenciaFlicker faseFlicker
global amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7
global faseArmonico8 faseArmonico9 faseArmonico10 frecuencia duracion muestras y z
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
duracion=get(hObject,'value');
set(handles.EditDuracion,'string',duracion);
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
%     z=z+((amplitudArmonico(i)*sqrt(2)*(1+(amplitudFlicker/1000)*sin(frecuenciaFlicker*2*pi*x+faseFlicker))).*((sin(2*pi*i*frecuencia*x+faseArmonico(i)))));
%     plot(x,y);
end
% y=(x<inicioFlicker/1000).*(y)+((inicioFlicker/1000<=x)&(x<(inicioFlicker+duracionFlicker)/1000)).*(z)+((inicioFlicker+duracionFlicker)/1000<x).*(y);
plot(x,y);
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
duracion=get(hObject,'value');
set(handles.SliderDuracion,'string',num2str(duracion));

function SliderDuracion_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function SliderFrecuencia_Callback(hObject, eventdata, handles)
global amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7
global faseArmonico8 faseArmonico9 faseArmonico10 frecuencia duracion muestras y
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
frecuencia=get(hObject,'value');
set(handles.EditFrecuencia,'string',frecuencia);
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
set(handles.SliderFrecuencia,'string',num2str(frecuencia));

function SliderFrecuencia_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function SliderMuestras_Callback(hObject, eventdata, handles)
global amplitudArmonico1 amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2 faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7
global faseArmonico8 faseArmonico9 faseArmonico10 duracion frecuencia muestras y
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
muestras=get(hObject,'value');
set(handles.EditMuestras,'string',muestras);
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
set(handles.SliderMuestras,'string',num2str(muestras));

function SliderMuestras_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function EditDuracion_Callback(hObject, eventdata, handles)
global duracion y amplitudArmonico1 frecuencia muestras amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2
global faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
global inicioFlicker duracionFlicker amplitudFlicker frecuenciaFlicker faseFlicker

duracion=str2double(get(hObject,'string'));
set(handles.SliderDuracion,'value',duracion);
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
grid on;
xlabel('Tiempo');
ylabel('Amplitud');

function EditDuracion_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function EditFrecuencia_Callback(hObject, eventdata, handles)
global amplitudArmonico1 y frecuencia muestras duracion amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2
global faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
frecuencia=str2double(get(hObject,'string'));
set(handles.SliderFrecuencia,'value',frecuencia);
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

function EditFrecuencia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function EditMuestras_Callback(hObject, eventdata, handles)
global amplitudArmonico1 y frecuencia muestras duracion amplitudArmonico2 amplitudArmonico3 amplitudArmonico4 amplitudArmonico5 amplitudArmonico6 amplitudArmonico7 amplitudArmonico8 amplitudArmonico9 amplitudArmonico10 faseArmonico1 faseArmonico2
global faseArmonico3 faseArmonico4 faseArmonico5 faseArmonico6 faseArmonico7 faseArmonico8 faseArmonico9 faseArmonico10
global amplitudArmonicoPrevio1 amplitudArmonicoPrevio2 amplitudArmonicoPrevio3 amplitudArmonicoPrevio4 amplitudArmonicoPrevio5 amplitudArmonicoPrevio6 amplitudArmonicoPrevio7 amplitudArmonicoPrevio8 amplitudArmonicoPrevio9 amplitudArmonicoPrevio10 faseArmonicoPrevio1 faseArmonicoPrevio2 faseArmonicoPrevio3
global faseArmonicoPrevio4 faseArmonicoPrevio5 faseArmonicoPrevio6 faseArmonicoPrevio7 faseArmonicoPrevio8 faseArmonicoPrevio9 faseArmonicoPrevio10
muestras=str2double(get(hObject,'string'));
set(handles.SliderMuestras,'value',muestras);
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

function EditMuestras_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Grafica_ButtonDownFcn(hObject, eventdata, handles)
