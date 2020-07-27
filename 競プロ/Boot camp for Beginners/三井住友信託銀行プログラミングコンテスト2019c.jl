if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  x=pI(readline())
  if x>=2000
    println(1)
  elseif x%100<=fld(x,100)*5
    println(1)
  else
    println(0)
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
