n,a,b=[parse(Int,i) for i in split(readline())]
print(a*fld(n,a+b)+min(n%(a+b),a))