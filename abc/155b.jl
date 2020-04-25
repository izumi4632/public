pi(x)=parse(Int,x)
readline()
l=[1 for i in split(readline()) if pi(i)%2==0 && (pi(i)%3!=0 && pi(i)%5!=0)]
print(length(l)==0 ? "APPROVED" : "DENIED")