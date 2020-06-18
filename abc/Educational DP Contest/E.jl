if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,w=pM(split(readline()))
  dp=[Int[10^20 for i=1:10^6] for j=1:n+1]
  dp[1][1]=0
  for i=1:n
    wi,vi=pM(split(readline()))
    for j=1:10^6
      if j-vi>0
        dp[i+1][j]=min(dp[i+1][j],dp[i][j-vi]+wi)
      end
      dp[i+1][j]=min(dp[i+1][j],dp[i][j])
    end
  end
  ans=0
  for i=1:10^6
    if dp[n+1][i]<=w
      ans=i-1
    end
  end
  println(ans)
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
