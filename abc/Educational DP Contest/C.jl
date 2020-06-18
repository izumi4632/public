if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  dp=Array[[0,0,0] for i=1:n]
  dp[1]=pM(split(readline()))
  for i=2:n
    a,b,c=pM(split(readline()))
    dp[i][1]=max(dp[i-1][2],dp[i-1][3])+a
    dp[i][2]=max(dp[i-1][1],dp[i-1][3])+b
    dp[i][3]=max(dp[i-1][1],dp[i-1][2])+c
  end
  println(maximum(dp[n]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
