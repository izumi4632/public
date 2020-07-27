if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  s=chomp(readline())
  println(all(x->'a'<=x<='z',s) && length(s)==6 && s[3]==s[4] && s[5]==s[6] ? "Yes" : "No")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
