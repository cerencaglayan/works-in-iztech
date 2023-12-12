V = diag([0.005, 0.5*pi/180].^2);
veh = Vehicle(V);
veh.add_driver( RandomPath(10) );
veh.run();
P0 = diag([0.000, 0.000, 0.000].^2);

ekf_1200 = EKF(veh, V, P0);
ekf_1200.run(1200);

ekf_1000 = EKF(veh, V, P0);
ekf_1000.run(1000);

figure;
hold on;
veh.plot_xy('b','DisplayName', 'Vehicle');
ekf_1200.plot_xy('r','DisplayName', 'EKF 1200');
ekf_1000.plot_xy('g','DisplayName', 'EKF 1000');
legend("show");
hold off;

figure;
hold on;
ekf_1200.plot_xy('r');
ekf_1200.plot_ellipse([], 'b');
title("EKF (1200)")
hold off;

