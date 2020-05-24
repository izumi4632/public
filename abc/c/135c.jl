macro p(z);:((x->parse(Int,x)).(split($z)));end
n=parse(Int,readline())
a=@p(readline())
b=@p(readline())
ans=0
for i=1:n
  if a[i]>=b[i];ans+=b[i]
  elseif b[i]>=a[i]+a[i+1]; ans+=a[i]+a[i+1];a[i+1]=0
  else a[i+1]-=b[i]-a[i]; ans+=b[i];end
end
print(ans)
