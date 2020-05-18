function main()
  n,m=parse.(split(readline()))
  if n==1
    print(1*Int(m==0))
    return 0
  end
  check=ones(n)
  mod=1000000007
  for i=1:m
    check[parse(Int,readline())]=0
  end
  dp=zeros(n+3)
  f(i::Int)=dp[i]*check[i]
  dp[1]=check[1]*1
  dp[2]=(dp[1]+1)*check[2]
  if n<3
    print(Int(dp[n]))
    return 0
  end
  for i=3:n
    dp[i]=check[i]*(dp[i-1]+dp[i-2])%mod
  end
  print(Int(dp[n]))
end

main()