if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(BigInt,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  a=1
  """nまでのすべての素数において"""
  for p=[i for i=2:n if all(i%j != 0 for j=2:i-1)]
    """n^10>10000(max)なのでfor i=1:10"""
    a*=sum(fld(n,p^i) for i=1:10)+1
  end
  println(a%(10^9+7))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
