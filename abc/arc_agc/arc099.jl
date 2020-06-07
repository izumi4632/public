if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,k=pM(split(readline()))
  a=pM(split(readline()))
  println(cld(n-k,k-1)+1)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
