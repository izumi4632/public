if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
f(x::Int)= x%2==0 ? div(x,2) : 3x+1
function main()
  s=pI(readline())
  seen=Int[s]
  c=1
  while true
    c+=1
    e=f(seen[end])
    if e in seen
      break
    end
    push!(seen,e)
  end
  print(c)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
