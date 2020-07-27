n=parse(Int,readline())
s=string(n)
z=0
for i in s; z+=parse(Int,i);end
print(n%z==0 ? "Yes" : "No")