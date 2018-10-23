function [Tn] = trapint(f,a,b,n)
  x = linspace(a,b,n+1);
  y = f(x);
  Z = f(x);
  dx = (b-a) ./ n;
  y(2:end-1) = 2 .* y(2:end-1);
  Tn = (dx ./2) .* sum(y);
end % trapint function 