if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a,b=pM(split(readline()))
  s=chomp(readline())
  suu=['0','1','2','3','4','5','6','7','8','9']
  flag=true
  for i=1:a
    if !(s[i] in suu)
      flag=false
    end
  end
  if s[a+1] != '-'
    flag=false
  end
  for i=a+2:a+b+1
    if !(s[i] in suu)
      flag=false
    end
  end
  println(flag ? "Yes" : "No")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
