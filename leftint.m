function [Ln] = leftint(f,a,b,n)
  x = linspace(a,b,n+1);
  y = f(x);
  dx = (b-a) ./n;
  Ln = dx .* sum(y(1:end-1));
end % leftint function