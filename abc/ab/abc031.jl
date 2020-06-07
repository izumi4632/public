if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a,d=pM(split(readline()))
  println(max(a,d)*min(a,d)+max(a,d))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
