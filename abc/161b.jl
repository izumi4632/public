n,m=[parse(Int,i) for i in split(readline())]
a=[parse(Int,i) for i in split(readline())]
print(count(i->(i>=sum(a)/4/m),a)>=m?"Yes":"No")