if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function kaibun(s)
  flag=true
  for i=1:fld(length(s),2)
    if s[i]!=s[end-i+1]
      flag=false
    end
  end
  return flag
end
function main()
  a,b=pM(split(readline()))
  ans=0
  for i =a:b
    if kaibun(string(i))
      ans+=1
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
