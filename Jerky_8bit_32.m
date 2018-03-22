%x = linspace(0,2*pi,32);
x = linspace(-2,2,16);
%s(1:16) = round(linspace(0,255,16));
%s(17:32) = round(linspace(255,0,16));
s = round(2^8/2 * ([exp(-x.^2) -exp(-x.^2)] + 1));
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