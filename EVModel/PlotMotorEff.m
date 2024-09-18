load MotorEff;

surf(motoreff_w, motoreff_T, motoreff);
xlabel('Motor Angular Speed [rad/s]');
ylabel('Motor Torque [Nm]');
zlabel('Efficiency');
title('Example Electric Motor Efficiency')

display('Motor efficiency at w = 100 rad/sec and T = 50 Nm is:');
display(motoreff_func_leaf(100,50));
