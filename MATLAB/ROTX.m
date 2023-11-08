function transformationMatrix = ROTX(theta)

    % Convert degrees to radians
    theta = deg2rad(single(theta));

    % Create a rotation matrix
    R = [1 0 0 0;
         0 cos(theta) -sin(theta) 0;
         0 sin(theta) cos(theta) 0;
         0 0 0 1];

    % The homogeneous transformation matrix
    transformationMatrix = eye(4);
    transformationMatrix = trotx(theta);
    
end



