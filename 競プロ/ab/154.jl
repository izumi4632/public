readline()
i=(x->parse(Int,x)).(split(readline()))
print(length(i)==length(unique(i)) ? "YES" : "NO")