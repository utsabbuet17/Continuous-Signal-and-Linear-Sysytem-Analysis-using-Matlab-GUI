function varargout = even_odd(varargin)
% EVEN_ODD MATLAB code for even_odd.fig
%      EVEN_ODD, by itself, creates a new EVEN_ODD or raises the existing
%      singleton*.
%
%      H = EVEN_ODD returns the handle to a new EVEN_ODD or the handle to
%      the existing singleton*.
%
%      EVEN_ODD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EVEN_ODD.M with the given input arguments.
%
%      EVEN_ODD('Property','Value',...) creates a new EVEN_ODD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before even_odd_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to even_odd_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help even_odd

% Last Modified by GUIDE v2.5 14-Sep-2019 12:55:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @even_odd_OpeningFcn, ...
                   'gui_OutputFcn',  @even_odd_OutputFcn, ...
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


% --- Executes just before even_odd is made visible.
function even_odd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to even_odd (see VARARGIN)

% Choose default command line output for even_odd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes even_odd wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = even_odd_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_even.
function push_even_Callback(hObject, eventdata, handles)
% hObject    handle to push_even (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z=get(handles.given_signal,'string');
t=-5:.001:5;
p=eval(z);
t=5:-.001:-5;
z1=eval(z);

odd=.5*(p+z1);
axes(handles.axes2);
t=-5:.001:5;
plot(t,odd)


% --- Executes on button press in push_odd.
function push_odd_Callback(hObject, eventdata, handles)
% hObject    handle to push_odd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z=get(handles.given_signal,'string');
t=-5:.001:5;
p=eval(z);
t=5:-.001:-5;
z1=eval(z);

odd=.5*(p-z1);
axes(handles.axes3);
t=-5:.001:5;
plot(t,odd)


function given_signal_Callback(hObject, eventdata, handles)
% hObject    handle to given_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of given_signal as text
%        str2double(get(hObject,'String')) returns contents of given_signal as a double


% --- Executes during object creation, after setting all properties.
function given_signal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to given_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_given_signal.
function push_given_signal_Callback(hObject, eventdata, handles)
% hObject    handle to push_given_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z=get(handles.given_signal,'string');
t=-5:.001:5;
axes(handles.axes1)
plot(t,eval(z))
