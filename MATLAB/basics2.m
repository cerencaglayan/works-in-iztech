% Initialize D* algorithm with map
ds = Dstar(map);

% Define initial and goal points
start = [30, 5];
goal = [55, 40];

% Plan initial path
ds.plan(goal);
initial_path = ds.path(start);

% Define penalty box area
penalty_box_x = 12:45;
penalty_box_y = 78:85;

% Modify costs within the penalty box
for y = penalty_box_y
    for x = penalty_box_x
        ds.modify_cost([x, y], 2);
    end
end

% Re-plan after penalty box modification
ds.plan();

% Generate new path after penalty box
new_path = ds.path(start);

% Display results
disp('Initial path:');
disp(initial_path);
disp('New path with penalty box:');
disp(new_path);

% Visualization (might not accurately depict cost map due to limitations)
figure;

imshow(map); % Display the map
hold on;


% Plot initial path
plot(initial_path(:, 1), initial_path(:, 2), 'g', 'LineWidth', 2);

% Plot new path with penalty box
plot(new_path(:, 1), new_path(:, 2), 'r', 'LineWidth', 2);

% Plot penalty box area
rectangle('Position', [min(penalty_box_x), min(penalty_box_y), ...
    max(penalty_box_x) - min(penalty_box_x), max(penalty_box_y) - min(penalty_box_y)], ...
    'EdgeColor', 'blue', 'LineWidth', 2);

% Mark start and goal points
plot(start(1), start(2), 'go', 'MarkerSize', 10, 'LineWidth', 2); % Starting point
plot(goal(1), goal(2), 'ro', 'MarkerSize', 10, 'LineWidth', 2); % Goal point

title('D* Navigation with Penalty Box');

hold off;