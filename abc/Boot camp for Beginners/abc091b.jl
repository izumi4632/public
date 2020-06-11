if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  s=[chomp(readline()) for i=1:n]
  m=pI(readline())
  t=[chomp(readline()) for i=1:m]
  u=unique(s)
  ans=0
  for i=u
    ans=max(ans,count(x->x==i,s)-count(x->x==i,t))
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
