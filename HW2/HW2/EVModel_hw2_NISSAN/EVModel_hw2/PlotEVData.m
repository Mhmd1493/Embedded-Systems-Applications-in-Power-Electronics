figure(1);

subplot(3,1,1);
hold on;
plot(Ebatt.time/60, Ebatt.signals.values(:,1), 'b', 'LineWidth', 1.5);
legend('Ebatt [kWh]');
ylabel('Battery Energy Consumed [kWh]');
set(gca, 'XTickLabel', []);
grid on;

subplot(3,1,2);
hold on;
legend('SOC [%]');
plot(SOC.time/60, SOC.signals.values(:,1), 'b', 'LineWidth', 1.5);
ylabel('Battery SOC [%]');
grid on;

subplot(3,1,3);
hold on;
plot(MPGe.time/60, MPGe.signals.values(:,1), 'b', 'LineWidth', 1.5);
ylabel('Distance over energy [MPGe]');
xlabel('time [min]');
grid on;


figure(3);
hold on;
contour(motoreff_w, motoreff_T, motoreff);
plot(speeds.signals.values(:,2)/rw*gratio*.44704, Forces.signals.values(:,1)*rw/gratio,'k', 'LineWidth', 3);
xlabel('Motor Angular Speed [rad/s]');
ylabel('Motor Torque [Nm]');
legend('Motor Efficiency','Drive cycle');

