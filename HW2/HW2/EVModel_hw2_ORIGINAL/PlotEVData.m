figure(1);

subplot(3,1,1);
hold on;
plot(speeds.time/60, speeds.signals.values(:,1), 'b', 'LineWidth', 1.5);
plot(speeds.time/60, speeds.signals.values(:,2), 'r', 'LineWidth', 1.5);
legend('Reference Speed', 'EV Speed');
ylabel('Speed [mph]');
set(gca, 'XTickLabel', []);
grid on;

subplot(3,1,2);
hold on;
plot(Forces.time/60, Forces.signals.values(:,1), 'b', 'LineWidth', 1.5);
plot(Forces.time/60, Forces.signals.values(:,2), 'r', 'LineWidth', 1.5);
legend('Drive Force', 'Resistive Force');
ylabel('Force [N]');
set(gca, 'XTickLabel', []);
grid on;

subplot(3,1,3);
hold on;
plot(dist.time/60, dist.signals.values, 'b', 'LineWidth', 1.5);
ylabel('Distance Traveled [mi]');
xlabel('time [min]');
grid on;

figure(2);

subplot(3,1,1);
hold on;
plot(P.time/60, P.signals.values(:,1), 'b', 'LineWidth', 1.5);
ylabel('Inst. Power [kW]');
set(gca, 'XTickLabel', []);
grid on;

subplot(3,1,2);
hold on;
plot(SOC.time/60, SOC.signals.values(:,1), 'b', 'LineWidth', 1.5);
ylabel('Battery SOC [%]');
xlabel('time [min]');
grid on;

subplot(3,1,3);
hold on;
plot(Iinv.time/60, Iinv.signals.values(:,1), 'b', 'LineWidth', 1.5);
plot(Ibat.time/60, Ibat.signals.values(:,1), 'r', 'LineWidth', 1.5);
legend('Inverter Input Current', 'Battery Current');
ylabel('Current [A]');
xlabel('time [min]');
grid on;


figure(3);
hold on;
contour(motoreff_w, motoreff_T, motoreff);
plot(speeds.signals.values(:,2)/rw*gratio*.44704, Forces.signals.values(:,1)*rw/gratio,'k', 'LineWidth', 3);
xlabel('Motor Angular Speed [rad/s]');
ylabel('Motor Torque [Nm]');
legend('Motor Efficiency','Drive cycle');

