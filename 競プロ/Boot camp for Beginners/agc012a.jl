if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(BigInt,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  a=sort(pM(split(readline())))
  println(sum(a[n+1:2:3n]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
