n,k=(x->parse(BigFloat,x)).(split(readline()))
x=BigFloat(0)
for i=1:n
  _=1/n
  now=i
  while now<k;now*=2;_/=2;end
  x+=_
end
print(x)