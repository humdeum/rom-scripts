x = linspace(0,2*pi,32);
s = round((2^8-1)/2.*(sin(x)+1));
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