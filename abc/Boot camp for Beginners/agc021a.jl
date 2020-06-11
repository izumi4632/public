if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=chomp(readline())
  l=length(n)-1
  println(n==string(n[1])*"9"^l ? 9*l+pI(n[1]) : pI(n[1])+9*l-1)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
