function mp_prob5 (x)

n = 0:199;
x = input('Please enter a value as x(n): ');
y = zeros (1, length(x));

for i = 0:199
    if i == 0
        y(i+1) = -1.5*x(i+1) + 2*x(i+2) - 0.5*x(i+3);
    elseif ((0 < i) && (i < 199))
        y(i+1) = 0.5*x(i+2) -0.5*x(i);
    elseif i == 199
        y(i+1) = 1.5*x(i+1) - 2*x(i) + 0.5*x(i-1);
    end
end

plot(n, x, '-r', n, y, '-g')
legend('y(n)', 'x(n)')
xlim([0 199])