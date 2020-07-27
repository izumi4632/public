if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function 素因数分解(n)
  n=Int(n)
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
  x=pI(readline())
  if x<4
    println(1)
    return 0
  end
  for i=x:-1:1
    k=素因数分解(i)
    if all(x->x==k[1][2],[j[2] for j=k]) && k[1][2]>1
      println(i)
      break
    end
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
