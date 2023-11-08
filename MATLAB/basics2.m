alpha = pi/3 % 60 degrees

R = [cos(alpha), -sin(alpha);
     sin(alpha), cos(alpha)];

% code
figure;
trplot2(R, 'frame', 'P');
title('2D Rotation Matrix for alpha = pi/3');


vector = [1; 1]; 

rotated_vector = R * vector;


R_inverse = inv(rotated_vector);

result1 = R_inverse * R;
result2 = R * R_inverse;

	% Determinant of the original matrix
det_R = det(R);

% Determinant of the inverse matrix
det_R_inverse = det(R_inverse);

result1
result2
det_R
det_R_inverse

