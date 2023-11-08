function transformationMatrix = ROTZ(theta)

    theta = deg2rad(single(theta));

    % Rotation matrix for Z-axis
    R = [cos(theta) -sin(theta) 0 0;
         sin(theta) cos(theta) 0 0;
         0 0 1 0;
         0 0 0 1]

    transformationMatrix = eye(4);
    transformationMatrix = R;
    
end
