if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  s=chomp(readline())
  n=length(s)
  ans=1
  pre=s[1]
  lookat=2
  while lookat<=n
    ans+=1
    if lookat==n-1 && s[end-1]==s[end]
      lookat+=2
    elseif pre==s[lookat]
      pre=s[lookat:lookat+1]
      lookat+=2
    else
      pre=s[lookat]
      lookat+=1
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
