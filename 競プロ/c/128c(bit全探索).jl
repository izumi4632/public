function main()
  myparse(x)=parse(Int,x)
  n,m=myparse.(split(readline()))
  s=[myparse.(split(readline()))[2:end] for i=1:m]
  p=myparse.(split(readline()))
  ans=0
  for i=[[i+1 for i=0:n if b&(1<<i)!=0] for b=0:(1<<n)-1]
    #すべてのsiにつながっているスイッチのオンオフのisoddがｐiと等しい
    ans += all([isodd(count(x->x∈i,s[j]))==p[j] for j=1:m])
  end
  print(ans)
end
main()