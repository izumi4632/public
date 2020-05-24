from itertools import *
n=int(input())
a=tuple(int(i) for i in input().split())
b=tuple(int(i) for i in input().split())
p=list(permutations(range(1,n+1),n))
print(abs(p.index(a)-p.index(b)))