if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
macro p(z);:((x->parse(Int,x)).(split($z)));end
function main()
  n,k=@p(readline())
  p=(x->(1+x)/2).(@p(readline()))
  sp=Float64[]
  sum=0
  for i=p
    sum+=i
    push!(sp,sum)
  end
  print(k==n ? sp[k] : maximum(push!([sp[i+k]-sp[i] for i=1:n-k],sp[k])))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
