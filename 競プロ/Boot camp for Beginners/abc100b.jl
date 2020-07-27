if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  d,n=pM(split(readline()))
  println(100^d*(n+Int(n==100)))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
