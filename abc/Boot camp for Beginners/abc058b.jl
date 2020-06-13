if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  o=chomp(readline())
  e=chomp(readline())
  for i=1:length(e)
    print(o[i])
    print(e[i])
  end
  if length(o)!=length(e)
    println(o[end])
  else
    println()
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
