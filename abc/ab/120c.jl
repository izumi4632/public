if isfile("in.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
function main()
  s=chomp(readline())
  c0=0
  c1=0
  for i=s;i=='0' ? c0+=1 : c1+=1;end
  print(min(c0,c1)*2)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
