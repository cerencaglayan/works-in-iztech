load map1
ds = Dstar(map);

start = [30, 5];
goal = [55, 40];

ds.plan(goal);
initial_path = ds.path(start);

penalty_box_x = [12, 45];
penalty_box_y = [78, 85];

for y = penalty_box_y(1):penalty_box_y(2)
    for x = penalty_box_x(1):penalty_box_x(2)
        ds.modify_cost([x, y], 2);
    end
end

ds.plan();
new_path = ds.path(start);

polygon_vertices_x_world = [12;45]; 
polygon_vertices_y_world = [85;78];

polygon_vertices_x_map = round(polygon_vertices_x_world);
polygon_vertices_y_map = round(polygon_vertices_y_world);

% Plot map
figure;
hold on;
imagesc(map);
colormap('gray');
title('Map with Penalty Box In D* Algorithm');

bp = plot(initial_path(:, 1), initial_path(:, 2), 'g', 'LineWidth', 2);
ap = plot(new_path(:, 1), new_path(:, 2), 'r', 'LineWidth',2);

plot(start(1), start(2), 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'g');
plot(goal(1), goal(2), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

plot([polygon_vertices_x_map(1), polygon_vertices_x_map(2), polygon_vertices_x_map(2), polygon_vertices_x_map(1), polygon_vertices_x_map(1)], ...
     [polygon_vertices_y_map(1), polygon_vertices_y_map(1), polygon_vertices_y_map(2), polygon_vertices_y_map(2), polygon_vertices_y_map(1)], ...
     'r', 'LineWidth', 2);

legend([bp, ap],"Path before penalty box","After penalty box");
hold off;

