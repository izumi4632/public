if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(BigInt,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  l=pM(split(readline()))
  ans::BigInt=1
  for i=1:n;ans*=l[i];end
  ans=ans>10^18 ? -1 : ans
  print(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
