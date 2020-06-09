if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  s=chomp(readline())
  for c='a':'z'
    if !(c in s)
      println(c)
      return 0
    end
  end
  println("None")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
