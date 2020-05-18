n=parse(Int,readline())
s=[sort!(collect(chomp(readline()))) for i=1:n]
for i=unique(s[1])
  for k=1:minimum([count(x->x==i,j) for j=s])
  	print(i)
  end
end