n=int(input())
s=[input() for i in range(n)]
s0=sorted(set(s[0]))
for i in s0:
  for k in range(min([j.count(i) for j in s])):
    print(i,end="")