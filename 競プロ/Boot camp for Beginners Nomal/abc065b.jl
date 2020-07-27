if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  n=parse(Int,readline())
  a=[parse(Int,readline()) for i=1:n]
  ans=0
  now=1
  while now != 2
    ans+=1
    pre=now
    now=a[now]
    a[pre]=0
    if a[now]==0
      ans=-1
      break
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end