k=parse(Int,readline())
s=chomp(readline())
print(length(s)>=k ? s : s[1:k],"...")