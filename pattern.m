function a = q1p32(N)

numerator = N:-1:1;
denominator = 1:1:N;

pattern = numerator./denominator;

one_matrix = ones(N);
one_column = one_matrix(:,1);

a = one_column * pattern;

end
