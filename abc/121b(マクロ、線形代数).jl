macro p(a);:((x->parse(Int,x)).(split($a)));end
n,m,c=@p(readline())
b=@p(readline())
a=vcat([@p(i)' for i in readlines()]...)
print(count(x->x>-c,a*b))