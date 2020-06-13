if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a,b,k=pM(split(readline()))
  ans=Int[]
  for i=0:k-1
    if a+i<=b
      push!(ans,a+i)
    end
    if b-i>=a
      push!(ans,b-i)
    end
  end
  ans=unique(ans)
  sort!(ans)
  foreach(println,ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
