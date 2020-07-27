if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  t=pM(split(readline()))
  m=pI(readline())
  T=sum(t)
  for i=1:m
    p,x=pM(split(readline()))
    println(T-(t[p]-x))
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
