if isfile("in.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
macro p(z);:((x->parse(Int,x)).(split($z)));end
function main()
  a,b=@p(readline())
  print(b%a==0 ? a+b : b-a)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
