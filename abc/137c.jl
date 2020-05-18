function main()
  d=Dict()
  ans=0
  for i in chomp.(readlines())
    i=sort!(collect(i))
    _=get(d,i,0)
    ans+=_
    d[i]=_+1
  end
  print(ans)
end
main()