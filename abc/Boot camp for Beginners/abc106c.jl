if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  s=chomp(readline())
  k=pI(readline())
  if length(s)<k
    for i=s
      if i!='1'
        println(i)
        break
      end
    end
  elseif s[1:k]!="1"^k
    for i=s
      if i!='1'
        println(i)
        break
      end
    end
  else
    println(1)
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
