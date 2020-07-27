if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  h,w=pM(split(readline()))
  c=[chomp(readline()) for i=1:h]
  for i in c
    println(i)
    println(i)
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
