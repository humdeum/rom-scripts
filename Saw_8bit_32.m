x = linspace(0,2*pi,32);
%s = round((16^2-1)/2.*(sin(x)+1));
s = round(linspace(0,255,32));
N = length(s);

fprintf('signal rom : rom_type := (')
for n=1:N
    fprintf('X"%02X"',s(n))
    if (n==N)
        fprintf(');\n')
    else
        fprintf(',')
    end
end