if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  x,y=pM(split(readline()))
  i=0
  ans=0
  while x*2^i<=y
    i+=1
  end
  print(i)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
