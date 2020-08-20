if isfile("mystdin.txt");mystdin=open("mystdin.txt","r");redirect_stdin(mystdin);end
macro max!(a,b); esc(:($a=max($a,$b))); end
function main()
  V=zeros(Int,3010,3010)
  dp=zeros(Int,3010,3010,4)
  R,C,K=parse.(Int,split(readline()))
  for i=1:K
    r,c,v=parse.(Int,split(readline()))
    V[r,c]=v
  end
  for i=1:R
    for j=1:C
      for k=1:4
        #sita
        @max!(dp[i+1,j+1,1],dp[i,j+1,k])
        @max!(dp[i+1,j+1,2],dp[i,j+1,k]+V[i,j])
        #migi
        @max!(dp[i+1,j+1,k],dp[i+1,j,k])
        @max!(dp[i+1,j+1,k],k>1 ? dp[i+1,j,k-1]+V[i,j] : 0)
      end
    end
  end
  println(maximum(dp[R+1,C+1,:]))
end
main()
if isdefined(Base, :mystdin);close(mystdin);end