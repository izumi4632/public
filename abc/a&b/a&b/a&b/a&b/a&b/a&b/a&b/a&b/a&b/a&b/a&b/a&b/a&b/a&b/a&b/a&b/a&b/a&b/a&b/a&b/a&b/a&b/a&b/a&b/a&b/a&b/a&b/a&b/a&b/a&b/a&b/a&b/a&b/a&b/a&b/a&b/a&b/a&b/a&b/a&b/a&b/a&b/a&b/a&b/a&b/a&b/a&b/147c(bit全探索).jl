function main()
  n=parse(Int,readline())
  m=fill(-1,n,n)
  for i=1:n
    for j=1:parse(Int,readline())
      a,b=parse.(split(readline()))
      m[i,a]=b
    end
  end
  ans=0
  for i=[[i+1 for i=0:n if b&(1<<i)!=0] for b=0:(1<<n)-1]
    flag=true
    for j=i
      for k=1:n
        if m[j,k] == -1
          continue
        elseif m[j,k] != (k∈i)
          flag=false
        end
      end
    end
    flag ? ans=max(ans,length(i)) : 0
  end
  print(ans)
end
main()