clc,clear
disp(['MATLAB FOR MACHINE VISION SYSTEM']);
disp(['Coded by Muhammad Hurricane 1906356191']);
disp(['reach me out: < muhammad.hurricane@gmail.com >']);
disp(['              < github.com/HurrCN >']);
disp(['Topic       : Series Approximation']);
disp(['Last Update : Mar 16, 2023']);
disp(['     ']);

disp(['Welcome to Hurricane Series Approximation Calculator']);
disp(['Suppose we have cos(x) = 1 - (x^2)/2! + (x^4)/4! + ... as mentioned by Prof Ario SB']);
disp(['Please enter the information you want to inspect for the approximated value of cos(x)']);
disp(['        ']);

% Input the angle
deg = input(">> Angle of x = ");
% Turn the angle from degree to radiant
x = deg2rad(deg);
% Input the number of series
n = input(">> Series of n = ");
% Given the initial value of approximated cos(x)
cosinus = 1;
% Calculate the exact solution of cos(x)
cosReal = cosd(deg);

disp(['        ']);
disp(['Here is the result']);

% Iteration begin!
for i=1:(n-1)
  % Initial value for factorial
  factr = 1;
  % Factorial Function
  for j=1:2*i
    factr = factr*j;
  end
  % Iterate new series
  newCos = ((-1)^(i)) * (x^(2*i))/factr;
  % Collect the sum of the previous and new series together
  cosinus = cosinus + newCos;
  % Find out how much the error percentage
  err = single(abs((cosinus-cosReal)/cosReal)*100);
  % Display the result
  disp(['num = ', num2str(cosinus), ' | anl = ', num2str(cosReal),...
        ' | error = ', num2str(err), '%']);
end

