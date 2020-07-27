if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function 素因数分解(n)
  res=Tuple[]
  for a=2:isqrt(n)
    if n%a!=0; continue; end
    ex=0
    while n%a==0
      ex+=1
      n/=a
    end
    push!(res,(a,ex))
  end
  if n!=1; push!(res,(Int(n),1)); end
  return res
end
function main()
  ans=0
  for i=素因数分解(pI(readline()))
    now=i[2]
    j=1
    while j<=now
      ans+=1
      now-=j
      j+=1
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
