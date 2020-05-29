if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  a=pM(split(readline()))
  l=fill(0,n); for i=a; l[i]+=1; end
  ans=0; for i=l; ans+=binomial(i,2) end
  for i=a;
    println(ans-l[i]+1)
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
