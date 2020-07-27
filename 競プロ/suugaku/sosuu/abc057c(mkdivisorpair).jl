if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function mkdivisorpair(n::Int)
  divisors=[]
  for i=1:div(n^0.5,1)
    if n%i==0
      push!(divisors,(Int(i),Int(n/i)))
    end
  end
  sort!(divisors)
  return divisors
end
function main()
  d=mkdivisorpair(pI(readline()))
  ans=100000
  for i in d
    ans=min(ans,max(ndigits(i[1]),ndigits(i[2])))
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
