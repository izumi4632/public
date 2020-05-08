a,b=parse.(split(readline()))
print(b-a>2018 ? 0 : minimum(i*j%2019 for i=a:b,j=a:b if i<j))