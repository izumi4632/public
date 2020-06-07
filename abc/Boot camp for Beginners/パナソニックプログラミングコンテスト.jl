if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(BigInt,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  h,w=pM(split(readline()))
  if h==1 || w==1
    println(1)
  else
    println(cld(h*w,2))
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
