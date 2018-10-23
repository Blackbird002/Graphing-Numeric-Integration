function [Mn] = midint(f,a,b,n)
  dx = (b-a)./n;
  x = linspace(a + dx./2 , b - dx/2, n);
  y = f(x);
  Mn = dx .* sum(y);
end % midint function
  