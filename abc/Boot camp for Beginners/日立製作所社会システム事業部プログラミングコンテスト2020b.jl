if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  A,B,m=pM(split(readline()))
  a=pM(split(readline()))
  b=pM(split(readline()))
  ans=Int[minimum(a)+minimum(b)]
  for i=1:m
    x,y,c=pM(split(readline()))
    push!(ans,a[x]+b[y]-c)
  end
  println(minimum(ans))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
