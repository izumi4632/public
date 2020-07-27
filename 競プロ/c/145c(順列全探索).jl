function main()
  n=parse(Int,readline())
  m=vcat([(x->parse(Int,x)).(split(i))' for i in readlines()]...)
  print(sum([sqrt((m[i,1]-m[j,1])^2+(m[i,2]-m[j,2])^2) for i=1:n for j=1:n])/n)
end
main()