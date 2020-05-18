n,m=parse.(split(readline()))
a=[parse(Int,readline()) for i=1:m]
l=fill(0,n)
for i=1:n
  if i∈a
    l[i]=0
  elseif i==1
    l[i]=1
  elseif i==2
    l[i]=1+l[1]
  else
    l[i]=l[i-1]+l[i-2]
  end
end
print(l[n]%1000000007)