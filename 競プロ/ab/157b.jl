parseint(x)=parse(Int,x)
l=Array{Int}(3,3)
for i in 1:3
    l[i,:]=parseint.(split(readline()))
end
n=parseint(readline())
for i in 1:n
    l[l.==parseint(readline())]=0
end
for i=1:3
    if l[i,:]==[0,0,0] || l[:,i] == [0,0,0]
        print("Yes")
        exit()
    end
end
if l[1,1]==l[2,2]==l[3,3]==0 || l[1,3]==l[2,2]==l[3,1]==0
    print("Yes")
    exit()
end
print("No")