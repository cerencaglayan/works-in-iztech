function transformationMatrix = ROTY(theta)
    % Convert degrees to radians
    theta = deg2rad(single(theta));

    % Create a rotation matrix
    R = [cos(theta) 0 sin(theta) 0;
         0 1 0 0;
         -sin(theta) 0 cos(theta) 0;
         0 0 0 1];

    % The homogeneous transformation matrix
    transformationMatrix = eye(4);
    transformationMatrix = R;
    
end
