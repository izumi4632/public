if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  a,b,c,x,y=pM(split(readline()))
  min(max(x,y)*2c,min(x,y)*min(a+b,2c)+(max(x,y)==x ? a : b)*(max(x,y)-min(x,y))) |> println
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
