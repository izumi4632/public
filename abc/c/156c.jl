n=parse(Int,readline())
l=[parse(Int,i) for i in split(readline())]
print(minimum([sum([(j-i)^2 for j in l]) for i=minimum(l):maximum(l)]))
