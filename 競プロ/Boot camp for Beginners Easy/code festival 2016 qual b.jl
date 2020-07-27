if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,a,b=pM(split(readline()))
  s=chomp(readline())
  tuuka=0
  kaigai=0
  for i in s
    if i=='a' && tuuka<a+b
      println("Yes")
      tuuka+=1
    elseif i=='b' && tuuka<a+b && kaigai<b
      println("Yes")
      tuuka+=1
      kaigai+=1
    else
      println("No")
    end
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
