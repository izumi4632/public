if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a,b,c,k=parse.(Int,split(readline()))
  ans=iseven(k) ? a-b : b-a
  println(ans)
  # println(ans>10^18 ? "Unfair" : ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
