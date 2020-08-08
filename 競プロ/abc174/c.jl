if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
k=parse(Int,readline())
function main()
  ans=1
  now=mod(7,k)
  while now!=0
    ans+=1
    now=mod(7+now*10,k)
    if ans>10^6;ans=-1; break; end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end