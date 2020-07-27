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

macro p(z);:((x->parse(Int,x)).(split($z)));end
a,b,k=@p(readline())
print([i for i=mkdivisor(a) if i in mkdivisor(b)][end-k+1])
