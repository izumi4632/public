if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  a=pM(split(readline()))
  ans=0
  for i=1:n
    if a[a[i]]==i
      ans+=1
    end
  end
  println(ans÷2)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
