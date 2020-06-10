if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  l=chomp(readline())
  a,b,c,d=[pI(i) for i=l]
  if a+b+c+d==7
    println(a,"+",b,"+",c,"+",d,"=7")
  elseif a+b+c-d==7
    println(a,"+",b,"+",c,"-",d,"=7")
  elseif a+b-c+d==7
    println(a,"+",b,"-",c,"+",d,"=7")
  elseif a+b-c-d==7
    println(a,"+",b,"-",c,"-",d,"=7")
  elseif a-b+c+d==7
    println(a,"-",b,"+",c,"+",d,"=7")
  elseif a-b+c-d==7
    println(a,"-",b,"+",c,"-",d,"=7")
  elseif a-b-c+d==7
    println(a,"-",b,"-",c,"+",d,"=7")
  elseif a-b-c-d==7
    println(a,"-",b,"-",c,"-",d,"=7")
  end
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
