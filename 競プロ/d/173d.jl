function main()
  n=parse(Int,readline())
  a=sort(parse.(Int,split(readline())),rev=true)
  ans=0
  for i=1:n-1; ans+=a[1+i÷2]; end
  println(ans)
end
main()
