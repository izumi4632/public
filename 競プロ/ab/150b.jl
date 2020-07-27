n=parse(Int,readline())
s=chomp(readline())
l=[s[i:i+3] for i in 1:n-3]
print(count(x->x=="ABC",l))