pi(x)=parse(Int,x)
readline()
l=[1 for i in pi.(split(readline())) if i%2==0&&i%3!=0&&i%5!=0]
print(length(l)==0 ? "APPROVED" : "DENIED")