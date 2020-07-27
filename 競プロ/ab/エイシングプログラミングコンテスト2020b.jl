if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  n=parse(Int,readline())
  a=parse.(Int,split(readline()))
  ans=0
  for i=1:2:n
    ans+=isodd(a[i])
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
