function f(n::Int,i::Int,ans::Int)
    a=string(i)
    return parse(Int,a[n])==ans
end
function main()
    n,m=parse.(split(readline()))
    a=[parse.(split(readline())) for i=1:m]
    for i=10^(n-1)-(n==1):10^n-1
        flag=true
        for j in a
            flag = flag==true ? f(j[1],i,j[2]) : flag
        end
        if Bool(flag)
            print(i)
            return 0
        end
    end
    print(-1)
end
main()