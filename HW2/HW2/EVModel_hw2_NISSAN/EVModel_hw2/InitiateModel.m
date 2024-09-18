%% load driving cycles
thisPath = strrep(mfilename('fullpath'),mfilename,'');
addpath([thisPath 'images']);
addpath([thisPath 'drivingCycles']);
load eudc;                  % simulation time: 1200
load us06;                  % simulation time: 600 
load udds;                  % simulation time: 1380
load hwy;                   % simulation time: 780
load mph60;                 % simulation time: 10000


%% Simulation Parameters
tstop = 1200;                 % simulation run time [sec]
tstep = .01;                % maximum simulation step [sec]

%% Driver model parameters
Ti = 50;                    % integral time constant
Kv = 650;                   % proportional gain 

%% Transmission Parameters
gratio = 7.94;              % Transmission reduction ratio

%% Wheel Parameters
rw = 0.4;                   % wheel radius [m]      

%% Battery Model Parameters
Capacity = 24e3*60*60;       % Battery pack capacity [J] = Wh*60*60
SOC_0 = 100;                % Initial battery state of charge [%]
Vbat = 300;                 % battery pack nominal voltage [V]

%% Electric Motor Parameters
load MotorEff;              % Electric Motor Efficiency Data
Ke = 0.407;                 % Torque Constant [Nm/A]
Pe_max = 80e3;              % Maximum Motor Power [W]
Vbase = 32*0.44704;         % Base speed [m/s] = MPH * 0.44704
Te_max = Pe_max*rw/gratio/Vbase;    % Maximum motor torque [Nm]
Fv_max = Te_max*gratio/rw;    % Maximum vehicle tractive force [N]
VbaseMPH = Vbase/0.44704;   % Base speed [mph]

%% DC-DC Converter Parameters
eta_DC = .98;               % DC-DC Converter Efficiency (constant)
Vbus_ref = 500;             % DC Bus Voltage Reference (constant) [V]

%% Inverter Parameters
eta_inv = .95;              % Inverter Efficiency (constant)

%% Vehicle physical parameters
Mv = 1620; % Vehicle curb weight + 250 kg passenger and cargo
Cd = 0.29;                  % Coefficient of Drag	    
Cr = 0.01;                  % Coefficient of Friction   
Av = 2.75;                  % Front area [m^2]
rho_air = 1.204;            % Air density [kg/m^3]


