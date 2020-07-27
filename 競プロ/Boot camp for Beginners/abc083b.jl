if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function kakuketanowa(n::Int)
  s=string(n)
  S=0
  for i=s
    S+=parse(Int,i)
  end
  return S
end
function main()
  n,a,b=pM(split(readline()))
  ans=0
  for i=1:n
    if a<=kakuketanowa(i)<=b
      ans+=i
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
