if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,l=pM(split(readline()))
  s=sort([chomp(readline()) for i=1:n])
  println(*(s...))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
