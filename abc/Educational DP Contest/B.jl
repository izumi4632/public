if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,k=pM(split(readline()))
  h=pM(split(readline()))
  dp=Int[100000000000 for i=1:n+k]
  dp[1]=0
  for i=1:n-1
    for j=1:k
      if i+j<=n
        dp[i+j]=min(dp[i+j],dp[i]+abs(h[i+j]-h[i]))
      end
    end
  end
  println(dp[n])
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
