if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(BigInt,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a,b,c,k=pM(split(readline()))
  if abs(a-b)>10^18
    println("Unfair")
  elseif k%2==0
    println(a-b)
  else
    println(b-a)
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
