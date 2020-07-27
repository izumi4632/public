if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  ans=0
  n=pI(readline())
  k=pI(readline())
  x=pM(split(readline()))
  for i in x
    ans+=min(abs(i-0),abs(i-k))
  end
  println(ans*2)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
