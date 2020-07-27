if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  abc=sort(pM(split(readline())))
  println(abc[3]%2==0 ? 0 : abc[1]*abc[2])
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
