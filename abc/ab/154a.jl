macro p(z);:((x->parse(Int,x)).(split($z)));end
s,t=split(readline())
a,b=@p(readline())
chomp(readline())==s ? a-=1 : b-=1
print("$a $b")
