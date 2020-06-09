if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function mkdivisor(n::Int)
  divisors=Int[]
  for i=1:div(n^0.5,1)
    if n%i==0
      push!(divisors,i)
      if i!= fld(n,i); push!(divisors,fld(n,i));end
    end
  end
  sort!(divisors)
  return divisors
end
function main()
  x=pI(readline())
  l=mkdivisor(x)
  ll=[(i,i-j) for i=1:200 for j=l]
  for k in ll
    i,j=k
    if i^5-j^5==x
      print(i," ",j)
      break
    end
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
