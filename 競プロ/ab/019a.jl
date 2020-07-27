if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  q,h,s,d=pM(split(readline()))
  n=pI(readline())
  one=min(4q,2h,s)
  println(fld(n,2)*min(2one,d)+n%2*one)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
