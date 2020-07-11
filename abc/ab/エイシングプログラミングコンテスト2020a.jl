if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  l,r,d=parse.(Int,split(readline()))
  ans=0
  for i=l:r
    if i%d==0; ans+=1;end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
