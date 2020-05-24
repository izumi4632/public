if isfile("in.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
macro p(z);:((x->parse(Int,x)).(split($z)));end
function pul(l,x)
  for i=x; l[x]+=1; end
end
function main()
  n,m=@p(readline())
  l=fill(0,m)
  for i=1:n
    for j=@p(readline())[2:end]; pul(l,j); end
  end
  print(count(x->x==n,l))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
