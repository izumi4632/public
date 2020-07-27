if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  w=chomp(readline())
  flag=true
  for i='a':'z'
    if count(x->x==i,w)%2!=0; flag=false; end
  end
  println(flag ? "Yes" : "No")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
