function [area] = integrate(f,a,b,n,type)
  t  = linspace(a,b,50);
  plot(t,f(t),'r','LineWidth', 3);
  hold on;
  %Plots the x and y axis
  xL = xlim;
  yL = ylim;
  line([0 0], yL);  %x-axis
  line(xL, [0 0]);  %y-axis
  hold on;
  switch type
    case 'left'
      area = leftint(f,a,b,n);
      x = linspace(a,b,n+1);
      y = f(x);
      title(['Area = ', num2str(area)])
      for i = (1:1:n)
        rx = [x(i), x(i), x(i+1), x(i+1)];
        ry = [0,y(i),y(i),0];
        plot(rx,ry,'b');
      end
    case 'right'
      area = rightint(f,a,b,n);
      x = linspace(a,b,n+1);
      y = f(x);
      title(['Area = ', num2str(area)])
      for i = (1:1:n)
        rx = [x(i), x(i), x(i+1), x(i+1)];
        ry = [0,y(i+1),y(i+1),0];
        plot(rx,ry,'b');  
      end
    case 'trap'
      area = trapint(f,a,b,n);
      x = linspace(a,b,n+1);
      y = f(x);
      title(['Area = ', num2str(area)])
      for i = (1:1:n)
        rx = [x(i), x(i), x(i+1), x(i+1)];
        ry = [0,y(i),y(i+1),0];
        plot(rx,ry,'b');
      end
    case 'mid'
      area = midint(f,a,b,n);
      x = linspace(a,b,n+1);
      y = f(x);
      dx = (b-a)./n;
      half = dx ./2;
      title(['Area = ', num2str(area)])
      for i = (1:1:n)
        rx = [x(i), x(i), x(i+1), x(i+1)];
        ry = [0,f(x(i) + half),f(x(i) + half),0];
        plot(rx,ry,'b');
      end
    case 'simp'
      area = simpint(f,a,b,n);
      x = linspace(a,b,n+1);
      y = f(x);
      title(['Area = ', num2str(area)])
      for i = (1:2:n-1)
        abc = [x(i).^2,x(i),1;x(i+1).^2,x(i+1),1;x(i+2).^2,x(i+2),1] \ [y(i);y(i+1);y(i+2)];
        points = linspace(x(i),x(i+2),50);
        rx = [x(i), x(i) , points ,x(i+2), x(i+2)];
        values = polyval(abc,points);
        ry = [0,y(i),values,y(i+2),0];
        plot(rx,ry,'b');
      end    
  end %switch
end %integrate function