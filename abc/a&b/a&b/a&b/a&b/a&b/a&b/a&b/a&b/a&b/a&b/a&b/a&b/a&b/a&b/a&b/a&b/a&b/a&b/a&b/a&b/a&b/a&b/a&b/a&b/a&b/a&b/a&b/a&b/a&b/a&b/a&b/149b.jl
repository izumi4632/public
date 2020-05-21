a,b,k=[parse(Int128,i) for i in split(readline())]
a<k ? (b=max(0,a+b-k);a=0) : a-=k
print(a," ",b)