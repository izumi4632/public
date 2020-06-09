if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,x=pM(split(readline()))
  a=sort(pM(split(readline())))
  ans=0
  while x>0 && length(a)!=1
    v=splice!(a,1)
    if x>=v; ans+=1; end
    x-=v
  end
  if a[1]==x; ans+=1; end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
