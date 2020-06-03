if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  ans=0
  l=[1]
  if n==1;print(0);return 0;end
  while n!=1
    for i=l[end]+1:n
      if n%i!=0; continue;end
      ans+=1
      push!(l,i)
      n=div(n,i)
      break
    end
  end
  print(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
