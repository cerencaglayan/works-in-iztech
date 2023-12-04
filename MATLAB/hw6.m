%1
%1.a 


% model creation for puma560:
mdl_puma560;

q = [deg2rad(30), deg2rad(20), deg2rad(-35), deg2rad(45), deg2rad(10), deg2rad(20)];
T = p560.fkine(q);
end_effector_position = transl(T);

disp('End-Effector Position:');
disp(end_effector_position);

disp(T);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%1.b
% Assuming you've already defined p560 using mdl_puma560
% Create Puma 560 robot model
mdl_puma560;

desired_position = [0.1, 0.5, -0.25];

% Define the homogeneous transformation matrix for the desired position
T_desired = transl(desired_position);


ik_solutions_all = p560.ikine6s(T_desired, 'mask', [1 1 1 0 0 0], 'N', 8);

% Display all joint angle configurations that achieve the desired end point
for i = 1:size(ik_solutions_all, 1)
    disp(['Solution ', num2str(i), ': ', num2str(rad2deg(ik_solutions_all(i, :)))]);
    disp(T_desired);
end







%1.c
% Model oluşturulması
mdl_puma560;

% Part (a) için joint angles
theta1 = deg2rad(30);
theta2 = deg2rad(20);
theta3 = deg2rad(-35);
theta4 = deg2rad(45);
theta5 = deg2rad(10);
theta6 = deg2rad(20);
q_initial = [theta1, theta2, theta3, theta4, theta5, theta6];

% Part (b) için hedef pozisyon
desired_position = [0.1, 0.5, -0.25];
T_desired = transl(desired_position);

% Part (a) ve part (b) için forward kinematics
T_initial = p560.fkine(q_initial);
initial_position = transl(T_initial);

% Joint trajectory oluşturulması
trajectory = jtraj(q_initial, p560.ikine6s(T_desired), linspace(0, 1, 50));

% Plot the trajectory
p560.plot(trajectory, 'trail', 'r-');
title('Joint Trajectory from Initial to Desired Position');

%1.d
% Model oluşturulması
mdl_puma560;

% Başlangıç açıları
initial_theta = [0, deg2rad(90), deg2rad(25), 0, deg2rad(30), deg2rad(20)];

% Tork vektörü
torque_vector = [1, 0, 0, 0, 0, 0.5];

% Zaman aralığı
time_interval = [0, 10];

% Simülasyon parametreleri
time_step = 0.1; % adım boyutu

% Trajectory için eklemleri saklamak için değişkenleri başlat
trajectory_points = zeros(length(time_interval(1):time_step:time_interval(2)), 6);

% Puma 560'ı belirli bir zaman aralığında simüle et
index = 1;
for t = time_interval(1):time_step:time_interval(2)
    % Forward dynamics kullanarak eklemleri güncelle
    qdd = p560.accel(initial_theta, zeros(1, 6), torque_vector);
    initial_theta = initial_theta + time_step * qdd;
    
    % Trajectory için eklemleri sakla
    trajectory_points(index, :) = initial_theta;
    index = index + 1;
end

% 3-D trajectory'i çiz
p560.plot(trajectory_points, 'trail', 'r-');
title('Puma 560 3-D Trajectory');
