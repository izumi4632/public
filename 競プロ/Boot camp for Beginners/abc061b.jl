if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,m=pM(split(readline()))
  l=[0 for i=1:n]
  for i=1:m
    a,b=pM(split(readline()))
    l[a]+=1
    l[b]+=1
  end
  for i=1:n
    println(l[i])
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
