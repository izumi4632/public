if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,a,b=pM(split(readline()))
  s=abs(a-b)
  if s%2==0
    println(s÷2)
  else
    println(min(a-1,n-b)+(s-1)÷2+1)
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
