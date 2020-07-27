if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  seen=String[]
  pre=chomp(readline())
  push!(seen,pre)
  flag=true
  for i=1:n-1
    s=chomp(readline())
    if pre[end]!=s[1] || (s in seen)
      flag=false
    end
    pre=s
    push!(seen,s)
  end
  println(flag ? "Yes" : "No")
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
