if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,m,x=pM(split(readline()))
  a=zeros(Int,n)
  for i=pM(split(readline()))
    a[i]=1
  end
  for i=2:n
    a[i]=a[i-1]+a[i]
  end
  println(min(a[n]-a[x],a[x]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
