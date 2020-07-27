if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
pI(x)=parse(Int,x)
pM(x::Array{SubString{String},1})=map(pI,x)
function main()
  n=pI(readline())
  h=pM(split(readline()))
  dp=[0 for i=1:n]
  dp[2]=abs(h[1]-h[2])
  for i=3:n
    """これは集めるｄｐ"""
    dp[i]=min(dp[i-1]+abs(h[i]-h[i-1]),dp[i-2]+abs(h[i]-h[i-2]))
  end
  println(dp[end])
end
main()
if isdefined(Base, :mystdin);close(mystdin);end
