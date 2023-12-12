map = Map(20, 10);
W = diag([0.1, 1*pi/180].^2);

V = diag([0.005, 0.5*pi/180].^2);
veh = Vehicle(V);
veh.add_driver( RandomPath(map.dim) );
sensor = RangeBearingSensor(veh, map, W);
P0 = diag([0.000, 0.000, 0.000].^2);
ekf = EKF(veh, V, P0, sensor, W, map);
ekf.run(1200);

figure;
hold on;
map.plot();
veh.plot_xy("b");
ekf.plot_xy('r');
ekf.plot_ellipse([], 'k');
hold off;


figure;
hold on;
ekf.plot_P();
hold off;

