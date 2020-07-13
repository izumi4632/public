function main()
  n=parse(Int,readline())
  ans=""
  while n!=0
    n-=1
    n,r=divrem(n,26)
    ans*='a'+r
  end
  println(ans[end:-1:1])
end
main()
