from collections import *
_,*a=map(lambda x:x.rstrip(), open(0))
a=Counter(a).most_common()
a=sorted([i[0] for i in a if i[1]==a[0][1]])
print(*a,sep="\n")