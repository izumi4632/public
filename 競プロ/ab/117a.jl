macro p(a);:((x->parse(BigFloat,x)).(split($a)));end
a,b=@p(readline())
print(a/b)