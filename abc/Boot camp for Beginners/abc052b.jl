if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  s=chomp(readline())
  x=0
  m=0
  for i in s
    if i=='I'
      x+=1
    else
      x-=1
    end
    m=max(m,x)
  end
  println(m)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
