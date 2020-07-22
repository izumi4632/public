function 素因数分解(n)
  n=Int(n)
  res=Tuple[]
  for a=2:isqrt(n)
    if n%a!=0; continue; end
    ex=0
    while n%a==0
      ex+=1
      n/=a
    end
    push!(res,(a,ex))
  end
  if n!=1; push!(res,(Int(n),1)); end
  return res
end
println(素因数分解(408410100000))
