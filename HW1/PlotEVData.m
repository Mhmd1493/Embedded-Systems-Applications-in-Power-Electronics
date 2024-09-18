%%ECEN5017 Introduction to MATLAB/Simulink
% Plotting simulation results 

clf;
figure(1);

subplot(2,1,1);
plot(speed.time, speed.signals.values(:,1), 'b', 'LineWidth', 2);
ylabel('Speed [mph]');
xlabel('Time [s]');
grid on;

subplot(2,1,2);
hold on;
plot(force.time, force.signals.values(:,1), 'b', 'LineWidth', 2);
ylabel('Propulsion Force [N]');
xlabel('Time [s]');
grid on;

t60 = find(speed.signals.values>60,1);
disp('Acceleration time:');
disp(speed.time(t60));

t80 = find(speed.signals.values>80,1);
disp('Acceleration time 60 to 80:');
disp(speed.time(t80)-speed.time(t60));
