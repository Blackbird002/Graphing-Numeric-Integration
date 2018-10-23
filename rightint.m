function [Rn] = rightint(f,a,b,n)
  x = linspace(a,b,n+1);
  y = f(x);
  dx = (b-a)./n;
  Rn = dx .* sum(y(2:end));
end % rightint function   