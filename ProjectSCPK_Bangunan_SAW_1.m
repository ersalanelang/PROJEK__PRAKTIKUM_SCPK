function varargout = ProjectSCPK_Bangunan_SAW_1(varargin)
% PROJECTSCPK_BANGUNAN_SAW_1 MATLAB code for ProjectSCPK_Bangunan_SAW_1.fig
%      PROJECTSCPK_BANGUNAN_SAW_1, by itself, creates a new PROJECTSCPK_BANGUNAN_SAW_1 or raises the existing
%      singleton*.
%
%      H = PROJECTSCPK_BANGUNAN_SAW_1 returns the handle to a new PROJECTSCPK_BANGUNAN_SAW_1 or the handle to
%      the existing singleton*.
%
%      PROJECTSCPK_BANGUNAN_SAW_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECTSCPK_BANGUNAN_SAW_1.M with the given input arguments.
%
%      PROJECTSCPK_BANGUNAN_SAW_1('Property','Value',...) creates a new PROJECTSCPK_BANGUNAN_SAW_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ProjectSCPK_Bangunan_SAW_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ProjectSCPK_Bangunan_SAW_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ProjectSCPK_Bangunan_SAW_1

% Last Modified by GUIDE v2.5 01-Jul-2021 19:06:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProjectSCPK_Bangunan_SAW_1_OpeningFcn, ...
                   'gui_OutputFcn',  @ProjectSCPK_Bangunan_SAW_1_OutputFcn, ...
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


% --- Executes just before ProjectSCPK_Bangunan_SAW_1 is made visible.
function ProjectSCPK_Bangunan_SAW_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ProjectSCPK_Bangunan_SAW_1 (see VARARGIN)

% Choose default command line output for ProjectSCPK_Bangunan_SAW_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

ah = axes('unit', 'normalized', 'position', [0 0 1 1]);
bg = imread('Membangu-Rumah-Foto-Utama.jpg'); imagesc(bg);
set(ah, 'handlevisibility','off','visible','off');

% UIWAIT makes ProjectSCPK_Bangunan_SAW_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ProjectSCPK_Bangunan_SAW_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
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

username = get(handles.edit1,'string');
password = get(handles.edit2,'string');
username1 = 'admin';
password1 = 'admin';
a=strcmp(username,username1);
y=strcmp(password,password1);
if a==1 && y==1
    ProjectSCPK_Bangunan_SAW_2;
    msgbox('Ok anda Berhasil Login, Selamat datang Admin');
    set(handles.username,'string','');
    set(handles.password,'string','');
    close;
else
    msgbox('Password & Id salah');
    set(handles.edit1,'string','');
    set(handles.edit2,'string','');
end;
