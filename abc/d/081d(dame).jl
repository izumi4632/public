if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  n=parse(Int,readline())
  s1=chomp(readline())
  s2=chomp(readline())
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
