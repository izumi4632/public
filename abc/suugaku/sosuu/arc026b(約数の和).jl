if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(BigInt,x)
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
  n=pI(readline())
  if n==1;println("Deficient");return 0;end
  ans=fld(prod(sum(i[1]^j for j=0:i[2]) for i=素因数分解(n)),2)
  println(ans==n ? "Perfect" : ans>n ? "Abundant" : "Deficient")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
