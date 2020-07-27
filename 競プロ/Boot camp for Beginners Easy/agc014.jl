if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a,b,c=pM(split(readline()))
  count=0
  while a!=b!=c
    if isodd(a) || isodd(b) || isodd(c)
      break
    end
    count+=1
    a2=div(a,2)
    b2=div(b,2)
    c2=div(c,2)
    a=b2+c2
    b=a2+c2
    c=a2+b2
  end
  if isodd(a) || isodd(b) || isodd(c)
    print(count)
  else
    print(-1)
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
