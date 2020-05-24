c=vcat([(x->parse(Int,x)).(split(i))' for i in readlines()]...)
f(x)=length(unique(x))
print(f(c[:,1]-c[:,2])==f(c[:,2]-c[:,3])==f(c[1,:]-c[2,:])==f(c[2,:]-c[3,:])==1 ? "Yes" : "No")