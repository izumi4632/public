if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(BigInt,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a,b=pM(split(readline()))
  if (a>0) != (b>0) || a==0 || b==0
    println("Zero")
  elseif a<0 && abs(a-b)%2==0
    println("Negative")
  else
    println("Positive")
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
