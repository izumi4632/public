parseInt(x) = parse(Int, x)
parseMap(x::Array{SubString{String},1}) = map(parseInt, x)
function main()
  n,m=parseMap(split(readline()))
  l=[parseMap(split(readline())) for i=1:n]
  sort!(l,by=x->x[1])
  have=0
  money=0
  for i in l
    if have+i[2]<m
      have+=i[2]
      money+=i[2]*i[1]
    elseif have==m
      break
    else
      money+=(m-have)*i[1]
      break
    end
  end
  print(money)
end
main()