parseint(x)=parse(Int,x)
n,m=[parse(Int,i) for i in split(readline())]
ans=[0,0,0]
l=Array{Int}(m,2)
for i=1:m
    l[i,:]=parseint.(split(readline()))
end