s=input()
sl=s.split()
l=[int(i) for i in sl]
ml=map(lambda x: x%2==0,l)
flag=all(ml)
print(["No","Yes"][flag])