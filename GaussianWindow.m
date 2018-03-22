b = 4;
s = zeros(1,2^b);
for w=0:b
  N = length(s);
  fprintf('variable G%d : G_type := (\n  ',w)
  for n=1:N
    fprintf('X"%02X"',s(n))
    if (n==N)
      fprintf(');\n')
    else
      fprintf(',')
      if (0==mod(n,8))
         fprintf('\n  ') 
      end
    end
  end
  x = linspace(-2,2,2^(w+1));
  s(1:length(x)) = round(2^8 * exp(-x.^2));  
end