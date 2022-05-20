function varargout = kuis22(varargin)
% KUIS22 MATLAB code for kuis22.fig
%      KUIS22, by itself, creates a new KUIS22 or raises the existing
%      singleton*.
%
%      H = KUIS22 returns the handle to a new KUIS22 or the handle to
%      the existing singleton*.
%
%      KUIS22('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KUIS22.M with the given input arguments.
%
%      KUIS22('Property','Value',...) creates a new KUIS22 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kuis22_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kuis22_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kuis22

% Last Modified by GUIDE v2.5 20-May-2022 09:22:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kuis22_OpeningFcn, ...
                   'gui_OutputFcn',  @kuis22_OutputFcn, ...
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


% --- Executes just before kuis22 is made visible.
function kuis22_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kuis22 (see VARARGIN)

% Choose default command line output for kuis22
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kuis22 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kuis22_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in calc_098.
function calc_098_Callback(hObject, eventdata, handles)
dataset = csvread('laptop_price.csv', 52, 101);
k = [1,1,0,0];
weight = [1,3,2,4];

[m n] = size(dataset);

x = zeros(m,n);
y = zeros(m,n);

for j=1:n,
    if k(j) == 1,
        x(:,j) = x(:,j)./ max(x(:,j));
    else,
        x(:,j) = min(x(:,j))./x(:,j);
    end;
end;

for i = 1:m,
    V(i) = sum(w.*x(i,:));
end;
% --- Executes during object creation, after setting all properties.
function calc_098_CreateFcn(hObject, eventdata, handles)
% hObject    handle to calc_098 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in set_098.
function set_098_Callback(hObject, eventdata, handles)
dataset = readcell('laptop_price.csv','Range','B52:M101');
header = readcell('laptop_price.csv','Range','B1:M1');
set(handles.uitable_098,'Data',dataset,'ColumnName',header);
% hObject    handle to set_098 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
