mdl_puma560;

% part(a) and part(b)
q = [deg2rad(30), deg2rad(20), deg2rad(-35), deg2rad(45), deg2rad(10), deg2rad(20)];
T_desired = transl([0.1, 0.5, -0.25]);

%Forward Kinematics for Part (a) ve part (b) 
T_initial = p560.fkine(q);
initial_position = transl(T_initial);

% Joint trajectory creation
trajectory = jtraj(q, p560.ikine6s(T_desired), linspace(0, 1, 100));

% Plot the trajectory
p560.plot(trajectory, 'trail', 'r-');
title('Part(c) for Question1: Joint Trajectory');