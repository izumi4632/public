if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n,w=pM(split(readline()))
  dp=[Int[0 for i=1:w+1] for j=1:n+1]
  for i=1:n
    wi,vi=pM(split(readline()))
    for j=1:w+1
      if j-wi>0
        dp[i+1][j]=max(dp[i][j],dp[i][j-wi]+vi)
      end
      dp[i+1][j]=max(dp[i+1][j],dp[i][j])
    end
  end
  println(dp[n+1][w+1])
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
