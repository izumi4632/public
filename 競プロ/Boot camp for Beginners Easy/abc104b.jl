if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  s=chomp(readline())
  flag=(s[1]=='A') && (count(x->x=='C',s[3:end-1])==1) && (count(x->x in 'a':'z',s)==length(s)-2)
  println(flag ? "AC" : "WA")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
