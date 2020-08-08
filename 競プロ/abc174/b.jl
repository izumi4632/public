if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
n,d=parse.(Int,split(readline()))
isok(x::Int,y::Int)=x^2+y^2<=d^2
function main()
  ans=0
  for i=1:n
    ans+=Int(isok(parse.(Int,split(readline()))...))
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end