x = linspace(0,2*pi,32);
%s = round((16^2-1)/2.*(sin(x)+1));
%s = round(linspace(0,255,32));
s(1:16) = 0;
s(17:32) = 1;
s = (2^8-1)*s;
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