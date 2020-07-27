if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  a1=pM(split(readline()))
  a2=pM(split(readline()))
  println(maximum([sum(a1[1:i])+sum(a2[i:end]) for i=1:n]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
