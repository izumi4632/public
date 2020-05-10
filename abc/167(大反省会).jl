n,m,x=parse.(Int,split(readline()))
l=vcat([(x->parse(Int,x)).(split(i))' for i in readlines()]...)
p=[[i...] for i=Iterators.product(fill(0:1,n)...)]
suml=[l'*i for i in p][:]
ans=[i[1] for i=suml if all(z->z>=x,i[2:end])]
print(length(ans)==0 ? -1 : minimum(ans))