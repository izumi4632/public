n,m=[parse(Int,i) for i in split(readline())]
c=0
while n!=0
  n=fld(n,m)
  c+=1
end
print(c)
