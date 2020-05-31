if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  l=pM(split(readline()))
  ans=0
  for i in l
    while i%2==0;ans+=1;i/=2;end
  end
  print(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
