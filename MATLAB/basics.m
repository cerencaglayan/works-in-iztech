% matlab basics

% array tanımlama

text = [1 2 3 4];


% matrix tanımlama

b = [1 2 3; 4 5 6; 7 8 9]

% some functions for matrix creation:

onesmatrix = ones(3, 4); % Creates a 3x4 matrix filled with ones.

zerosmatrix = zeros(2, 2); % Creates a 2x2 matrix filled with zeros.

randmatrix = rand(4,5); % Creates a 4x5 matrix filled with random values.

%{
 Array operations:
For addition:

a = a + 10

sin(a)

a' -> Transpose of matrix

-Multiplication of Matrix-


p = a * inv(a)

 p results I matrix. However, numbers are in a floating point way. For more
sensitivity, use "format long" as a numeric type.

-> For element-wise multiplication (rather than matrix way):

p=a.*a

-> a.^3 returns the matrix that raise each element of a to the 3rd power.

------------------------------------------

Concatination

A = [a,a] or A = [a;a] if horizantal way wanted.

-----------------------------------------------
%}

% Matrix indexing  

b(2,3); % row, coloumn

b(8); % kacinci item ise

b(1:3,2); % first three rows and second coloumn

b(2,:);  % all elements in 2nd row


%Strings

texts = "Hello, World!";

texts = texts + 56 + " kere!";

% !!! whos ile workspace variableları ve variable bilgileri görüntülenir.

whos

whos texts


% Function calling 

max(a)

disp("Ceren") % it is like print() in Python.

clc % for clearing the command window

% Creating plots 

% -2D-

x = linspace(0,2*pi);
y = sin(x);
xlabel("x")
ylabel("sin(x)")
title("Plot of the Sine Function")
plot(x,y)

% Note: linspace() defines array of range or sth
% for adding plots to existing figure, use "hold on/off".


hold on

y2 = cos(x);
plot(x,y2,":")
legend("sin","cos")

hold off

% -3D-


x = linspace(-2,2,20);
y = x';
z = x .* exp(-x.^2 - y.^2);
%surf(x,y,z)


% NOTE: for multiple plot -> use subplot() or tiledlayout() [call "nexttile" for each plot]



%Loop example

N = 100;
f(1) = 1;
f(2) = 1;

for n = 3:N
    f(n) = f(n-1) + f(n-2);
end
f(1:10);


num = randi(100)
if num < 34
   sz = 'low'
elseif num < 67
   sz = 'medium'
else
   sz = 'high'
end

