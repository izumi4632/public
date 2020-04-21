n,k=[parse(Int,i) for i in split(readline())]
print(min(n%k,-(n%k-k)))