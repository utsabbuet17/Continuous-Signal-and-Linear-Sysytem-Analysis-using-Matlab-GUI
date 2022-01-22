function varargout = convolution(varargin)
% CONVOLUTION MATLAB code for convolution.fig
%      CONVOLUTION, by itself, creates a new CONVOLUTION or raises the existing
%      singleton*.
%
%      H = CONVOLUTION returns the handle to a new CONVOLUTION or the handle to
%      the existing singleton*.
%
%      CONVOLUTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONVOLUTION.M with the given input arguments.
%
%      CONVOLUTION('Property','Value',...) creates a new CONVOLUTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before convolution_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to convolution_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help convolution

% Last Modified by GUIDE v2.5 11-Sep-2019 21:00:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @convolution_OpeningFcn, ...
                   'gui_OutputFcn',  @convolution_OutputFcn, ...
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


% --- Executes just before convolution is made visible.
function convolution_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to convolution (see VARARGIN)

% Choose default command line output for convolution
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes convolution wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = convolution_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function receive_1_Callback(hObject, eventdata, handles)
% hObject    handle to receive_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of receive_1 as text
%        str2double(get(hObject,'String')) returns contents of receive_1 as a double


% --- Executes during object creation, after setting all properties.
function receive_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to receive_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function receive_2_Callback(hObject, eventdata, handles)
% hObject    handle to receive_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of receive_2 as text
%        str2double(get(hObject,'String')) returns contents of receive_2 as a double


% --- Executes during object creation, after setting all properties.
function receive_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to receive_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f1=get(handles.receive_1,'string')

f2=get(handles.receive_2,'string')

t=-5:.001:5;
z=conv(eval(f1),eval(f2));
max1=max(z);
z1=z/max1;
t1=-10:.001:10;
axes(handles.axes1);
plot(t1,z1)
axes(handles.axes2);

plot(t,eval(f1));
axes(handles.axes3);

plot(t,eval(f2));
%ylim([-10 10]);
%xlim([-5 5]);
