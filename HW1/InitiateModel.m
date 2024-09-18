%%ECEN5017 Introduction to MATLAB/Simulink
% definition of simulation and model parameters 
% for the model in VehicleDynamics2.mdl

%% Simulation Parameters
tstop = 20;                 % simulation run time [sec]
tstep = .1;                 % maximum simulation step [sec]

%% Vehicle model parameters
Mv = 1620;                  % Vehicle curb weight [kg] + 250 kg passenger and cargo
rw = 0.4;% wheel radius [m]    %% r=v/w   
Cd = 0.29;                  % drag coefficient	    
Cr = 0.01;                  % rolling resistance coefficient    
Av = 2.75;                  % Front area [m^2]
rho_air = 1.204;            % Air density [kg/m^3]

%% Electric Motor Parameters
eff=1;
Pe_max = 80e3;             % Maximum Motor Power [W] (225 kW)
Pe_max = Pe_max*eff;
VbaseMPH = 30;  % Base speed [mph]
Vbase = VbaseMPH*0.44704;   % Base speed [m/s]
Fe_max = Pe_max/Vbase ;     % Maximum force [N]
