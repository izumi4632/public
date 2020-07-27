if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  a=sort!(pM(split(readline())),rev=true)
  println(sum(a[1:2:end])-sum(a[2:2:end]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
