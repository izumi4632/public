if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function max!(a,b)
  return a
end
function main()
  i=2
  v=[1 2 3 4]
  max!(i,v)
  println(i)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end