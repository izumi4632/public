a,b,c,d=[int(i) for i in input().split()]
c=-(-c//b)
a=-(-a//d)
print("Yes" if c<=a else "No")