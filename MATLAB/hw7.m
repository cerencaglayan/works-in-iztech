% Problem 2
load map1;

radius = 5;
center_x = 75;
center_y = 60;


for i = 1:size(map, 1)
    for j = 1:size(map, 2)
        if ((i - center_y)^2 + (j - center_x)^2) <= radius^2
            map(i, j) = 1; 
        end
    end
end


% vertices of triangle : points: (45,5) , (50,15) , (55,5)
polygon_vertices_x = [45, 50, 55]; 
polygon_vertices_y = [5, 15, 5]; 

[X, Y] = meshgrid(1:size(map, 2), 1:size(map, 1));

in_polygon = inpolygon(X, Y, polygon_vertices_x, polygon_vertices_y);
map(in_polygon) = 1; 

bug = Bug2(map);
bug.goal = [55; 40];

figure;
hold on;
imagesc(map);
colormap('gray');  
title('After the Obstacles Added');

path = bug.path([30; 5]);

plot(path(:,1), path(:,2), "r" ,'LineWidth', 2);

hold off;

%%%%%%%%%%%%%%%%%%%%
