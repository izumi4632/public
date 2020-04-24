a,b=[parse(Int,i) for i in split(readline())]
k = [Int(i) for i=cld(12.5a,1):cld(12.5b,1) if a==fld(0.08i,1) && b==fld(0.1i,1)]
print(length(k)==0 ? -1 : k[1])