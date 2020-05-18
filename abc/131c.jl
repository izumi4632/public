a,b,c,d=parse.(split(readline()))
f(i::Int)=fld(b,i)-fld(a-1,i)
print(b-a+1-f(c)-f(d)+f(lcm(c,d)))