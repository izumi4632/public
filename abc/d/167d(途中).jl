if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function move(now::Int,a::Array,count::Int)
  now=a[now]
  count+=1
  seen[now]=1
end
function main()
  n,k=pM(split(readline))
  a=pM(split(readline))
  now=1
  seen=
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
