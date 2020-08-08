if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  n=parse(Int,readline())
  c=chomp(readline())
  allr=count(isequal('R'),c)
  leftw=count(isequal('W'),c[1:allr])
  println(leftw)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end