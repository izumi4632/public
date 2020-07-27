if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=parse(Int,*(split(readline())...))
  println(isqrt(n)==sqrt(n) ? "Yes" : "No")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
