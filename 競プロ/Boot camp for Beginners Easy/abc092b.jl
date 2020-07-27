if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  d,x=pM(split(readline()))
  for i=1:n
    a=pI(readline())
    x+=1+fld((d-1),a)
  end
  println(x)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
