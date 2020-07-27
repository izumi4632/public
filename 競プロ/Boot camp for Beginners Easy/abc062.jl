if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  h,w=pM(split(readline()))
  println("#"^(w+2))
  for i=1:h
    println("#"*chomp(readline())*"#")
  end
  println("#"^(w+2))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
