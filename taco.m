%1
N1 = factorial(20)/(factorial(5)*factorial(20-5));
str1 = 'The number of 5 salsa combinations that can be made is: ';
disp([str1, num2str(N1)])

%2
N2 = factorial(11)/(factorial(3)*factorial(11-3))*factorial(9)/(factorial(2)*factorial(9-2));
str2 = 'The number of 5 salsa combinations with 3 hot salsas and 2 mild salsas that can be formed is: ';
disp([str2, num2str(N2)])