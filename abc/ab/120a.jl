function p(z);(x->parse(Int,x)).(split(z));end
a,b,c=p(readline())
print(a*c>b ? fld(b,a) : c)
