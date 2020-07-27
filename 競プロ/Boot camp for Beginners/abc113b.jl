if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  t,a=pM(split(readline()))
  h=[abs(a-t+i*0.006) for i=pM(split(readline()))]
  ans=1
  for i=1:n
    if h[i]<h[ans]
      ans=i
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
