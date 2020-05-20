readline()
print(sum(map(x->x-1,(x->parse(Int,x)).(split(readline())))))