if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,m,x=pM(split(readline()))
  a=pM(split(readline()))
  ruiseki=zeros(m)
  ruiseki[1]=a[1]
  for i in 2:m
    ruiseki[i]=ruiseki[i-1]+a[i]
  end
  println(min(ruiseki[m]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
