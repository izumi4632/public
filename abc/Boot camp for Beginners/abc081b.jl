if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function howdiv2(n::Int)
  ans=0
  while n%2==0
    ans+=1
    n/=2
  end
  return ans
end
function main()
  n=pI(readline())
  a=[howdiv2(i) for i=pM(split(readline()))]
  println(minimum(a))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
