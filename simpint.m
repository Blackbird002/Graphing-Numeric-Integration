function [Sn] = simpint(f,a,b,n)
  %Checks to see if n is even
  if(mod(n,2) != 0)
    n = n+1;
    disp('n was odd, so I added 1 to n')
  end %if
  x = linspace(a,b,n+1);
  y = f(x);
  dx = (b-a)./ n;
  y(2:2:end-1) = 4 .* y(2:2:end-1);
  y(3:2:end-2) = 2 .* y(3:2:end-2);
  Sn = (dx ./3) .* sum(y);
end % simpint function