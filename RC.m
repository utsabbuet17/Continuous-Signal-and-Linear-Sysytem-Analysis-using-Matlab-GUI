function varargout = RC(varargin)
% RC MATLAB code for RC.fig
%      RC, by itself, creates a new RC or raises the existing
%      singleton*.
%
%      H = RC returns the handle to a new RC or the handle to
%      the existing singleton*.
%
%      RC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RC.M with the given input arguments.
%
%      RC('Property','Value',...) creates a new RC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RC

% Last Modified by GUIDE v2.5 14-Sep-2019 13:49:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RC_OpeningFcn, ...
                   'gui_OutputFcn',  @RC_OutputFcn, ...
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


% --- Executes just before RC is made visible.
function RC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RC (see VARARGIN)

% Choose default command line output for RC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_impulse.
function push_impulse_Callback(hObject, eventdata, handles)
% hObject    handle to push_impulse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=get(handles.edit_R,'string');
c=get(handles.edit_C,'string');
R=str2num(r);
C=str2num(c);
t=-5:0.001:5;
y=impulse_response_0(t,R*C,1,0,1);
axes(handles.axes2)
plot(t,y)

% --- Executes on button press in push_RC_Circuit.
function push_RC_Circuit_Callback(hObject, eventdata, handles)
% hObject    handle to push_RC_Circuit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
imshow('Capture3.JPG')



function edit_R_Callback(hObject, eventdata, handles)
% hObject    handle to edit_R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_R as text
%        str2double(get(hObject,'String')) returns contents of edit_R as a double


% --- Executes during object creation, after setting all properties.
function edit_R_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_C_Callback(hObject, eventdata, handles)
% hObject    handle to edit_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_C as text
%        str2double(get(hObject,'String')) returns contents of edit_C as a double


% --- Executes during object creation, after setting all properties.
function edit_C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
