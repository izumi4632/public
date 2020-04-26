n=parse(Int,readline())
s=chomp(readline())
print(count(x->x=="ABC",[s[i:i+2] for i in 1:n-2]))