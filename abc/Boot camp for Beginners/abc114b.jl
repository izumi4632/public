if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  s=chomp(readline())
  println(minimum([abs(753-pI(s[i-2:i])) for i=3:length(s)]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
