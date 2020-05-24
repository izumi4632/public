macro p(z);:((x->parse(BigInt,x)).(split($z)));end
n,m=@p(readline())
print((n==m ? ans=2*factorial(n)^2 : abs(n-m)==1 ? ans=factorial(min(n,m))^2*max(n,m) : 0)%1000000007)
