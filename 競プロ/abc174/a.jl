if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  x=parse(Int,readline())
  println(x>29 ? "Yes" : "No")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end