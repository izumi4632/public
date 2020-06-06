if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  ans::BigInt=1
  n=pI(readline())
  l=pM(split(readline()))
  if 0 in l
    print(0)
    return 0
  end
  for i in l
    ans*=i
    if ans>10^18
      print(-1)
      return 0
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
