if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  """n<=x*108<n+1"""
  """n/108<=x<(n+1)/108"""
  x=cld(n,1.08)
  c=cld(n+1,1.08)
  if x==c
    println(":(")
  else
    println(Int(x))
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
