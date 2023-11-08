% Import the Robotics Toolbox

function transformationMatrix = ROTX(theta)

    % Convert degrees to radians
    theta = deg2rad(theta);

    % Create a rotation matrix
    R = [1, 0, 0, 0;
         0, cos(theta), -sin(theta), 0;
         0, sin(theta), cos(theta), 0;
         0, 0, 0, 1];

    % The homogeneous transformation matrix
    transformationMatrix = eye(4);
    transformationMatrix(1:3, 1:3) = trotx(theta);
    
end

% Example usage for theta = 25 degrees:

