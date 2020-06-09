if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(BigInt,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a=pI(readline())
  b=pI(readline())
  if a>b
    println("GREATER")
  elseif a<b
    println("LESS")
  else
    println("EQUAL")
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
