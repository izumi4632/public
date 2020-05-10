n,m,x=parse.(Int,split(readline()))
l=vcat([(x->parse(Int,x)).(split(i))' for i in readlines()]...)
ans=[i[1] for i=[l'*i for i in [[i...] for i=Iterators.product(fill(0:1,n)...)]][:] if all(z->z>=x,i[2:end])]
print(length(ans)==0 ? -1 : minimum(ans))