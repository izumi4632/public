if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,a,b=pM(split(readline()))
  print((b-a)%2==0 ? "Alice" : "Borys")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
