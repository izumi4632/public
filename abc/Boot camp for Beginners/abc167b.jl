a,b,c,k=parse.(Int,split(readline()))
print(k<=a ? k : k<=a+b ? a : 2a+b-k)