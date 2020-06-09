if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  x1,y1,x2,y2=pM(split(readline()))
  dx=x2-x1
  dy=y2-y1
  println(x2-dy," ",y2+dx," ",x1-dy," ",y1+dx)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
