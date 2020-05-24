from itertools import product as pr
n,m,x=[int(i) for i in input().split()]
l=[[int(i) for i in input().split()]for j in range(n)]
p=list(pr([0,1],repeat=n))
suml=[[sum([l[j][k]*i[j] for j in range(n)])for k in range(m+1)]for i in p]
ans=[i[0] for i in suml if all([i[j] >=x for j in range(1,n+1)])]
if len(ans)==0:
  print(-1)
else:
  print(min(ans))