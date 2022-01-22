function varargout = causal(varargin)
% CAUSAL MATLAB code for causal.fig
%      CAUSAL, by itself, creates a new CAUSAL or raises the existing
%      singleton*.
%
%      H = CAUSAL returns the handle to a new CAUSAL or the handle to
%      the existing singleton*.
%
%      CAUSAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CAUSAL.M with the given input arguments.
%
%      CAUSAL('Property','Value',...) creates a new CAUSAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before causal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to causal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help causal

% Last Modified by GUIDE v2.5 14-Sep-2019 20:00:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @causal_OpeningFcn, ...
                   'gui_OutputFcn',  @causal_OutputFcn, ...
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


% --- Executes just before causal is made visible.
function causal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to causal (see VARARGIN)

% Choose default command line output for causal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes causal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = causal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function my_signal_Callback(hObject, eventdata, handles)
% hObject    handle to my_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of my_signal as text
%        str2double(get(hObject,'String')) returns contents of my_signal as a double


% --- Executes during object creation, after setting all properties.
function my_signal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to my_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function causal_Callback(hObject, eventdata, handles)
% hObject    handle to causal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of causal as text
%        str2double(get(hObject,'String')) returns contents of causal as a double


% --- Executes during object creation, after setting all properties.
function causal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to causal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_causal.
function push_causal_Callback(hObject, eventdata, handles)
% hObject    handle to push_causal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=-10:.001:-.0001;
f=get(handles.my_signal,'string');
z=eval(f);
if (z==0)
    set(handles.causal,'string','causal')
else
    set(handles.causal,'string','non-causal')
end



function stable_Callback(hObject, eventdata, handles)
% hObject    handle to stable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stable as text
%        str2double(get(hObject,'String')) returns contents of stable as a double


% --- Executes during object creation, after setting all properties.
function stable_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_stable.
function push_stable_Callback(hObject, eventdata, handles)
% hObject    handle to push_stable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=get(handles.my_signal,'string');
syms t;
z=eval(f);
e=int(z,-Inf,Inf)
if(e~=Inf && e~=-Inf)
    set(handles.stable,'string','stable')
else set(handles.stable,'string','unstable')
end
