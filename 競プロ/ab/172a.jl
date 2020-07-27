if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  a=parse(Int,readline())
  println(a+a^2+a^3)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
